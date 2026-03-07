.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i self.dmg
pushi.e 1
pop.v.i self.bb
pushi.e 35
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.blut
pushi.e 0
pop.v.i self.blue
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
pop.v.v self.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 4
add.i.v
pop.v.v self.y
pushi.e -4
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.stage

:[end]