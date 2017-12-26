dlg = iup.dialog {
  title = "helloworld",
  size = "HALFxHALF",
}

dlg:showxy(iup.CENTER,iup.CENTER)
dlg.usersize = nil

if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
  iup.Close()
end