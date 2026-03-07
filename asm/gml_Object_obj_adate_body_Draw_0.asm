.localvar 0 arguments

:[0]
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.shaker
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
push.v self.shaker
add.v.v
pushi.e 0
conv.i.v
pushi.e 830
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.set
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
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
push.v self.shaker
add.v.v
pushglb.v global.faceemotion
pushi.e 828
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.set
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
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
push.v self.shaker
add.v.v
pushglb.v global.faceemotion
pushi.e 829
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

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
pushi.e 8
sub.i.v
push.v self.shaker
add.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 831
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.item
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
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
pushi.e 68
add.i.v
push.v self.x
push.v self.aa
pushi.e 827
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
pushi.e 10
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]