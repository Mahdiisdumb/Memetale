.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.ystart
push.v self.r
call.i random(argc=1)
add.v.v
push.v self.xstart
push.v self.r
call.i random(argc=1)
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.atk
pushi.e 3
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.facey
push.v self.r
call.i random(argc=1)
add.v.v
push.v self.facex
push.v self.r
call.i random(argc=1)
add.v.v
push.v self.image_index
pushi.e 273
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.r
pushi.e 2
cmp.i.v LT
bf [4]

:[3]
push.v self.r
push.d 0.01
add.d.v
pop.v.v self.r

:[4]
push.v self.atk
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e 0
pop.v.i self.r

:[6]
push.v self.facetime
pushi.e 1
add.i.v
pop.v.v self.facetime
push.v self.facetime
pushi.e 300
cmp.i.v GT
bf [8]

:[7]
push.v self.facex
push.v self.x
pushi.e 100
add.i.v
cmp.v.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.facex
push.d 0.01
add.d.v
pop.v.v self.facex

:[11]
push.v self.atk
pushi.e 3
cmp.i.v EQ
bf [end]

:[12]
push.v self.smuggy
pushi.e 100
cmp.i.v LT
bf [14]

:[13]
push.v self.smuggy
pushi.e 1
add.i.v
pop.v.v self.smuggy

:[14]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
add.i.v
push.v self.smuggy
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 268
conv.i.v
call.i scr_getsprite(argc=1)
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]