.localvar 0 arguments

:[0]
push.d 2.8729472348937296E+20
pop.v.d self.subject
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e 1095
pop.v.i 1576.usprite
pushi.e 1096
pop.v.i 1576.rsprite
pushi.e 1093
pop.v.i 1576.dsprite
pushi.e 1097
pop.v.i 1576.lsprite
pushi.e 1576
pop.v.i self.subject

:[end]