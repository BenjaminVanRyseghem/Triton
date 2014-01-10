"
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


repo := MCFileTreeRepository new directory: '.' asFileReference.

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