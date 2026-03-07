.localvar 0 arguments

:[0]
push.v self.touched
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pushi.e -5
pushi.e 388
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.touched
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.vspeed

:[end]