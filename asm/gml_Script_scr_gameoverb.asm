.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.hp
pushglb.v global.battlegroup
pushi.e 22
cmp.i.v EQ
bf [2]

:[1]
pushi.e 750
pop.v.i 212.sprite_index

:[2]
pushi.e 479
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "KillYou"@5086
conv.s.v
push.s "Asgore"@5087
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ky
push.v self.ky
pushi.e 1
add.i.v
push.s "KillYou"@5086
conv.s.v
push.s "Asgore"@5087
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[4]
pushi.e 361
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e -5
pushi.e 11
dup.i 1
push.v [array]global.tempvalue
pushi.e 1
add.i.v
pop.i.v [array]global.tempvalue

:[6]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Gameover"@5090
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.g_o
call.i ossafe_ini_close(argc=0)
popz.v
call.i audio_stop_all(argc=0)
popz.v
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 744
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
push.v 744.x
pop.v.v global.myxb
push.v 744.y
pop.v.v global.myyb

:[8]
pushi.e 749
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v 749.x
pop.v.v global.myxb
push.v 749.y
pop.v.v global.myyb

:[10]
pushi.e 310
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]