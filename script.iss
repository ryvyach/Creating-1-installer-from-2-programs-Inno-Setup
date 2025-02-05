[Setup]
;info
AppId={{<I think you can write anything you want>}}
AppName=<installer name>
AppVersion=<version>
AppPublisher=<developer>
AppPublisherURL=<link to developer>
AppSupportURL=<link> (not necessary)
AppUpdatesURL=<link> (not necessary)
DefaultDirName={pf}\<installation folder name>
DefaultGroupName=<group folder name (start menu)>
DisableProgramGroupPage=yes
;Windows way: C:\ or D:\ ...
LicenseFile=<path to license>
OutputDir=<installer installation path>
SetupIconFile=<installer icon>
;do not touch
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]

                                              ;FOR PROGRAMS WITH THE SAME FILES

Source: "<Windows way: C:\ or D:\ ... to executable file .exe>"; DestDir: "{app}"; Flags: ignoreversion
Source: "<Windows way: C:\ or D:\ ... to executable file .exe>"; DestDir: "{app}"; Flags: ignoreversion
Source: "<Windows way: C:\ or D:\ ... to files>"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs


                                              ;FOR PROGRAMS WITH DIFFERENT FILES
;files for 1 installer
Source: "<Windows way: C:\ or D:\ ... to executable file .exe>"; DestDir: "{app}\<installer folder 1>"; Flags: ignoreversion
Source: "<Windows way: C:\ or D:\ ... to files>"; DestDir: "{app}\<installer folder 1>"; Flags: ignoreversion recursesubdirs createallsubdirs

;files for 2 installer
Source: "<Windows way: C:\ or D:\ ... to executable file .exe>"; DestDir: "{app}\<installer folder 2>"; Flags: ignoreversion
Source: "<Windows way: C:\ or D:\ ... to files>"; DestDir: "{app}\<installer folder 2>"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]

                                              ;WITHOUT DELETE EXECUTIVE FILE ICON

;icons for 1 installer
Name: "{group}\<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"
Name: "{commondesktop}\I<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\IDA Pro (32-bit)"; Filename: "{app}\<executable file .exe>"; Tasks: quicklaunchicon

;icons for 2 installer
Name: "{group}\<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"
Name: "{commondesktop}\<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"; Tasks: quicklaunchicon

                                              ;WITH EXECUTIVE FILE DELETE ICON

;icons for 1 installer
Name: "{group}\<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"
Name: "{group}\{cm:UninstallProgram,<name of the installer program 1 after installation>}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\I<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\IDA Pro (32-bit)"; Filename: "{app}\<executable file .exe>"; Tasks: quicklaunchicon

;icons for 2 installer
Name: "{group}\<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"
Name: "{group}\{cm:UninstallProgram,<name of the installer program 1 after installation>}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\<name of the installer program 1 after installation>"; Filename: "{app}\<executable file .exe>"; Tasks: quicklaunchicon

[UninstallDelete]
;i could be wrong
DeleteDir: "{app}";