.localvar 0 arguments

:[0]
push.d 0.9
pop.v.d self.image_xscale
push.d 0.8
pop.v.d self.image_alpha
pushi.e 130
conv.i.v
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e 130
conv.i.v
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 6
conv.i.d
div.d.v
pop.v.v self.speed
push.v self.direction
pop.v.v self.image_angle
pushi.e 5
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.part

:[end]