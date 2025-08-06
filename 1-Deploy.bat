@echo off

conda env create -f environment.yml --prefix ./env
conda activate ./env

mkdir "build"

cd "build"

cmake .. %*
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%

cd ..