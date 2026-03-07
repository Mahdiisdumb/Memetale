.localvar 0 arguments

:[0]
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pushi.e 129
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.xx
pop.v.v self.x
push.v self.yy
pop.v.v self.y
pushi.e 174
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
pushi.e 2
conv.i.v
pushi.e 128
conv.i.v
call.i script_execute(argc=11)
popz.v
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]