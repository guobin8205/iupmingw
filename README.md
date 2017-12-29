IUP 是一个跨平台的 GUI 库

iupmingw 是云风（cloudwu）提供的简化编译IUP的工程，适用于mingw的Makefile，https://github.com/cloudwu/iupmingw

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
https://ncu.dl.sourceforge.net/project/luabinaries/5.3.4/Windows%20Libraries/Dynamic/lua-5.3.4_Win64_dllw4_lib.zip
```

编译出来的库需要能找到lua53.dll的库，就是你下载的库。
如果你用到scintilla这个组件，它内部需要
libstdc++-6.dll
libgcc_s_seh-1.dll
libwinpthread-1.dll
这些库的支持,这几个可以在mingw64里面找到。
编译完的release版本我已经放到bin目录里，enjoy it!
```
iup ../main.lua

iup ../simplenotepad.lua

```

