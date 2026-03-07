.localvar 0 arguments

:[0]
push.v self.targetx
pop.v.v 1671.targetx
push.v self.targety
pop.v.v 1671.targety
push.v self.spec
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1671
pushenv [3]

:[2]
pushi.e 15
conv.i.v
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.spec
pushi.e 2
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1671
pushenv [7]

:[6]
push.d 0.8
conv.d.v
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[7]
popenv [6]
pushi.e 90
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]