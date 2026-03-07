.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.05
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
pushi.e 180
pushi.e 40
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.gravity_direction
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.vspeed
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [2]

:[1]
push.v self.gravity
pushi.e -1
mul.i.v
pop.v.v self.gravity

:[2]
pushi.e 0
pop.v.i self.fade
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]