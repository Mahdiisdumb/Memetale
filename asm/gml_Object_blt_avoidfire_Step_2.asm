.localvar 0 arguments

:[0]
push.v 744.y
push.v self.x
call.i distance_to_point(argc=2)
pushi.e 100
cmp.i.v LT
bf [2]

:[1]
pushi.e 180
conv.i.d
push.v self.y
push.v 744.x
call.i distance_to_point(argc=2)
pushi.e 10
add.i.v
div.v.d
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[2]
push.v 744.x
push.v self.x
cmp.v.v GT
bf [4]

:[3]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[4]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v GT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [12]

:[11]
pushi.e 1
pop.v.i self.visible

:[12]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]