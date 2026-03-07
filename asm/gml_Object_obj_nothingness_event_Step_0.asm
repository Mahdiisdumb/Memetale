.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.interact
pushi.e 27
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [3]

:[1]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[2]
call.i game_end(argc=0)
popz.v

:[3]
push.s " "@18
conv.s.v
call.i window_set_caption(argc=1)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 106
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 888
pop.v.i global.msc
pushi.e 2
pop.v.i self.con
pushi.e 784
conv.i.v
pushi.e 150
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.writer

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 3
pop.v.i self.con
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 106
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 890
pop.v.i global.msc
pushi.e 5
pop.v.i self.con
pushi.e 784
conv.i.v
pushi.e 150
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.writer

:[12]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [25]

:[16]
push.s "system_information_962"@3398
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [18]

:[17]
push.s "system_information_962"@3398
conv.s.v
call.i ossafe_file_delete(argc=1)
popz.v

:[18]
push.s "system_information_963"@3403
conv.s.v
call.i ossafe_file_text_open_write(argc=1)
pop.v.v self.gx
push.s "b"@2904
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
bf [22]

:[19]
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_exists(argc=1)
conv.v.b
bf [21]

:[20]
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_delete(argc=1)
popz.v

:[21]
push.s "system_information_962"@3398
conv.s.v
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_write_file(argc=2)
popz.v

:[22]
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 151
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [24]

:[23]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [25]

:[24]
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[26]
pushglb.v global.savedata_async_id
pushi.e -1
cmp.i.v EQ
bf [end]

:[27]
call.i ossafe_game_end(argc=0)
popz.v

:[end]