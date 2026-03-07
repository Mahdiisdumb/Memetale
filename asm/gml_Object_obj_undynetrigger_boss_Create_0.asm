.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.fakedrawer
pushi.e 0
pop.v.i self.playthesong
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.con
push.v self.y
pushi.e 20
sub.i.v
pop.v.v self.y
pushglb.v global.plot
pushi.e 120
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]