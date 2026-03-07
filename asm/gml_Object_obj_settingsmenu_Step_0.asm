.localvar 0 arguments

:[0]
push.v self.finish
conv.v.b
bf [end]

:[1]
push.s "config.ini"@47633
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushglb.v global.language
push.s "lang"@47678
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.screen_border_id
push.s "sb"@47680
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.button0
push.s "b0"@47634
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.button1
push.s "b1"@47636
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.button2
push.s "b2"@47637
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]