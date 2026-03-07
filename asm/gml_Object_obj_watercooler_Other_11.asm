.localvar 0 arguments

:[0]
push.v self.havewater
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
pushi.e -5
pushi.e 366
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.havewater
pushi.e 1576
pushenv [3]

:[2]
pushi.e 1125
pop.v.i self.dsprite
pushi.e 1123
pop.v.i self.rsprite
pushi.e 1124
pop.v.i self.usprite
pushi.e 1122
pop.v.i self.lsprite

:[3]
popenv [2]
b [end]

:[4]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 366
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.havewater
pushi.e 1576
pushenv [6]

:[5]
pushi.e 1131
pop.v.i self.dsprite
pushi.e 1133
pop.v.i self.rsprite
pushi.e 1132
pop.v.i self.usprite
pushi.e 1134
pop.v.i self.lsprite

:[6]
popenv [5]

:[end]