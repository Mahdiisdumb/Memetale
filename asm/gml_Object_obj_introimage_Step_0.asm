.localvar 0 arguments

:[0]
push.v self.act
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [end]

:[2]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1
pop.v.i self.skip
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fader
push.d 0.05
push.v self.fader
conv.v.i
pop.v.d [stacktop]self.tspeed
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 784
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[end]