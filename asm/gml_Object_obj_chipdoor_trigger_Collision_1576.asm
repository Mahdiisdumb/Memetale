.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [6]

:[1]
pushi.e -5
pushi.e 374
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[2]
pushi.e -5
pushi.e 375
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushglb.v global.plot
pushi.e 133
cmp.i.v LT
bf [6]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [15]

:[10]
pushi.e -5
pushi.e 399
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [15]

:[11]
pushi.e -5
pushi.e 400
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [15]

:[12]
pushglb.v global.plot
pushi.e 164
cmp.i.v LT
bf [15]

:[13]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushi.e 1
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]