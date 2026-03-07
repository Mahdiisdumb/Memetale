.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 6
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 0
pushi.e -5
pushi.e 10
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 13
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.entrance
pushi.e 2
pop.v.i global.battlegroup
pushi.e -600
pop.v.i 1576.depth
pushi.e 143
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[6]
pushi.e 6
pop.v.i global.plot
pushi.e 0
pop.v.i self.myinteract

:[7]
pushi.e 117
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]