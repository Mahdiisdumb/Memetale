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
pushi.e 0
pop.v.i self.dmg
push.d 0.5
pop.v.d self.image_speed
push.d 2.5
conv.d.v
push.v 744.y
pushi.e 2
add.i.v
push.v 744.x
pushi.e 2
add.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 45
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]