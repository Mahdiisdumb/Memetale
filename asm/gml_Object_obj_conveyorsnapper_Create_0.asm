.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 376
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e -5
pushi.e 376
push.v [array]global.flag
pushi.e 200
sub.i.v
pop.v.v 1576.x
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
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.phasing
pushi.e 0
pushi.e -5
pushi.e 376
pop.v.i [array]global.flag

:[end]