.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 36
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bt [3]

:[1]
pushi.e -5
pushi.e 202
push.v [array]global.flag
pushi.e 15
cmp.i.v GT
bt [3]

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.talkedto

:[end]