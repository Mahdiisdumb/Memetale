.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_xscale
push.d 0.2
pop.v.d self.image_yscale
push.d 0.1
pop.v.d self.scaleadd
pushi.e 3
conv.i.v
push.v 744.y
pushi.e 6
add.i.v
push.v 744.x
pushi.e 6
add.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 8
pop.v.i self.dmg

:[end]