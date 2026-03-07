.localvar 0 arguments

:[0]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 1
add.i.v
mul.v.v
pop.v.v self.aa
pushi.e -12
pop.v.i self.vspeed
push.v self.x
pushi.e 320
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[2]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [4]

:[3]
pushi.e -10
pop.v.i self.hspeed

:[4]
pushi.e 1
conv.i.v
call.i random(argc=1)
popz.v
pushi.e 260
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gravity_direction
push.d 0.5
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
pushi.e 0
pop.v.i self.visible
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.stop
pushi.e 0
pop.v.i self.deactivate
push.v self.hspeed
pushi.e -2
cmp.i.v LT
bf [6]

:[5]
pushi.e -2
pop.v.i self.hspeed

:[6]
push.v self.hspeed
pushi.e 2
cmp.i.v GT
bf [8]

:[7]
pushi.e 2
pop.v.i self.hspeed

:[8]
pushi.e 9
pop.v.i self.dmg

:[end]