#define AppName "小狼毫输入法"
#define AppDir "Rime"
#define AppVersion "0.17.4.41"
#define AppPublisher "晴天博客"
#define AppURL "https://www.qt06.com/
#define VersionInfoCopyright "晴天博客"
#define VERSIONINFODESCRIPTION "小狼毫输入法安装程序"
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
VersionInfoCopyright={#VersionInfoCopyright}
VersionInfoCompany={#AppPublisher}
VersionInfoDescription={#VersionInfoDescription}
VersionInfoProductName={#AppName}
VersionInfoProductVersion={#AppVersion}
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
WizardStyle=modern

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"


[Messages]
ButtonNext=继续(&N) >

[Tasks]
Name: use_custom; Description: "使用个性化配置"
Name: use_custom/default_english_mode; Description: "默认英语输入模式"
Name: use_custom/quanpin; Description: "使用全拼输入方案"; Flags: exclusive
Name: use_custom/mspy; Description: "使用微软双拼输入方案"; Flags: exclusive unchecked
Name: use_custom/qhsp; Description: "使用清华双拼输入方案"; Flags: exclusive unchecked

[Files]
Source: "{#OriginalSetupName}"; DestDir: "{tmp}"
Source: "userappdata\rime-ice\*"; DestDir: "{userappdata}\{#AppDir}"; Excludes: ".git*"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\default.custom.yaml"; DestDir: "{userappdata}\{#AppDir}"; Tasks: use_custom; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\double_pinyin_qhsp.schema.yaml"; DestDir: "{userappdata}\{#AppDir}"; Tasks: use_custom; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\custom_phrase_double_qhsp.txt"; DestDir: "{userappdata}\{#AppDir}"; Tasks: use_custom; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\rime_ice.custom.yaml"; DestDir: "{userappdata}\{#AppDir}"; tasks: use_custom/default_english_mode; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\double_pinyin_mspy.custom.yaml"; DestDir: "{userappdata}\{#AppDir}"; tasks: use_custom/default_english_mode; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\double_pinyin_qhsp.custom.yaml"; DestDir: "{userappdata}\{#AppDir}"; tasks: use_custom/default_english_mode; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\rime_ice.user.yaml"; DestDir: "{userappdata}\{#AppDir}"; DestName: "user.yaml"; tasks: use_custom/quanpin; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\double_pinyin_mspy.user.yaml"; DestDir: "{userappdata}\{#AppDir}"; DestName: "user.yaml"; Tasks: use_custom/mspy; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "custom\double_pinyin_qhsp.user.yaml"; DestDir: "{userappdata}\{#AppDir}"; DestName: "user.yaml"; Tasks: use_custom/qhsp; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{tmp}\{#OriginalSetupName}"; StatusMsg: "正在安装"; Parameters: "/S"; Flags: skipifdoesntexist
