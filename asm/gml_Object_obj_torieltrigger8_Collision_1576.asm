.localvar 0 arguments

:[0]
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y
pushi.e 1
pop.v.i global.interact
pushi.e 863
conv.i.v
pushi.e 95
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 863
pushenv [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 26
conv.i.v
call.i path_start(argc=4)
popz.v

:[2]
popenv [1]
pushi.e 1
pop.v.i self.conversation

:[end]