.localvar 0 arguments

:[0]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -31
pop.v.i self.depth

:[5]
push.v self.y
pushi.e 340
cmp.i.v GT
bf [7]

:[6]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
pushi.e -14
pop.v.i self.depth
pushi.e 0
pop.v.i self.gravity
push.d 0.9
pop.v.d self.friction
b [12]

:[11]
pushi.e -14
pop.v.i self.depth
pushi.e 0
pop.v.i self.vspeed

:[12]
push.v self.direction
pop.v.v self.image_angle
pushi.e 1
pop.v.i self.visible

:[end]