#define AppName "小狼毫输入法"
#define AppDir "Rime"
#define AppVersion "0.17.4.41"
#define AppPublisher "晴天博客"
#define AppURL "https://www.qt06.com/
#define OriginalSetupName "weasel-0.17.4.41.93eec2d-installer.exe"

[Setup]
AppId={{3E322D17-8D9D-4777-A12F-C3AC8DB8393B}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
VersionInfoProductVersion={#AppVersion}
VersionInfoCompany={#AppPublisher}
VersionInfoVersion={#AppVersion}
DefaultDirName={userappdata}\{#AppDir}
DefaultGroupName={#AppName}
AllowNoIcons=yes
CreateAppDir=no
Uninstallable=no
InfoBeforeFile=README.md
;InfoAfterFile=..\更新日志.txt
OutputDir=.
OutputBaseFilename={#AppName}_weasel_{#APPVERSION}_simplified_installer
Compression=lzma
SolidCompression=yes
;这里必须用管理员权限安装，因为有添加注册表动作。
;PrivilegesRequired=lowest
WizardStyle=modern

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"


[Messages]
ButtonNext=继续(&N) >

[Tasks]

Name: quanpin; Description: "使用全拼输入模式"; Flags: exclusive
Name: shuangpin; Description: "使用微软双拼输入模式"; Flags: exclusive unchecked

[Files]
Source: "{#OriginalSetupName}"; DestDir: "{tmp}"
Source: "userappdata\rime-ice\*"; DestDir: "{userappdata}\Rime"; Excludes: ".git*"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\default.custom.yaml"; DestDir: "{userappdata}\Rime"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\rime_ice.yaml"; DestDir: "{userappdata}\Rime"; DestName: "user.yaml"; tasks: quanpin; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\double_pinyin_mspy.yaml"; DestDir: "{userappdata}\Rime"; DestName: "user.yaml"; Tasks: shuangpin; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{tmp}\{#OriginalSetupName}"; StatusMsg: "正在安装"; Parameters: "/S"; Flags: skipifdoesntexist
