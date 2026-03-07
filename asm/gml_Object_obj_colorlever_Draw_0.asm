.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.red
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushi.e 2214
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[3]
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
push.v self.anim
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2218
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
push.v self.blu
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushi.e 2216
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[8]
push.v self.blu
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
push.v self.anim
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2219
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[10]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [15]

:[11]
push.v self.gre
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushi.e 2215
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[13]
push.v self.gre
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
push.v self.anim
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2220
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[15]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [end]

:[16]
push.v self.yel
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushi.e 2217
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[18]
push.v self.yel
pushi.e 1
cmp.i.v EQ
bf [end]

:[19]
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
push.v self.anim
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2221
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]