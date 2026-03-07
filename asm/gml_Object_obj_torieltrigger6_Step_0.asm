.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.conversation
push.v self.toriel
conv.v.i
pushenv [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 41
conv.i.v
call.i path_start(argc=4)
popz.v

:[6]
popenv [5]
pushi.e 18
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]