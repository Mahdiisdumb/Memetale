.localvar 0 arguments

:[0]
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
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
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
pushi.e 40
add.i.v
push.v self.face
pushi.e 808
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
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
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2428
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]