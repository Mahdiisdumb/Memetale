.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.ex
pushglb.v global.plot
pushi.e 25
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.ex

:[2]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.ex

:[4]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.ex

:[6]
push.v self.ex
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]