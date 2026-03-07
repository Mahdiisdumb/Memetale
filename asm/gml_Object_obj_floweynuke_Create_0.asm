.localvar 0 arguments

:[0]
pushi.e 8
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 24
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
call.i move_snap(argc=2)
popz.v
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.fader

:[end]