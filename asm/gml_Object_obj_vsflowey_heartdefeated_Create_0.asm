.localvar 0 arguments

:[0]
push.v 1587.x
pop.v.v self.remx
push.v 1587.y
pop.v.v self.remy
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i sprite_create_from_screen_x(argc=8)
pop.v.v self.bb
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e -3
pushenv [2]

:[1]
pushi.e -500
pop.v.i self.x
pushi.e -500
pop.v.i self.y

:[2]
popenv [1]
pushi.e 1604
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 1
conv.i.v
call.i instance_deactivate_all(argc=1)
popz.v
pushi.e 1575
conv.i.v
call.i instance_activate_object(argc=1)
popz.v
push.v self.remx
pop.v.v self.x
push.v self.remy
pop.v.v self.y
pushi.e 1
pop.v.i self.drawbb
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
push.s "music/gameover.ogg"@2631
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.gmusic
pushi.e 0
pop.v.i self.dingus
pushi.e 1
pop.v.i self.currentvol
pushi.e 0
pop.v.i self.con
pushglb.v global.floss
pushi.e 1
add.i.v
pop.v.v self.ll
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
push.v self.ll
push.s "D"@6302
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i self.do_restart
pushi.e 0
pop.v.i self.in_fakecrash
pushi.e 0
pop.v.i self.force_black_screen

:[end]