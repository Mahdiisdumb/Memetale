.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 0
cmp.i.v EQ
bf [32]

:[1]
pushi.e 2089
pop.v.i self.facespr
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2089
pop.v.i self.facespr

:[3]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 2093
pop.v.i self.facespr

:[5]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2094
pop.v.i self.facespr

:[7]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2099
pop.v.i self.facespr

:[9]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2107
pop.v.i self.facespr

:[11]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2096
pop.v.i self.facespr

:[13]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [15]

:[14]
pushi.e 2394
pop.v.i self.facespr

:[15]
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [17]

:[16]
pushi.e 2392
pop.v.i self.facespr

:[17]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [19]

:[18]
pushi.e 2393
pop.v.i self.facespr

:[19]
pushglb.v global.faceemotion
pushi.e 10
cmp.i.v EQ
bf [21]

:[20]
pushi.e 2397
pop.v.i self.facespr

:[21]
pushglb.v global.faceemotion
pushi.e 11
cmp.i.v EQ
bf [23]

:[22]
pushi.e 2391
pop.v.i self.facespr

:[23]
pushglb.v global.faceemotion
pushi.e 12
cmp.i.v EQ
bf [25]

:[24]
pushi.e 2396
pop.v.i self.facespr

:[25]
pushglb.v global.faceemotion
pushi.e 13
cmp.i.v EQ
bf [27]

:[26]
pushi.e 2398
pop.v.i self.facespr

:[27]
pushglb.v global.faceemotion
pushi.e 14
cmp.i.v EQ
bf [29]

:[28]
pushi.e 2395
pop.v.i self.facespr

:[29]
pushglb.v global.faceemotion
pushi.e 15
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2399
pop.v.i self.facespr

:[31]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 52
sub.i.v
push.v self.x
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
push.v self.facespr
call.i draw_sprite_ext(argc=9)
popz.v

:[32]
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [end]

:[33]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 52
sub.i.v
push.v self.x
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2421
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]