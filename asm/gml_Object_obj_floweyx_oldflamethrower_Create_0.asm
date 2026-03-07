.localvar 0 arguments

:[0]
pushi.e 160
pop.v.i self.y
push.d 0.05
pop.v.d self.image_xscale
pushi.e 5
pop.v.i self.vspeed
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.image_angle
push.v self.image_angle
pushi.e 312
cmp.i.v GT
bf [2]

:[1]
pushi.e 312
pop.v.i self.image_angle

:[2]
push.v self.image_angle
pushi.e 240
cmp.i.v LT
bf [4]

:[3]
pushi.e 240
pop.v.i self.image_angle

:[4]
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.num
pushi.e 0
pop.v.i self.anchor
pushi.e 0
pop.v.i self.xanchor
pushi.e 0
pop.v.i self.yanchor
pushi.e 0
pop.v.i self.side
push.v self.x
pushi.e 440
cmp.i.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self.side

:[6]
pushi.e 0
pop.v.i self.con

:[end]