.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1576
pushenv [4]

:[2]
push.v self.rsprite
pushi.e 1133
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1116
pop.v.i self.rsprite
pushi.e 1117
pop.v.i self.lsprite
pushi.e 1119
pop.v.i self.dsprite
pushi.e 1118
pop.v.i self.usprite

:[4]
popenv [2]

:[end]