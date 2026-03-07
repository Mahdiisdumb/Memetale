.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.onoff
pushi.e 0
pop.v.i self.nowtime
pushi.e 7
pop.v.i self.maxtime
push.v 1587.x
pushi.e 8
add.i.v
pop.v.v self.xx
push.v 1587.y
pushi.e 8
add.i.v
pop.v.v self.yy
push.v self.yy
push.v self.xx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.memorymode
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.saved
pushi.e 164
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]