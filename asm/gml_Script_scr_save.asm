.localvar 0 arguments

:[0]
pushi.e 61
conv.i.v
call.i script_execute(argc=1)
popz.v
pushglb.v global.filechoice
pop.v.v self.filechoicebk2
pushi.e 9
pop.v.i global.filechoice
pushi.e 61
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.filechoicebk2
pop.v.v global.filechoice
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
pop.v.v self.iniwrite
pushglb.v global.charname
push.s "Name"@3378
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.lv
push.s "Love"@3380
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.v 1575.time
push.s "Time"@3381
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.kills
push.s "Kills"@3382
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushbltn.v self.room
push.s "Room"@3383
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[end]