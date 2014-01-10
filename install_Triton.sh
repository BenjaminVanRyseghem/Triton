if [ "$#" -ne 1 ]; then
    echo "Usage:
./install_Triton Pharo.image" 1>&2
	exit 1
fi

rm -rf pharo-vm

curl -o spec.zip -L https://github.com/SpecForPharo/spec/archive/master.zip
curl -o triton.zip -L https://github.com/BenjaminVanRyseghem/Triton/archive/master.zip
unzip -u spec.zip
unzip -u triton.zip

IMAGE=$PWD/$1

curl get.pharo.org/vm | bash

./pharo "$IMAGE" eval --save "
| repo names currentVersions toLoad |

[ [ Gofer it
	smalltalkhubUser: 'ObjectProfile' project: 'Roassal2';
	package: 'Roassal2';
	package: 'Trachel';
	package: 'Roassal2Spec';
	load ]
	on: MCMergeOrLoadWarning
	do: [ :ex | ex merge ] ] 
	on: MCNoChangesException 
	do: [] .

repo := MCFileTreeRepository new directory: '$PWD/spec-master' asFileReference.

currentVersions := MCWorkingCopy allManagers select: [ :e | (e package name beginsWith: 'SLICE') not ] thenCollect: [ :e | e ancestry ancestors first name ].
names := repo packageDescriptionsFromReadableFileNames.
toLoad := names select: [ :e || currentVersion | 
	currentVersion := e first , '-', e second , '.', e third asString.
	(currentVersions includes: currentVersion) not ].

toLoad do: [ :name || version |
	version := repo versionFromFileNamed: name first, '.package'.
	FileStream stdout << name first << '-'<< name second << '.'<< name third asString; crlf.
	[ version load ]
		on: MCMergeOrLoadWarning
		do: [ :ex | ex load ] ].

repo := MCFileTreeRepository new directory: '$PWD/Triton-master' asFileReference.

currentVersions := MCWorkingCopy allManagers select: [ :e | (e package name beginsWith: 'SLICE' ) not ] thenCollect: [ :e | e ancestry ancestors first name ].
names := repo packageDescriptionsFromReadableFileNames.
toLoad := names select: [ :e || currentVersion | 
	currentVersion := e first , '-', e second , '.', e third asString.
	(currentVersions includes: currentVersion) not ].

toLoad do: [ :name || version |
	version := repo versionFromFileNamed: name first, '.package'.
	FileStream stdout << name first << '-'<< name second << '.'<< name third asString; crlf.
	[ version load ]
		on: MCMergeOrLoadWarning
		do: [ :ex | [ ex load  ] on: MCNoChangesException do: [] ] ].

"
