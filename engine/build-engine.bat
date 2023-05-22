SetLocal EnableDelayedExpansion

SET cFileNames=
FOR /R %%f in (*.c) do (
    SET cFileNames=!cFileNames! %%f
)

SET assembly=engine
SET cFlags=-g -shared
SET include=-Isrc
SET linker=

gcc %cFlags% %cFileNames% %include% %linker% -o../bin/%assembly%.dll