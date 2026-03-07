.localvar 0 arguments

:[0]
push.v self.falling
pushi.e 999
cmp.i.v EQ
bf [end]

:[1]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.bonk
pushi.e 1016
pushenv [3]

:[2]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[end]