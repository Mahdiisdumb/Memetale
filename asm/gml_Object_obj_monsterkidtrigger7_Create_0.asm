.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 119
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.touched
pushi.e 10
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 11
cmp.i.v GTE
bf [4]

:[3]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 1
pop.v.i self.murder

:[end]