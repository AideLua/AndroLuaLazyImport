# AndroLua+ 懒导入

[![license](https://img.shields.io/github/license/AideLua/AndroLuaLazyImport)](LICENSE)
[![Gitee 发行版](https://img.shields.io/github/v/tag/AideLua/AndroLuaLazyImport?color=C71D23&label=发行版&logo=gitee)](https://gitee.com/AideLua/AndroLuaLazyImport/releases/latest)

[![Gitee 仓库](https://img.shields.io/badge/Gitee-仓库-C71D23?logo=gitee)](https://gitee.com/AideLua/AndroLuaLazyImport)
[![Github 仓库](https://img.shields.io/badge/Github-仓库-0969DA?logo=github)](https://github.com/AideLua/AndroLuaLazyImport)

## 介绍

懒导入，防止加载多余的模块/类

通过 metatable 和 `import` 函数实现懒加载

* __Gitee__: <https://gitee.com/AideLua/AndroLuaLazyImport>
* __GitHub__: <https://github.com/AideLua/AndroLuaLazyImport>

## 软件架构

* __lua/lazyimport.lua__: 模块

## 安装教程

1. 复制 `lazyimport.lua` 到 `你的工程/lua` 内
2. 在 `main.lua` 内导入 `import` 模块: `require "import"`
3. 导入 `lazyimport` 模块: `import "lazyimport"`

## 使用说明

``` lua
import "lazyimport"
+ lazyimport "java.io.File"
File("/sdcard/myfile.txt")
```

## 参与贡献

1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request
