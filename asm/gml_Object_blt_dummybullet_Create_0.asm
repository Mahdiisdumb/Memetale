.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.side
pushi.e 2
conv.i.v
push.v 744.y
push.v 744.x
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.angel
push.d 0.001
pop.v.d self.speed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.part
pushi.e 0
pop.v.i self.visible
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]