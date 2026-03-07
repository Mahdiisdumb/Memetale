.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 100
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
pushi.e 0
pushi.e -5
pushi.e 68
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.conversation
pushi.e 999
pop.v.i self.image_yscale

:[3]
pushi.e 0
pop.v.i self.look
pushi.e 0
pop.v.i self.spinagain
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [5]

:[4]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushi.e 1
pop.v.i self.murder

:[end]