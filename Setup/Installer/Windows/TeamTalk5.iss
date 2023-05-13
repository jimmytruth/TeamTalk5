; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=TeamTalk5
AppVerName=TeamTalk 5
AppPublisher=BearWare.dk
AppPublisherURL=http://www.bearware.dk
AppSupportURL=http://www.bearware.dk
AppUpdatesURL=http://www.bearware.dk
DefaultDirName={pf}\TeamTalk5
DefaultGroupName=TeamTalk 5
AllowNoIcons=yes
OutputBaseFilename=TeamTalk_v5.14.0.5116_Setup
SetupIconFile=c:\tt5dist\TeamTalk5_x64\TeamTalk5\Client\qtTeamTalk\images\teamtalk.ico
Compression=lzma/ultra64
SolidCompression=yes
LicenseFile=License.txt
ArchitecturesInstallIn64BitMode=x64


[Types]
Name: "i_client"; Description: "TeamTalk 5 Client"
Name: "i_full"; Description: "TeamTalk 5 Client & Server"
Name: "i_classic"; Description: "TeamTalk 5 Classic Client for Accessibility"
Name: "i_classic_full"; Description: "TeamTalk 5 Classic Client for Accessibility & Server"

[Components]
Name: "client"; Description: "Client files"; Types: i_client i_full; Flags: fixed
Name: "classic"; Description: "Classic Client files"; Types: i_classic i_classic_full; Flags: fixed
Name: "server"; Description: "Server files"; Types: i_full i_classic_full

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
;x64
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\windeployqt\*"; Excludes: "vc_redist.x64.exe"; DestDir: "{app}"; Components: client; Flags: ignoreversion recursesubdirs; Check: Is64BitInstallMode;
Source: "c:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\windeployqt\vc_redist.x64.exe"; DestDir: {tmp}; Components: client; Flags: deleteafterinstall; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\TeamTalk5.exe"; DestDir: "{app}"; Components: client; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "c:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\TeamTalkClassic\TeamTalk5Classic.exe"; DestDir: "{app}"; Components: classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Library\TeamTalk_DLL\TeamTalk5.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\nvdaControllerClient64.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\SAAPI64.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Client\qtTeamTalk\Tolk.dll"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Server\tt5svc.exe"; DestDir: "{app}"; Components: server; Flags: ignoreversion; Check: Is64BitInstallMode;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Build\install\x64\Server\tt5srv.exe"; DestDir: "{app}"; Components: server; Flags: ignoreversion; Check: Is64BitInstallMode;

;cfg files
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Windows\TeamTalk5.ini"; DestDir: "{app}"; DestName: "TeamTalk5.ini.default"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Windows\TeamTalk5Classic.xml"; DestDir: "{app}"; DestName: "TeamTalk5Classic.xml.default"; Components: classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Server\Windows\tt5svc_install.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Server\Windows\tt5svc_uninstall.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Server\Windows\tt5srv_console.bat"; DestDir: "{app}"; Components: server; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Windows\TeamTalk5.ini"; DestDir: "{userappdata}\BearWare.dk"; Components: client; Flags: ignoreversion onlyifdoesntexist;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Windows\TeamTalk5Classic.xml"; DestDir: "{userappdata}\BearWare.dk"; Components: classic; Flags: ignoreversion onlyifdoesntexist;
Source: "License.txt"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Documentation\TeamTalk\output\TeamTalk5.chm"; DestDir: "{app}"; Components: client classic; Flags: ignoreversion;
;wave files
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Sounds\Majorly-G\*"; DestDir: "{app}\Sounds\Majorly-G"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Sounds\Old\*"; DestDir: "{app}\Sounds\Old"; Components: client; Flags: ignoreversion;
Source: "C:\tt5dist\TeamTalk5_x64\TeamTalk5\Setup\Client\Sounds\*.wav"; DestDir: "{app}\Sounds"; Components: client classic; Flags: ignoreversion;
;language files
Source: "c:\tt5dist\TeamTalk5_x64\TeamTalk5\Client\qtTeamTalk\languages\*.qm"; DestDir: "{app}\languages"; Components: client; Flags: ignoreversion;

;classic language files
Source: "c:\tt5dist\TeamTalk5_x64\TeamTalk5\Client\TeamTalkClassic\lng_classic\*.lng"; DestDir: "{app}\lng_classic"; Components: classic; Flags: ignoreversion;

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\TeamTalk 5"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client;
Name: "{group}\TeamTalk 5 Classic"; Filename: "{app}\TeamTalk5Classic.exe"; WorkingDir: "{app}"; Components: classic;
Name: "{commondesktop}\TeamTalk 5"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client; Tasks: desktopicon;
Name: "{commondesktop}\TeamTalk 5 Classic"; Filename: "{app}\TeamTalk5Classic.exe"; WorkingDir: "{app}"; Components: classic; Tasks: desktopicon;
Name: "{group}\TeamTalk 5 Help"; Filename: "{app}\TeamTalk5.chm"; WorkingDir: "{app}";
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\TeamTalk"; Filename: "{app}\TeamTalk5.exe"; WorkingDir: "{app}"; Components: client; Tasks: quicklaunchicon;
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\TeamTalk"; Filename: "{app}\TeamTalk5Classic.exe"; WorkingDir: "{app}"; Components: classic; Tasks: quicklaunchicon;
Name: "{group}\TeamTalk 5 NT Service\Install TeamTalk NT Service"; Filename: "{app}\tt5svc_install.bat"; WorkingDir: "{app}"; Components: server;
Name: "{group}\TeamTalk 5 NT Service\Uninstall TeamTalk NT Service"; Filename: "{app}\tt5svc_uninstall.bat"; WorkingDir: "{app}"; Components: server;
Name: "{group}\TeamTalk 5 Console Server"; Filename: "{app}\tt5srv_console.bat"; WorkingDir: "{app}"; Components: server;

[Run]
Filename: "{tmp}\vc_redist.x64.exe"; Parameters: "/install /quiet /norestart"; Components: client; Check: Is64BitInstallMode;
Filename: "{app}\TeamTalk5.exe"; Description: "{cm:LaunchProgram,TeamTalk}"; WorkingDir: "{app}"; Parameters: ""; Components: client; Flags: postinstall nowait skipifsilent
Filename: "{app}\TeamTalk5Classic.exe"; Description: "{cm:LaunchProgram,TeamTalk}"; WorkingDir: "{app}"; Parameters: ""; Components: classic; Flags: postinstall nowait skipifsilent

[Registry]
Root: HKCR; Subkey: "TeamTalk"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk"; ValueType: string; ValueData: "TeamTalk Host Settings"; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5Classic.exe"""; Components: classic; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell"; ValueType: string; ValueData: "Open"; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open"; ValueType: string; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"" ""%1"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "TeamTalk\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5Classic.exe"" ""%1"""; Components: classic; Flags: uninsdeletekey

Root: HKCR; Subkey: "tt"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt"; ValueType: string; ValueData: "URL:TeamTalk Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt"; ValueType: string; ValueName: "URL Protocol"; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\DefaultIcon"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\DefaultIcon"; ValueType: string; ValueData: """{app}\TeamTalk5Classic.exe"""; Components: classic; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell"; ValueType: string; ValueData: "Open"; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open"; ValueType: string; ValueData: ""; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5.exe"" ""%1"""; Components: client; Flags: uninsdeletekey
Root: HKCR; Subkey: "tt\Shell\Open\Command"; ValueType: string; ValueData: """{app}\TeamTalk5Classic.exe"" ""%1"""; Components: classic; Flags: uninsdeletekey

Root: HKCR; Subkey: ".tt"; ValueType: none; Flags: uninsdeletekey
Root: HKCR; Subkey: ".tt"; ValueType: string; ValueData: "TeamTalk"; Flags: uninsdeletekey

Root: HKCR; Subkey: "TeamTalk\DefaultIcon"; ValueType: none; ValueName: "InstallPath"; ValueData: "{app}"


