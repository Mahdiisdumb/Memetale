.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.hspeed
pushi.e 6
pop.v.i self.speedfactor
pushi.e 1
pop.v.i self.choice
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 364.yamt
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.choice

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.side
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.dmg

:[end]