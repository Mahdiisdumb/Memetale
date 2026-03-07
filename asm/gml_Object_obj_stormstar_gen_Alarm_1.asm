.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.active
pushi.e 583
conv.i.v
pushi.e -170
conv.i.v
pushi.e 830
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bg
push.v self.h_mode
push.v self.bg
conv.v.i
pop.v.v [stacktop]self.h_mode
pushi.e 1
push.v self.bg
conv.v.i
pop.v.i [stacktop]self.big
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 20
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]