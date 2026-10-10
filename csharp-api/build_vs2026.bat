@echo off
setlocal

pushd "%~dp0"

if not exist build64_vs2026 mkdir build64_vs2026

cmake -S . -B build64_vs2026 -G "Visual Studio 18 2026" -A x64
if errorlevel 1 exit /b %errorlevel%

cmake --build build64_vs2026 --config Release --target ALL_BUILD
if errorlevel 1 exit /b %errorlevel%

popd
endlocal
