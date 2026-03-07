.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
push.v self.ub
conv.v.i
pop.v.v [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [3]

:[2]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]

:[end]