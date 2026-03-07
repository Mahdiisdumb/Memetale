.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1134
conv.i.v
pushi.e 70
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.nap
pushi.e 4
pop.v.i self.image_xscale
pushi.e -5
pushi.e 93
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e 20
pop.v.i self.y

:[6]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.wavein
b [end]

:[7]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]