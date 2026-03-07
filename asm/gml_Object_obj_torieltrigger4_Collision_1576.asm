.localvar 0 arguments

:[0]
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 9
pop.v.i global.plot
pushi.e 1
pop.v.i global.interact
pushi.e 864
conv.i.v
push.v 876.y
push.v 876.x
call.i instance_create(argc=3)
pop.v.v self.tor
pushi.e 876
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 864
pushenv [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 15
conv.i.v
call.i path_start(argc=4)
popz.v

:[5]
popenv [4]
pushi.e 3
pop.v.i self.conversation

:[end]