.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.size
pushi.e 0
pop.v.i self.anim
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.animchoice
push.d 0.25
pop.v.d self.animspeed
push.v self.animchoice
pop.v.v self.anim
push.d 0.5
pop.v.d self.image_speed
push.v self.y
pushi.e 20
sub.i.v
pop.v.v self.y
push.v self.x
pushi.e 10
sub.i.v
pop.v.v self.x
call.i instance_destroy(argc=0)
popz.v

:[end]