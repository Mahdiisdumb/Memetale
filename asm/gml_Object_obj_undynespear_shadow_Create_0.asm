.localvar 0 arguments

:[0]
push.v 1576.x
pushi.e 7
add.i.v
pop.v.v self.goalx
push.v 1576.y
pushi.e 15
add.i.v
pop.v.v self.goaly
pushi.e 6
conv.i.v
push.v self.goaly
push.v self.goalx
call.i move_towards_point(argc=3)
popz.v
pushi.e 1
pop.v.i self.active
push.v self.direction
pop.v.v self.rot
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.r
push.v self.y
pushi.e 80
add.i.v
pop.v.v self.shadowy
push.v self.vspeed
push.d 1.5
div.d.v
pop.v.v self.shadowspeed

:[end]