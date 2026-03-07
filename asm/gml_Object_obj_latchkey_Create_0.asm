.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 452
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushbltn.v self.room
pushi.e 222
cmp.i.v EQ
bf [6]

:[4]
pushi.e -5
pushi.e 453
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e 0
pop.v.i self.con

:[end]