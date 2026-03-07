.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.angle
pushi.e 0
pop.v.i self.angleadd
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.image_speed
push.d 0.5
conv.d.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 45
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
push.d -0.25
pop.v.d self.friction
pushi.e 0
pop.v.i self.blue

:[end]