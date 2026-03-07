.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 5
cmp.i.v EQ
bf [2]

:[1]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 864
conv.i.v
pushi.e 100
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tor
pushi.e 1
pop.v.i self.conversation
pushi.e 1
pop.v.i global.interact

:[end]