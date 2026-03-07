.localvar 0 arguments
.localvar 1 hope_sprite 10064

:[0]
push.i 65280
pop.v.i self.image_blend
pushi.e 1609
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -14
pop.v.i self.depth

:[2]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 2313
pop.v.i local.hope_sprite
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [4]

:[3]
pushi.e 2314
pop.v.i local.hope_sprite

:[4]
pushi.e 2312
conv.i.v
pushloc.v local.hope_sprite
pushi.e 2323
conv.i.v
pushi.e 2318
conv.i.v
pushi.e 2326
conv.i.v
pushi.e 2337
conv.i.v
call.i choose(argc=6)
pop.v.v self.sprite_index
push.v self.sprite_index
pushi.e 2337
cmp.i.v NEQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[6]
pushi.e 0
pop.v.i self.image_speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
push.d 2.5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.vspeed

:[end]