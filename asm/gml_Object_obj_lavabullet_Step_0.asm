.localvar 0 arguments

:[0]
push.v self.direction
pop.v.v self.image_angle
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.off

:[6]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [12]

:[7]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v GTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.off

:[12]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
push.v self.image_alpha
push.d 0.12
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]