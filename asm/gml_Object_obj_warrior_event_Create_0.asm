.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 205
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushi.e -5
pushi.e 419
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
pushi.e -5
pushi.e 7
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

:[end]