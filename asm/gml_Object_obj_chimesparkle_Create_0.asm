.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.maxalpha
pushi.e 0
pop.v.i self.timer
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -2
pop.v.i self.depth
push.d 0.5
conv.d.v
call.i random(argc=1)
push.d 0.5
add.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
pushi.e 3
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.rotspeed
pushi.e 0
pop.v.i self.image_speed

:[end]