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
pushi.e 4
pop.v.i self.dmg
pushglb.v global.hp
pushi.e 7
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
pop.v.i self.dmg

:[2]
push.d 0.5
pop.v.d self.image_speed
pushi.e 8
conv.i.v
call.i random(argc=1)
pushi.e 4
sub.i.v
pop.v.v self.vspeed

:[end]