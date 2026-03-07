.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
push.v self.intensity
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
push.v self.intensity
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
push.v self.intensity
pushi.e 1
sub.i.v
pop.v.v self.intensity
push.v self.intensity
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]