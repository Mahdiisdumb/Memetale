.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.image_speed
pushi.e 30
pushi.e 30
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]