.localvar 0 arguments

:[0]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[2]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v GT
bf [end]

:[3]
push.v 1412.shx
pushi.e 20
add.i.v
pop.v.v self.xx
pushi.e 36
pop.v.i self.yy
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v GT
bf [5]

:[4]
pushi.e 6
pop.v.i global.faceemotion

:[5]
push.v self.yy
push.v self.xx
push.v self.image_index
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.facespr
call.i draw_sprite(argc=4)
popz.v

:[end]