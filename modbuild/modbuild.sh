#!/bin/bash

set -e

cd ..
CMDOUT=`make BUILD_STANDALONE=0 BUILD_CLIENT=0 BUILD_SERVER=0 BUILD_GAME_SO=0 BUILD_GAME_QVM=1 BUILD_BASEGAME=1 BUILD_MISSIONPACK=1 BUILD_RENDERER_OPENGL2=0 release 2>&1 | tee /dev/tty`

if [[ $CMDOUT =~ Error\ [0-9]+$ ]]; then
  exit 1
fi

if [[ $CMDOUT =~ Building\ in\ ([^:]*): ]]; then
  BUILD_DIR=${BASH_REMATCH[1]}
  echo
  echo "Picking up qvm files under $BUILD_DIR..."
else
  echo
  echo "couldn't find build directory in make output"
  exit 1
fi

pushd $BUILD_DIR/baseq3
zip pak0.zip vm/cgame.qvm vm/qagame.qvm
popd
mv -f $BUILD_DIR/baseq3/pak0.zip modbuild/surveyor/pak0.pk3
cd modbuild
zip -r surveyor.zip surveyor
cd ..

pushd $BUILD_DIR/missionpack
zip pak0.zip vm/cgame.qvm vm/qagame.qvm
popd
mv -f $BUILD_DIR/missionpack/pak0.zip modbuild/surveyor_ta/pak0.pk3
cd modbuild
zip -r surveyor_ta.zip surveyor_ta
cd ..
