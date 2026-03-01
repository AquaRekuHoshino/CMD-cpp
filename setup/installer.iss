#define MyAppName "CMD++"
#define MyAppVersion "1.1.2"
#define MyAppPublisher "AquaReku"
#define MyAppExeName "CMD++.exe"

[Setup]
AppId={{B3E3A1A8-ABCD-4455-9988-FAKEID00001}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=.
OutputBaseFilename=CMD++_Installer
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
Source: "..\setup\CMD++.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\CMD++"; Filename: "{app}\CMD++.exe"
Name: "{commondesktop}\CMD++"; Filename: "{app}\CMD++.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Crear acceso directo en el escritorio"; GroupDescription: "Opciones adicionales:"

[Run]
Filename: "{app}\CMD++.exe"; Description: "Ejecutar CMD++"; Flags: nowait postinstall skipifsilent