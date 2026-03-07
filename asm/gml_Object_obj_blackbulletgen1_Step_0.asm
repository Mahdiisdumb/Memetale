.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
sub.i.v
cmp.v.v GT
bt [4]

:[3]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
b [5]

:[4]
push.e 1

:[5]
bf [end]

:[6]
push.v self.xprevious
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[end]