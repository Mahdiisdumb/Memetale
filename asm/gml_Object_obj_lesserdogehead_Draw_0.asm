.localvar 0 arguments

:[0]
push.v self.tailobj
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[1]
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pushi.e 900
conv.i.d
div.d.v
pop.v.v self.image_speed
push.v self.image_speed
push.d 0.5
cmp.d.v GT
bf [3]

:[2]
push.d 0.5
pop.v.d self.image_speed

:[3]
push.v self.tailobj
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
push.v self.tailobj
conv.v.i
push.v [stacktop]self.y
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pushi.e 4
conv.i.d
div.d.v
sub.v.v
pop.v.v self.y
push.v self.tailobj
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e 216
cmp.i.v EQ
bf [7]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 79
push.v self.y
add.v.i
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 81
add.i.v
pushi.e 79
push.v self.y
add.v.i
push.v self.x
pushi.e 44
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 98
push.v self.y
add.v.i
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 76
add.i.v
pushi.e 79
push.v self.y
add.v.i
push.v self.x
pushi.e 54
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pushi.e 500
cmp.i.v GT
bf [6]

:[5]
pushi.e -1
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pushi.e 500
sub.i.v
pushi.e 4
conv.i.d
div.d.v
add.v.i
pushi.e 40
sub.i.v
push.v self.x
pushi.e 152
add.i.v
pushi.e -1
conv.i.v
push.v self.x
pushi.e 116
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pushi.e 500
sub.i.v
pushi.e 4
conv.i.d
div.d.v
pushi.e 40
add.i.v
push.v self.x
pushi.e 196
add.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pop.v.v self.thismercy

:[7]
b [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]