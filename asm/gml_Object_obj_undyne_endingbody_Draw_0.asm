.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.goof
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
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
pushi.e 60
sub.i.v
push.v self.goof
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.s_i
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 60
sub.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 301
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
pushi.e 10
add.i.v
push.v self.x
pushi.e 4
sub.i.v
pushi.e 0
conv.i.v
pushi.e 311
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
push.v self.smooch
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
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
pushi.e 6
push.v self.y
add.v.i
pushi.e 50
sub.i.v
push.v self.x
push.v self.face
pushi.e 304
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.smooch
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v self.s_a
pushi.e -50
cmp.i.v GT
bf [6]

:[5]
push.v self.s_i
push.d 0.125
add.d.v
pop.v.v self.s_i
push.v self.s_a
push.d 0.5
sub.d.v
pop.v.v self.s_a

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.s_a
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
push.v self.y
add.v.i
pushi.e 50
sub.i.v
pushi.e 26
add.i.v
push.v self.s_i
add.v.v
push.v self.x
pushi.e 22
add.i.v
push.v self.s_i
pushi.e 2
mul.i.v
add.v.v
push.v self.s_i
call.i floor(argc=1)
pushi.e 2406
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.smooch
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.s_a
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
push.v self.y
add.v.i
pushi.e 50
sub.i.v
pushi.e 26
add.i.v
push.v self.s_i
add.v.v
push.v self.x
pushi.e 22
add.i.v
push.v self.s_i
pushi.e 2
mul.i.v
add.v.v
push.v self.s_i
call.i floor(argc=1)
pushi.e 2407
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
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
pushi.e 6
push.v self.y
add.v.i
pushi.e 50
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2436
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]