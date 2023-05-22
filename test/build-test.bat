SetLocal EnableDelayedExpansion

SET cFileNames=
FOR /R %%f in (*.c) do (
    SET cFileNames=!cFileNames! %%f
)

SET assembly=test
SET cFlags=-g 
SET include=-I../engine/src
SET linker=-lengine -L ../bin

gcc %cFlags% %cFileNames% %include% %linker% -o ../bin/%assembly%

START ../bin/%assembly%.exe