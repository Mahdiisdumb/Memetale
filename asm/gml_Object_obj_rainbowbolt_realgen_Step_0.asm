.localvar 0 arguments

:[0]
push.v self.l_buffer
pushi.e 1
sub.i.v
pop.v.v self.l_buffer
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.h_mode
pushi.e 0
cmp.i.v EQ
bf [27]

:[1]
push.v self.timer
pushi.e 1
cmp.i.v GT
bf [3]

:[2]
push.v self.timer
pushi.e 10
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e -80
push.v self.x
add.v.i
push.v self.i
pushi.e 8
conv.i.d
div.d.v
pushi.e 640
mul.i.v
add.v.v
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[6]
push.v self.timer
pushi.e 21
cmp.i.v GT
bf [8]

:[7]
push.v self.timer
pushi.e 30
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e -80
push.v self.x
add.v.i
push.v self.i
pushi.e 8
conv.i.d
div.d.v
pushi.e 640
mul.i.v
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i

:[11]
push.v self.timer
pushi.e 41
cmp.i.v GT
bf [13]

:[12]
push.v self.timer
pushi.e 50
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e -80
push.v self.x
add.v.i
push.v self.i
pushi.e 8
conv.i.d
div.d.v
pushi.e 640
mul.i.v
add.v.v
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[16]
push.v self.timer
pushi.e 61
cmp.i.v GT
bf [18]

:[17]
push.v self.timer
pushi.e 70
cmp.i.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e -80
push.v self.x
add.v.i
push.v self.i
pushi.e 8
conv.i.d
div.d.v
pushi.e 640
mul.i.v
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i

:[21]
push.v self.timer
pushi.e 90
cmp.i.v EQ
bf [23]

:[22]
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 440
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[23]
push.v self.timer
pushi.e 106
cmp.i.v EQ
bf [25]

:[24]
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 380
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[25]
push.v self.timer
pushi.e 122
cmp.i.v EQ
bf [27]

:[26]
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 440
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[27]
push.v self.h_mode
pushi.e 1
cmp.i.v EQ
bf [end]

:[28]
push.v self.timer
pushi.e 1
cmp.i.v GT
bf [30]

:[29]
push.v self.timer
pushi.e 10
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e -80
push.v self.x
add.v.i
push.v self.i
pushi.e 8
conv.i.d
div.d.v
pushi.e 640
mul.i.v
add.v.v
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[33]
push.v self.timer
pushi.e 17
cmp.i.v GT
bf [35]

:[34]
push.v self.timer
pushi.e 27
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e -80
push.v self.x
add.v.i
push.v self.i
pushi.e 8
conv.i.d
div.d.v
pushi.e 640
mul.i.v
add.v.v
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i

:[38]
push.v self.timer
pushi.e 34
cmp.i.v GT
bf [40]

:[39]
push.v self.timer
pushi.e 44
cmp.i.v LT
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e -80
push.v self.x
add.v.i
push.v self.i
pushi.e 8
conv.i.d
div.d.v
pushi.e 640
mul.i.v
add.v.v
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[43]
push.v self.timer
pushi.e 54
cmp.i.v GT
bf [45]

:[44]
push.v self.timer
pushi.e 70
cmp.i.v LT
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[48]
push.v self.timer
pushi.e 76
cmp.i.v EQ
bt [53]

:[49]
push.v self.timer
pushi.e 91
cmp.i.v EQ
bt [53]

:[50]
push.v self.timer
pushi.e 106
cmp.i.v EQ
bt [53]

:[51]
push.v self.timer
pushi.e 121
cmp.i.v EQ
bt [53]

:[52]
push.v self.timer
pushi.e 136
cmp.i.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [end]

:[55]
push.v self.er
call.i caster_stop(argc=1)
popz.v
pushi.e 586
conv.i.v
pushi.e 360
conv.i.v
pushi.e 200
push.v self.rr
pushi.e 60
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.rr
pushi.e 1
add.i.v
pop.v.v self.rr

:[end]