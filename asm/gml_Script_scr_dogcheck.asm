.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.dogcheck
pushglb.v global.currentroom
pushi.e 4
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.dogcheck

:[2]
pushglb.v global.currentroom
pushi.e 265
cmp.i.v GT
bf [4]

:[3]
pushi.e 0
pop.v.i self.dogcheck

:[4]
pushglb.v global.currentroom
pushi.e 240
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.dogcheck

:[6]
pushglb.v global.currentroom
pushi.e 241
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.dogcheck

:[8]
pushglb.v global.currentroom
pushi.e 239
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.dogcheck

:[10]
pushglb.v global.currentroom
pushi.e 78
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.dogcheck

:[12]
pushglb.v global.currentroom
pushi.e 79
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.dogcheck

:[14]
pushglb.v global.currentroom
pushi.e 80
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i self.dogcheck

:[16]
push.v self.dogcheck
pushi.e 0
cmp.i.v EQ
bf [end]

:[17]
pushi.e 326
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]