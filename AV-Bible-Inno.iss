; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AV-Bible"
#define MyAppVersion "9.25.1.19"
#define MyAppPublisher "Digital-AV.org"
#define MyAppURL "https://github.com/kwonus/AVBible"
#define MyRawExeName "AVBible.exe"
#define MyAppExeName "AV-Bible.exe"
#define MyMgrExeName "AV-Data-Manager.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{426CF911-39B3-4B06-AD22-9EEB7BE28AA2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableDirPage=yes
; "ArchitecturesAllowed=x64compatible" specifies that Setup cannot run
; on anything but x64 and Windows 11 on Arm.
ArchitecturesAllowed=x64compatible
; "ArchitecturesInstallIn64BitMode=x64compatible" requests that the
; install be done in "64-bit mode" on x64 or Windows 11 on Arm,
; meaning it should use the native 64-bit Program Files directory and
; the 64-bit view of the registry.
ArchitecturesInstallIn64BitMode=x64compatible
DisableProgramGroupPage=yes
LicenseFile=C:\src\AVBible\LICENSE.md
; Uncomment the following line to run in non administrative install mode (install for current user only.)
PrivilegesRequired=lowest
OutputBaseFilename=AV-Bible-2025-Setup
SetupIconFile=C:\src\AVBible\gutenburg-press-256.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
OutputDir=inno

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Components]
Name: "avapp"; Description: "Install AV-Bible for Windows 11"; Types: full compact custom; Flags: fixed
Name: "addin"; Description: "Install AV-Bible Addin for Microsoft Word (Requires Microsoft Office)"; Types: custom

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; Components: avapp

[Files]
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\{#MyRawExeName}"; DestDir: "{app}"; DestName: {#MyAppExeName}; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\gutenburg-press-256.ico"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\AVBible.deps.json"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\AVBible.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\AVBible.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\AVBible.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\AV-Engine.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\AV-Search.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\AVXLib.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\Blacklight.Controls.Wpf.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\Blueprint-Blue-Lib.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\Microsoft.Windows.SDK.NET.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\PhonemeEmbeddings.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\pinshot_blue.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\bin\x64\Release\net8.0-windows10.0.17763.0\YamlDotNet.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: avapp
;
Source: "C:\src\AVBible\Data\AVX-Omega.data"; DestDir: "{app}\Data"; Flags: ignoreversion; Components: avapp or addin
Source: "C:\src\AVBible\Data\AVX-Omega.md5"; DestDir: "{app}\Data"; Flags: ignoreversion; Components: avapp or addin
Source: "C:\src\AVBible\Data\AVX-Omega.txt"; DestDir: "{app}\Data"; Flags: ignoreversion; Components: avapp or addin
Source: "C:\src\AVBible\Data\en_US.txt"; DestDir: "{app}\Data"; Flags: ignoreversion; Components: avapp or addin
;
Source: "C:\src\AVBible\Help\application.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\application.md"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\AV-Bible-S4T.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\AV-Bible-S4T.md"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\export.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\export.md"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\hashtags.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\hashtags.md"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\Index.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\Index-application.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\Index-export.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\Index-hashtags.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\Index-language.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\Index-selection.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\Index-settings.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\Index-system.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\language.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\language.md"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\selection.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\selection.md"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\settings.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\settings.md"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\system.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\system.md"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\topics.html"; DestDir: "{app}\Help"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\html-generator\md-page.js"; DestDir: "{app}\Help\html-generator"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\css\style.css"; DestDir: "{app}\Help\css"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\diagrams\QCommand.png"; DestDir: "{app}\Help\diagrams"; Flags: ignoreversion; Components: avapp
Source: "C:\src\AVBible\Help\diagrams\QFind.png"; DestDir: "{app}\Help\diagrams"; Flags: ignoreversion; Components: avapp
;
Source: "C:\src\AV-Bible-Addin\bin\Release\AV-Bible-Addin.dll"; DestDir: "{app}\Addin"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Bible-Addin\bin\Release\AV-Bible-Addin.dll.manifest"; DestDir: "{app}\Addin"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Bible-Addin\bin\Release\AV-Bible-Addin.vsto"; DestDir: "{app}\Addin"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Bible-Addin\bin\Release\Microsoft.Office.Tools.Common.v4.0.Utilities.dll"; DestDir: "{app}\Addin"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Bible-Addin\bin\Release\YamlDotNet.dll"; DestDir: "{app}\Addin"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Bible-Addin\bin\Release\YamlDotNet.xml"; DestDir: "{app}\Addin"; Flags: ignoreversion; Components: addin
;
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\{#MyMgrExeName}"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\aspnetcorev2_inprocess.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\D3DCompiler_47_cor3.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\PenImc_cor3.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\PresentationNative_cor3.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\vcruntime140_cor3.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\wpfgfx_cor3.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\libman.json"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\AV-Data-Manager\bin\published\win-x64\appsettings.json"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin
Source: "C:\src\pinshot-blue\target\release\pinshot_blue.dll"; DestDir: "{app}\Manager"; Flags: ignoreversion; Components: addin

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Code]
procedure CurStepChanged(CurStep: TSetupStep);
var
  AppPath: string;
  i: Integer;
begin
  if (CurStep = ssPostInstall) and IsComponentSelected('addin')
  then begin
    AppPath := ExpandConstant('{app}');
    for i := 1 to Length(AppPath)
    do begin
      if AppPath[i] = '\'
        then AppPath[i] := '/';
    end;
    
    // Write the converted path to the registry if the task is selected
    RegWriteStringValue(HKCU, 'Software\Microsoft\Office\Word\Addins\AV-Bible-Addin', 'Manifest', AppPath + '/Addin/AV-Bible-Addin.vsto|vstolocal');
  end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  RegDeleteValue(HKCU, 'Software\Microsoft\Office\Word\Addins\AV-Bible-Addin', 'Manifest');
end;


[Registry]
Root: HKCU; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: string; \
            ValueName: AV-Bible-Addin-Manager; ValueData: {app}\Manager\{#MyMgrExeName}; Components: addin
Root: HKCU; Subkey: Software\Microsoft\Office\Word\Addins\AV-Bible-Addin; ValueType: DWORD; \
            ValueName: LoadBehavior; ValueData: 3; Components: addin
Root: HKCU; Subkey: Software\Microsoft\Office\Word\Addins\AV-Bible-Addin; ValueType: string; \
            ValueName: Description; ValueData: AV-Bible-Addin; Components: addin
Root: HKCU; Subkey: Software\Microsoft\Office\Word\Addins\AV-Bible-Addin; ValueType: string; \
            ValueName: FriendlyName; ValueData: AV-Bible Addin for Microsoft Word; Components: addin
;Root: HKCU; Subkey: Software\Microsoft\Office\Word\Addins\AV-Bible-Addin; ValueType: string; \
;            ValueName: Manifest; ValueData: file:///{app}/Addin/AV-Bible-Addin.vsto|vstolocal; Components: addin

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Components: avapp
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; Components: avapp

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent; Components: avapp
Filename: "{app}\Manager\{#MyMgrExeName}"; Description: "AV-Data-Manager"; Flags: nowait postinstall; Components: addin

