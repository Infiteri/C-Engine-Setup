@ECHO OFF

CLS

PUSHD engine
ECHO Building Engine
CALL build-engine.bat
POPD

PUSHD test
ECHO Building Test
CALL build-test.bat
POPD

