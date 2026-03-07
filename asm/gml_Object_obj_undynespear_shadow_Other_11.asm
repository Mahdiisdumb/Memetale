.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.border
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 370
pop.v.i [array]global.flag
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 145
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i 1044.active
pushi.e 1047
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1047
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 30
add.i.v
pop.i.v [array]self.alarm

:[end]