.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.visible
pushi.e 0
pop.v.i 822.solid
pushi.e 0
pop.v.i self.hspeed
pushi.e -10
pop.v.i 1576.vspeed
pushi.e 41
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v 1576.y
pushi.e 550
cmp.i.v GT
bf [end]

:[1]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.alarm
pushi.e 11
add.i.v
pop.i.v [array]self.alarm

:[end]