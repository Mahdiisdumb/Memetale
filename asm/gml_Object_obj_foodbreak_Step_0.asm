.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.myh
pop.v.v self.hspeed
push.v self.myv
pop.v.v self.vspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 2
pop.v.i self.active

:[2]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
push.v self.image_angle
push.v self.mya
sub.v.v
pop.v.v self.image_angle
push.v self.y
push.v self.ystart
pushi.e 55
add.i.v
cmp.v.v GT
bf [end]

:[4]
pushi.e 3
pop.v.i self.active
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
push.v self.breaksprite
pop.v.v self.sprite_index
push.i 600000
pop.v.i self.depth
pushi.e 11
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]