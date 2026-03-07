.localvar 0 arguments

:[0]
push.v self.desperate
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.acon
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.siner
push.d 0.8
add.d.v
pop.v.v self.siner

:[6]
pushi.e 1
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.03
mul.d.v
add.v.i
pop.v.v self.growth
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
push.v self.image_xscale
mul.v.v
pop.v.v self.ssx
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.ssy
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.growth
push.v self.image_xscale
push.v self.y
push.v self.ssy
add.v.v
push.v self.x
push.v self.ssx
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.acon
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [14]

:[11]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.siner
push.d 1.2
add.d.v
pop.v.v self.siner

:[13]
pushi.e 1
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.03
mul.d.v
add.v.i
pop.v.v self.growth
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
push.v self.image_xscale
mul.v.v
pop.v.v self.ssx
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 8
mul.i.v
pop.v.v self.ssy
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.growth
push.v self.image_xscale
push.v self.y
push.v self.ssy
add.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.ssx
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.image_xscale
neg.v
pop.v.v self.xr
push.v self.acon
pushi.e 2
cmp.i.v EQ
bf [19]

:[15]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.reach
pushi.e 2339
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.reach
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.reach
pushi.e 1
sub.i.v
pop.v.v self.reach

:[17]
push.v self.reach
pushi.e 0
cmp.i.v LTE
bf [19]

:[18]
pushi.e 0
pop.v.i self.acon
pushi.e 0
pop.v.i self.reach2
pushi.e 0
pop.v.i self.reach3
pushi.e 0
pop.v.i self.reach
pushi.e 0
pop.v.i self.acon2
pushi.e 0
pop.v.i self.made

:[19]
push.v self.acon
pushi.e 1
cmp.i.v EQ
bf [end]

:[20]
push.v self.acon2
pushi.e 1
cmp.i.v EQ
bt [22]

:[21]
push.v self.acon2
pushi.e 3
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [27]

:[24]
push.v self.reach2
pushi.e 13
cmp.i.v LT
bf [26]

:[25]
push.v self.reach2
pushi.e 2
add.i.v
pop.v.v self.reach2

:[26]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 195
add.i.v
push.v self.x
push.v self.xr
pushi.e 36
mul.i.v
add.v.v
push.v self.reach2
pushi.e 2338
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[27]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.reach
pushi.e 2339
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.reach
pushi.e 11
cmp.i.v LT
bf [29]

:[28]
push.v self.reach
pushi.e 2
add.i.v
pop.v.v self.reach

:[29]
push.v self.reach
pushi.e 12
cmp.i.v EQ
bf [31]

:[30]
pushi.e 11
pop.v.i self.reach
b [33]

:[31]
push.v self.acon2
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pop.v.i self.acon2

:[33]
push.v self.acon2
pushi.e 1
cmp.i.v EQ
bf [48]

:[34]
push.v self.reach2
pushi.e 14
cmp.i.v EQ
bf [36]

:[35]
pushi.e 13
pop.v.i self.reach2

:[36]
push.v self.reach2
pushi.e 13
cmp.i.v EQ
bf [38]

:[37]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [48]

:[40]
pushi.e 1
pop.v.i self.made
pushi.e 1658
conv.i.v
push.v self.y
pushi.e 138
add.i.v
push.v self.x
pushi.e 135
push.v self.xr
mul.v.i
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.venu
push.v self.id
push.v self.venu
conv.v.i
pop.v.v [stacktop]self.boss
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
bf [44]

:[41]
push.v self.venu
conv.v.i
pushenv [43]

:[42]
pushi.e 1
pop.v.i self.sider
pushi.e -1
pop.v.i self.image_xscale

:[43]
popenv [42]

:[44]
push.v self.image_xscale
pushi.e 0
cmp.i.v LT
bf [48]

:[45]
push.v self.venu
conv.v.i
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.sider

:[47]
popenv [46]

:[48]
push.v self.acon2
pushi.e 3
cmp.i.v EQ
bf [50]

:[49]
push.v self.reach2
pushi.e 1
add.i.v
pop.v.v self.reach2

:[50]
push.v self.reach2
pushi.e 39
cmp.i.v GTE
bf [end]

:[51]
pushi.e 2
pop.v.i self.acon

:[end]