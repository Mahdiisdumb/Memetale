.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 333
pop.v.i self.finaly
pushi.e -5
pushi.e 388
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pushi.e -5
pushi.e 388
pop.v.i [array]global.flag
push.v 1576.y
pop.v.v self.finaly
pushi.e -20
pop.v.i 1576.y
push.d 0.5
pop.v.d 1576.image_alpha
pushi.e 6
pop.v.i 1576.vspeed
pushi.e 1
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.phasing
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]