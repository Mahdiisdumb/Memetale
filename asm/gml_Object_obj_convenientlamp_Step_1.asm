.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushglb.v global.plot
pushi.e 35
cmp.i.v LTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.solid
b [3]

:[2]
pushi.e 1
pop.v.i self.solid

:[3]
pushi.e 1357
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[4]
push.v 1357.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[end]