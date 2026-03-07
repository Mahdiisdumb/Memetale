.localvar 0 arguments

:[0]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v self.blcon
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
push.v self.image_alpha
push.d 0.1
cmp.d.v GT
bf [6]

:[5]
pushi.e 763
pop.v.i self.sprite_index
push.v self.y
pushi.e 56
add.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.killed
pushi.e 20
pop.v.i self.room_speed
pushi.e 746
conv.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.y
add.v.v
push.v 744.x
call.i instance_create(argc=3)
popz.v
pushi.e 4
pushi.e -5
pushi.e 45
pop.v.i [array]global.flag
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TK"@47563
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.TK
push.v self.TK
pushi.e 1
add.i.v
push.s "TK"@47563
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
pushi.e 1
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
b [end]

:[6]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i global.typer
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "obj_torielboss_240"@32833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 1
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[end]