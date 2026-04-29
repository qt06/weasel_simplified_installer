# 开发

如果需要在本地自己打包，请按照下面步骤进行。

## 安装 Inno Setup

可以从官网下载，地址： https://jrsoftware.org/isdl.php

## 克隆仓库代码

```bash
git clone --recursive --shallow-submodules --depth 1 https://github.com/qt06/weasel_simplified_installer
```

## 下载小狼毫原安装包

前往小狼毫的 github 仓库发布页面下载小狼毫最新版安装包，地址： https://github.com/rime/weasel/releases

下载后，将安装包复制到 `weasel_simplified_installer` 目录内。

## 修改打包脚本

进入 `weasel_simplified_installer` 目录内，找到 `install_script.iss` 文件，用你喜欢的编辑器打开，修改小狼毫原安装包的文件名（如果你的小狼毫原安装包版本不同的话）。
修改其他你需要调整的字段。

## 编译

最后使用 inno setup 编译脚本即可生成新的安装包。
