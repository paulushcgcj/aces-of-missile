; Define the installer settings
[Setup]
AppName="Ace of Missiles"
AppVersion=0.0.0.1
DefaultDirName={pf}\Wolf Pack Studios\AceOfMissiles
DefaultGroupName=Ace of Missiles
OutputBaseFilename=install-aom
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

; Specify the files to include
[Files]
Source: "artifact\windows\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; Create a shortcut for the game
[Icons]
Name: "{commonprograms}\Ace of Missiles"; Filename: "{app}\AceOfMissile.exe"
Name: "{commondesktop}\Ace of Missiles"; Filename: "{app}\AceOfMissile.exe"

; Define what happens after installation
[Run]
Filename: "{app}\AceOfMissile.exe"; Description: "Launch Ace of Missile"; Flags: nowait postinstall
