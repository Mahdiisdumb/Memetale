.localvar 0 arguments

:[0]
push.v self.laugh
pushi.e 0
cmp.i.v EQ
bf [25]

:[1]
push.v self.neut
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.neut
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.drawface
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushglb.v global.faceemotion
pushi.e 2416
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.image_index
pushi.e 8
cmp.i.v GTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.drawface

:[12]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [25]

:[13]
push.v self.neut
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 647
pop.v.i self.sprite_index

:[15]
push.v self.neut
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 671
pop.v.i self.sprite_index

:[17]
pushi.e 0
pop.v.i self.drawface
push.d -0.5
pop.v.d self.image_speed
push.v self.image_index
pushi.e 1
cmp.i.v LT
bf [25]

:[18]
push.v self.spec
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.v self.y
pushi.e 80
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 180
add.i.v
pop.v.v self.x

:[20]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 100
pop.v.i self.x

:[22]
push.v self.spec
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
push.v self.ystart
pushi.e 40
add.i.v
pop.v.v self.y
push.v self.xstart
pushi.e 110
add.i.v
pop.v.v self.x

:[24]
pushi.e 0
pop.v.i self.con
push.d 0.5
pop.v.d self.image_speed

:[25]
push.v self.laugh
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.li
pushi.e 1
add.i.v
pop.v.v self.li
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.li
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 196
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[27]
push.v self.laugh
pushi.e 2
cmp.i.v EQ
bf [end]

:[28]
push.v self.li
pushi.e 1
add.i.v
pop.v.v self.li
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 196
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]