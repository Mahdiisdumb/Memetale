.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 1
conv.i.v
push.v 744.y
push.v 744.x
call.i move_towards_point(argc=3)
popz.v
pushi.e 0
pop.v.i self.currentdir
pushi.e 6
pop.v.i self.dirspeed
pushi.e 1
pop.v.i self.speed
push.d -0.1
pop.v.d self.friction
pushi.e 90
pop.v.i self.juice
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.noboom
pushi.e 0
pop.v.i self.defeat
pushi.e 0
pop.v.i self.create
pushi.e 0
pop.v.i self.destroy
pushi.e 0
pop.v.i self.normal

:[end]