.localvar 0 arguments

:[0]
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
pushi.e 2408
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
push.v self.smooch
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
push.v self.face
pushi.e 828
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.smooch
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v self.smooch_ang
pushi.e -50
cmp.i.v GT
bf [6]

:[5]
push.v self.smooch_ang
push.d 0.5
sub.d.v
pop.v.v self.smooch_ang
push.v self.s_i
push.d 0.25
add.d.v
pop.v.v self.s_i

:[6]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.smooch_ang
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 44
add.i.v
push.v self.s_i
call.i floor(argc=1)
pushi.e 2409
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.smooch
pushi.e 2
cmp.i.v EQ
bf [11]

:[8]
push.v self.smooch_ang
pushi.e -50
cmp.i.v GT
bf [10]

:[9]
push.v self.smooch_ang
push.d 0.5
sub.d.v
pop.v.v self.smooch_ang
push.v self.s_i
push.d 0.25
add.d.v
pop.v.v self.s_i

:[10]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.smooch_ang
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 44
add.i.v
push.v self.s_i
call.i floor(argc=1)
pushi.e 2410
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]