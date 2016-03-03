@echo off
setlocal
set PkgDir=%~dp0
set PATH=%PATH%;%PkgDir%
set PackParams=-Build -IncludeReferencedProjects -Symbols -Properties Configuration=Release -MinClientVersion 3.1 -OutputDirectory System.Waf\Release

cd %PkgDir%
if not exist "System.Waf\Release" mkdir System.Waf\Release

nuget pack ..\src\System.Waf\System.Waf\System.Waf.Core\System.Waf.Core.csproj %PackParams% 
nuget pack ..\src\System.Waf\System.Waf\System.Waf.Wpf\System.Waf.Wpf.csproj %PackParams%
nuget pack ..\src\System.Waf\System.Waf\System.Waf.UnitTesting.Core\System.Waf.UnitTesting.Core.csproj %PackParams%
nuget pack ..\src\System.Waf\System.Waf\System.Waf.UnitTesting.Wpf\System.Waf.UnitTesting.Wpf.csproj %PackParams%