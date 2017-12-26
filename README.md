IUP 是一个跨平台的 GUI 库

iupmingw 是云风（cloudwu）提供的简化编译IUP的工程，适用于mingw的 Makefile，https://github.com/cloudwu/iupmingw 。

但我并不是使用windows版mingw，使用的是win10的bash on windows来编译。

先从 svn 仓库获取 IUP 源码（我使用的 Revision: 4366 ）：

```
svn co https://svn.code.sf.net/p/iup/iup/trunk/iup iup
```

然后在 iup 目录下 clone 本仓库

```
git clone https://github.com/guobin8205/iupmingw.git mingw
```

安装ubuntu mignw-w64版本
```
sudo apt-get install mingw-w64
```


下载lua5.3的mingw4 64位版本，和我在ubuntu里装的版本一致，解压到某个目录，并设置 lua 的 include lib 路径然后make
```
https://jaist.dl.sourceforge.net/project/luabinaries/5.3.3/Windows%20Libraries/Static/lua-5.3.3_Win64_mingw4_lib.zip
```

```
iup main.lua

iup simplenotepad.lua

```
目前运行示例出现error loading module 'scintilla' from file，而我在scintilla的代码里没有看到luaopen的载入代码，
不知道是不是这个编译出来的dll是否能顺利加载。
