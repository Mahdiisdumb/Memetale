.localvar 0 arguments

:[0]
push.v self.type
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
push.v self.x
pushi.e -5
pushi.e 20
push.v [array]global.flag
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.type
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
push.v self.x
pushglb.v global.faceemotion
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]