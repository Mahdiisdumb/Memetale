.localvar 0 arguments

:[0]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e 2
pop.v.i 409.hurt
pushi.e 2
pop.v.i 409.dsf
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
pop.v.i self.shake
pushi.e 0
pop.v.i self.speed
push.v self.homex
pop.v.v self.x
push.v self.homey
pop.v.v self.y

:[2]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [4]

:[3]
push.v self.timer
pushi.e 4
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.shake
pushi.e 1
sub.i.v
pop.v.v self.shake
push.d 0.5
pop.v.d self.image_speed
push.v self.size
push.d 0.2
sub.d.v
pop.v.v self.size

:[7]
push.v self.timer
pushi.e 7
cmp.i.v EQ
bf [11]

:[8]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 330
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.shake
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [11]

:[10]
pushi.e 449
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
push.d 5.7
push.d 0.6
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.g
conv.v.i
pop.v.v [stacktop]self.speed
push.d 0.24
push.d 0.02
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.g
conv.v.i
pop.v.v [stacktop]self.friction
push.v self.i
pushi.e 360
mul.i.v
pushi.e 12
conv.i.d
div.d.v
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.g
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[11]
push.v self.timer
pushi.e 7
cmp.i.v GT
bf [13]

:[12]
push.v self.timer
pushi.e 10
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [19]

:[15]
push.v self.shake
pushi.e 6
add.i.v
pop.v.v self.shake
push.v self.size
push.d 0.75
add.d.v
pop.v.v self.size
push.v self.another
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.v self.size
push.d 0.15
add.d.v
pop.v.v self.size

:[17]
push.v self.another
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
push.v self.size
push.d 0.25
add.d.v
pop.v.v self.size

:[19]
push.v self.timer
pushi.e 13
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.size

:[21]
push.v self.timer
pushi.e 13
cmp.i.v GTE
bf [24]

:[22]
push.v self.shake
pushi.e 2
sub.i.v
pop.v.v self.shake
push.v self.shake
pushi.e 1
cmp.i.v LT
bf [24]

:[23]
pushi.e 0
pop.v.i self.shake

:[24]
push.v self.timer
pushi.e 20
cmp.i.v GT
bf [36]

:[25]
push.v self.another
pushi.e 0
cmp.i.v NEQ
bf [33]

:[26]
push.v self.another
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 900
pop.v.i global.turntimer
pushi.e 450
conv.i.v
push.v self.homey
push.v self.homex
call.i instance_create(argc=3)
pop.v.v self.mtb
push.v self.homex
push.v self.mtb
conv.v.i
pop.v.v [stacktop]self.homex
push.v self.homey
push.v self.mtb
conv.v.i
pop.v.v [stacktop]self.homey
pushi.e 2
push.v self.mtb
conv.v.i
pop.v.i [stacktop]self.another
pushi.e 0
push.v self.mtb
conv.v.i
pop.v.i [stacktop]self.timer
call.i instance_destroy(argc=0)
popz.v

:[28]
push.v self.another
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
pushi.e 450
conv.i.v
push.v self.homey
push.v self.homex
call.i instance_create(argc=3)
pop.v.v self.mtb
push.v self.homex
push.v self.mtb
conv.v.i
pop.v.v [stacktop]self.homex
push.v self.homey
push.v self.mtb
conv.v.i
pop.v.v [stacktop]self.homey
pushi.e 3
push.v self.mtb
conv.v.i
pop.v.i [stacktop]self.another
pushi.e 0
push.v self.mtb
conv.v.i
pop.v.i [stacktop]self.timer
call.i instance_destroy(argc=0)
popz.v

:[30]
push.v self.another
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i 409.heartdead
pushi.e 900
pop.v.i global.turntimer
pushi.e 3
pop.v.i 425.lastcon
call.i instance_destroy(argc=0)
popz.v

:[32]
b [36]

:[33]
pushglb.v global.turntimer
pushi.e 9
cmp.i.v GT
bf [35]

:[34]
pushi.e 9
pop.v.i global.turntimer

:[35]
pushi.e 0
pop.v.i 409.dsf

:[36]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
push.v self.homex
pushi.e 5
sub.i.v
push.v self.shake
add.v.v
push.v self.shake
pushi.e 2
mul.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.homey
push.v self.shake
add.v.v
push.v self.shake
pushi.e 2
mul.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[38]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LT
bf [42]

:[39]
push.v self.another
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e 7
pop.v.i global.faceemotion

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
pushi.e 6
pop.v.i global.faceemotion

:[end]