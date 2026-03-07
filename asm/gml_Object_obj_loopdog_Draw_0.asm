.localvar 0 arguments

:[0]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[3]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[end]