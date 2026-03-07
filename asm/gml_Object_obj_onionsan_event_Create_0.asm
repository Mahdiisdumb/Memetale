.localvar 0 arguments

:[0]
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [2]

:[1]
pushi.e -1
pushi.e -5
pushi.e 496
pop.v.i [array]global.flag

:[2]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1079
conv.i.v
pushi.e 62
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.onion
pushi.e 0
pop.v.i self.tents
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.once
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [4]

:[3]
pushi.e -5
pushi.e 496
push.v [array]global.flag
pushi.e 7
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 7
pop.v.i self.con

:[end]