.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.bullettype
push.d 0.5
pop.v.d self.image_speed
push.d 0.06
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
push.v 1575.time
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.95
mul.d.v
call.i abs(argc=1)
pop.v.v self.vspeed
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.r
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 8
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.sterile
pushi.e 0
pop.v.i self.h
pushi.e 0
pop.v.i self.dink

:[end]