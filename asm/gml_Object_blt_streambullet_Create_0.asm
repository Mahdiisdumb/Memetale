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
push.d 0.2
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 2
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.speed
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.dropdown
pushi.e 0
pop.v.i self.dmg
push.d 0.4
pop.v.d self.hspeed
pushi.e 0
pop.v.i self.rbord
pushi.e 0
pop.v.i self.damageable

:[end]