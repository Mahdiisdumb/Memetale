.localvar 0 arguments

:[0]
pushi.e 6
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.con
pushi.e 205
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushglb.v global.plot
pushi.e 178
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]