.localvar 0 arguments

:[0]
pushi.e 205
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushi.e 6
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [3]

:[1]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
pushglb.v global.plot
pushi.e 198
cmp.i.v GT
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[6]
pushi.e -5
pushi.e 417
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[8]
pushi.e 1
pop.v.i self.con

:[end]