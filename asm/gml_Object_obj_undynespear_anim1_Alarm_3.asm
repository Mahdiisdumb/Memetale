.localvar 0 arguments

:[0]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 1065
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v 1065.table
conv.v.i
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.image_index

:[3]
popenv [2]

:[4]
pushi.e 0
pop.v.i self.speed
pushi.e 1541
pop.v.i self.sprite_index
push.v self.image_angle
pushi.e 90
add.i.v
pop.v.v self.image_angle

:[end]