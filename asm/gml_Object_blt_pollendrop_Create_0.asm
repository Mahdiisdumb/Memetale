.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
push.d 1.5
pop.v.d self.hspeed
push.d 0.02
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.d 1.2
pop.v.d self.vspeed
pushi.e 6
conv.i.v
pushi.e 20
conv.i.v
pushi.e 126
conv.i.v
call.i script_execute(argc=3)
popz.v

:[end]