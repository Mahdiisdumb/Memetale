.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.side
pushi.e 0
pop.v.i self.visible
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.image_xscale

:[end]