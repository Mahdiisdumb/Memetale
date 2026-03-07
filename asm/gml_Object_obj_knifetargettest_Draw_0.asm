.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.myscore
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.myscore
pushi.e 400
cmp.i.v GT
bf [2]

:[1]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "critical  hit!"@49919
conv.s.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v

:[2]
push.v self.myscore
pushi.e 430
cmp.i.v GT
bf [end]

:[3]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "CRITICAL HIT!!!"@49920
conv.s.v
pushi.e 200
conv.i.v
pushi.e 200
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]