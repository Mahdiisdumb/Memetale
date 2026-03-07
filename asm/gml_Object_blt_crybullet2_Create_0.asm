.localvar 0 arguments

:[0]
pushi.e 684
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
push.d 0.5
pop.v.d self.gravity
pushi.e 90
pop.v.i self.gravity_direction
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 2
sub.i.v
pop.v.v self.hspeed
pushi.e 2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction
push.d 0.4
conv.d.v
call.i random(argc=1)
push.d 0.8
add.d.v
pop.v.v self.image_xscale
push.v self.image_xscale
pop.v.v self.image_yscale
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.disappear
pushi.e 0
pop.v.i self.outside

:[end]