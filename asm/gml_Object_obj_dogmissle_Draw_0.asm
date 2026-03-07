.localvar 0 arguments

:[0]
push.v self.x
pushi.e -10
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.anchor
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v 545.x
pushi.e 34
add.i.v
pop.v.v self.x
push.v 545.y
pushi.e 16
add.i.v
pop.v.v self.y
push.v self.off
pushi.e 2
sub.i.v
pop.v.v self.off
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.off
pushi.e 2
mul.i.v
add.v.v
push.v self.sprite_height
pushi.e 0
push.v self.off
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[4]
push.v self.anchor
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
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

:[end]