.localvar 0 arguments

:[0]
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle
push.v self.y
pushbltn.v self.room_height
pushi.e 40
add.i.v
cmp.v.v GT
bf [end]

:[1]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]