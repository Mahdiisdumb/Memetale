.localvar 0 arguments

:[0]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
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
pushi.e 152
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
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
pushi.e 153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
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
pushi.e 155
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [end]

:[7]
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
pushi.e 154
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]