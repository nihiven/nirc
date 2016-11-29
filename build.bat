bannertool makebanner -i "assets/banner.png" -a "assets/audio.wav" -o "banner.bin"
bannertool makesmdh -i "assets/icon.png" -s "nIRC" -l "3dIRC" -p "nihiven" -o "icon.bin"
3dstool -cvtf romfs romfs.bin --romfs-dir script
makerom -f cia -o "nirc.cia" -elf "lpp-3ds.elf" -rsf "cia_workaround.rsf" -icon "icon.bin" -banner "banner.bin" -exefslogo -target t -romfs "romfs.bin"
