.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.g
pushi.e 225
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
push.v 225.dogignore
pushi.e 2
cmp.i.v LTE
bf [3]

:[2]
pushi.e 250
conv.i.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
pushi.e 0
conv.i.v
call.i draw_self_custom_x(argc=4)
popz.v
pushi.e 1
pop.v.i self.g

:[3]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 44
push.v self.image_xscale
mul.v.i
add.v.v
pushi.e 250
push.v self.y
sub.v.i
push.v self.image_yscale
div.v.v
pushi.e 17
conv.i.v
pushi.e 0
conv.i.v
pushi.e 43
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]