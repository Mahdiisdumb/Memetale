.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.cary
pushi.e 0
pop.v.i self.car_index
pushi.e 0
pop.v.i self.siner
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.bgx
pushi.e -150
pop.v.i self.x
pushi.e 2
pop.v.i self.hspeed
pushi.e 1365
conv.i.v
pushi.e 100
conv.i.v
pushi.e -420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sans
pushi.e 2556
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.sans
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 2
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1687
conv.i.v
pushi.e 10
conv.i.v
pushi.e -100
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.birb
push.i 1100000
push.v self.birb
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.birb
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.birb
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -1
push.v self.birb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.td
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 433
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i global.inbattle

:[end]