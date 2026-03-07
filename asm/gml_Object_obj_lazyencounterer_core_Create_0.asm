.localvar 0 arguments

:[0]
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pop.v.i self.cl
pushi.e -5
pushi.e 423
push.v [array]global.flag
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushbltn.v self.room
pushi.e 209
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [7]

:[6]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]