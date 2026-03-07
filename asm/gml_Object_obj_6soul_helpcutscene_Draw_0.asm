.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 2
add.i.v
pop.v.v self.siner
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
push.v self.y
push.v self.siner
push.v self.i
pushi.e 6
conv.i.d
div.d.v
pushi.e 360
mul.i.v
add.v.v
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.siner
push.v self.i
pushi.e 6
conv.i.d
div.d.v
pushi.e 360
mul.i.v
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
push.v self.i
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.counter
pushi.e 60
cmp.i.v GT
bf [5]

:[4]
push.v self.counter
pushi.e 90
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.radius
push.d 0.6
add.d.v
pop.v.v self.radius

:[8]
push.v self.counter
pushi.e 120
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i self.vspeed

:[10]
push.v self.counter
pushi.e 120
cmp.i.v GT
bf [12]

:[11]
push.v self.counter
pushi.e 235
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.radius
pushi.e 1
add.i.v
pop.v.v self.radius

:[15]
push.v self.counter
pushi.e 235
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.times

:[17]
push.v self.counter
pushi.e 285
cmp.i.v EQ
bf [38]

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [37]

:[20]
pushi.e 1612
conv.i.v
push.v self.y
push.v self.siner
push.v self.i
pushi.e 6
conv.i.d
div.d.v
pushi.e 360
mul.i.v
add.v.v
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.siner
push.v self.i
pushi.e 6
conv.i.d
div.d.v
pushi.e 360
mul.i.v
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.heal
push.v self.heal
conv.v.i
pushenv [22]

:[21]
pushi.e 3
conv.i.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[22]
popenv [21]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 2337
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[24]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 2312
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[26]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2323
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[28]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [32]

:[29]
pushi.e 2313
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [31]

:[30]
pushi.e 2314
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[31]
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[32]
push.v self.i
pushi.e 4
cmp.i.v EQ
bf [34]

:[33]
pushi.e 2326
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[34]
push.v self.i
pushi.e 5
cmp.i.v EQ
bf [36]

:[35]
pushi.e 2318
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.heal
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[36]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[37]
push.v self.times
pushi.e 1
add.i.v
pop.v.v self.times

:[38]
push.v self.counter
pushi.e 325
cmp.i.v EQ
bf [41]

:[39]
push.v self.times
pushi.e 5
cmp.i.v LT
bf [41]

:[40]
pushi.e 283
pop.v.i self.counter

:[41]
push.v self.counter
pushi.e 360
cmp.i.v GT
bf [43]

:[42]
push.v self.radius
pushi.e 4
add.i.v
pop.v.v self.radius

:[43]
push.v self.counter
pushi.e 460
cmp.i.v GT
bf [end]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[end]