.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [2]

:[1]
pushi.e 27
conv.i.v
pushi.e 44
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1024
conv.i.v
call.i scr_getsprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[2]
pushi.e 58
conv.i.v
pushi.e 43
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1021
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 58
conv.i.v
pushi.e 54
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1020
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 55
conv.i.v
pushi.e 70
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1019
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 58
conv.i.v
pushi.e 81
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1022
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 55
conv.i.v
pushi.e 97
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1023
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]