.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 2
pop.v.i self.vspeed
pushi.e 20
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 10
conv.i.v
pushi.e 6
conv.i.v
pushi.e 126
conv.i.v
call.i script_execute(argc=3)
popz.v

:[end]