.localvar 0 arguments

:[0]
push.v self.normal
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
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
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 126
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.create
pushi.e 6
cmp.i.v LT
bf [5]

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 6
push.v self.create
sub.v.i
pushi.e 127
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.create
pushi.e 1
add.i.v
pop.v.v self.create
push.v self.create
pushi.e 6
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.normal

:[5]
push.v self.destroy
pushi.e 1
cmp.i.v GTE
bf [end]

:[6]
push.v self.x
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.y
push.v self.destroy
pushi.e 2
cmp.i.v GTE
bf [8]

:[7]
push.v self.image_xscale
push.d 0.25
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.25
add.d.v
pop.v.v self.image_yscale

:[8]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.destroy
pushi.e 1
sub.i.v
pushi.e 127
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.destroy
pushi.e 1
add.i.v
pop.v.v self.destroy
push.v self.destroy
pushi.e 8
cmp.i.v GTE
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]