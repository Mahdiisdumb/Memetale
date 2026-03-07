.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.d 0.1
pop.v.d self.image_speed
pushi.e -5
pushi.e 25
push.v [array]global.flag
pushi.e 5
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.xed
pushi.e 0
pop.v.i self.last_skipbutton

:[end]