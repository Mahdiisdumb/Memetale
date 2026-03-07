.localvar 0 arguments

:[0]
pushi.e 100
pop.v.i self.gameshake
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i window_set_fullscreen(argc=1)
popz.v

:[2]
push.s " "@18
conv.s.v
call.i window_set_caption(argc=1)
popz.v
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i window_center(argc=0)
popz.v
call.i window_get_x(argc=0)
pop.v.v self.wx
call.i window_get_y(argc=0)
pop.v.v self.wy
push.v self.wy
push.v self.wx
push.v self.gameshake
add.v.v
call.i window_set_position(argc=2)
popz.v

:[4]
pushi.e 193
pushi.e -1
pushi.e 3
pop.v.i [array]self.background_index
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.background_foreground
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.background_htiled
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.background_vtiled
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.background_visible
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.background_hspeed
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.background_vspeed
pushi.e 0
pop.v.i self.in_silence
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [13]

:[5]
push.s "memetale.exe"@49224
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.s "memetale.exe"@49224
conv.s.v
call.i file_delete(argc=1)
popz.v

:[7]
push.s "memetale.EXE"@49246
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.s "memetale.EXE"@49246
conv.s.v
call.i file_delete(argc=1)
popz.v

:[9]
push.s "Memetale.exe"@49247
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [11]

:[10]
push.s "Memetale.exe"@49247
conv.s.v
call.i file_delete(argc=1)
popz.v

:[11]
push.s "MEMETALE.exe"@49248
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [13]

:[12]
push.s "MEMETALE.exe"@49248
conv.s.v
call.i file_delete(argc=1)
popz.v

:[13]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [15]

:[14]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[15]
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [17]

:[16]
push.s "file0"@3189
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[17]
push.s "file1"@49249
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [19]

:[18]
push.s "file1"@49249
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[19]
push.s "file2"@49250
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [21]

:[20]
push.s "file2"@49250
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[21]
push.s "file3"@49251
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [23]

:[22]
push.s "file3"@49251
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[23]
push.s "file4"@49252
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [25]

:[24]
push.s "file4"@49252
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[25]
push.s "file5"@49253
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [27]

:[26]
push.s "file5"@49253
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[27]
push.s "file6"@49254
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [29]

:[28]
push.s "file6"@49254
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[29]
push.s "file7"@49255
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [31]

:[30]
push.s "file7"@49255
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[31]
push.s "file8"@49256
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [33]

:[32]
push.s "file8"@49256
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[33]
push.s "file9"@49257
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [35]

:[34]
push.s "file9"@49257
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[35]
push.s "system_information_962"@3398
conv.s.v
call.i ossafe_file_text_open_write(argc=1)
pop.v.v self.gx
push.s "a"@2906
conv.s.v
push.v self.gx
call.i ossafe_file_text_write_string(argc=2)
popz.v
push.v self.gx
call.i ossafe_file_text_close(argc=1)
popz.v
pushglb.v global.steam_int
pushi.e 1
cmp.i.v EQ
bf [38]

:[36]
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_exists(argc=1)
conv.v.b
not.b
bf [38]

:[37]
push.s "system_information_962"@3398
conv.s.v
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_write_file(argc=2)
popz.v

:[38]
call.i ossafe_savedata_save(argc=0)
popz.v

:[end]