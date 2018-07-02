#!/bin/sh

set -e

cd ..
make BUILD_STANDALONE=0 BUILD_CLIENT=0 BUILD_SERVER=0 BUILD_GAME_SO=0 BUILD_GAME_QVM=1 BUILD_BASEGAME=1 BUILD_MISSIONPACK=1 BUILD_RENDERER_OPENGL2=0

pushd build/release-darwin-x86_64/baseq3
zip pak0.zip vm/cgame.qvm vm/qagame.qvm
popd
pushd modbuild
mv -f ../build/release-darwin-x86_64/baseq3/pak0.zip surveyor/pak0.pk3
zip -r surveyor.zip surveyor
popd

pushd build/release-darwin-x86_64/missionpack
zip pak0.zip vm/cgame.qvm vm/qagame.qvm
popd
pushd modbuild
mv -f ../build/release-darwin-x86_64/missionpack/pak0.zip surveyor_ta/pak0.pk3
zip -r surveyor_ta.zip surveyor_ta
popd
