.localvar 0 arguments

:[0]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v 1576.x
pushi.e 7
add.i.v
pop.v.v self.goalx
push.v 1576.y
pushi.e 15
add.i.v
pop.v.v self.goaly
pushbltn.v self.room
pushi.e 93
cmp.i.v EQ
bf [4]

:[3]
push.v 1576.x
pushi.e 400
add.i.v
pop.v.v self.goalx

:[4]
pushi.e 5
conv.i.v
push.v self.goaly
push.v self.goalx
push.v self.gax
add.v.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 1
pop.v.i self.active
push.v self.direction
pop.v.v self.rot
push.d -0.3
pop.v.d self.friction
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.r

:[end]