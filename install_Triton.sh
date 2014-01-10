if [ "$#" -ne 1 ]; then
    echo "Usage:
./install_Triton Pharo.image" 1>&2
	exit 1
fi

rm -rf pharo-vm

curl -o script.st -L https://raw.github.com/BenjaminVanRyseghem/Triton/master/installScript.st
curl -o spec.zip -L https://github.com/SpecForPharo/spec/archive/master.zip
curl -o triton.zip -L https://github.com/BenjaminVanRyseghem/Triton/archive/master.zip
unzip -u spec.zip
unzip -u triton.zip

curl get.pharo.org/vm | bash

IMAGE=$PWD/$1
SCRIPT=`cat script.st`

./pharo "$IMAGE" eval --save "$SCRIPT"