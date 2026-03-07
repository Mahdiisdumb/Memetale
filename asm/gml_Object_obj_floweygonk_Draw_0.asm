.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.s_i
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
push.v self.s_i
pushi.e 5
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.s_i
push.d 0.334
add.d.v
pop.v.v self.s_i
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 1.5
conv.d.v
push.d 1.5
conv.d.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 20
add.i.v
push.v self.s_i
pushi.e 781
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]