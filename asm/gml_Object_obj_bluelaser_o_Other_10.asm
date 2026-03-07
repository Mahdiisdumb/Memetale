.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.check
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.v 1576.x
push.v 1576.xprevious
cmp.v.v EQ
bf [3]

:[2]
push.v 1576.y
push.v 1576.yprevious
cmp.v.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.check

:[6]
push.v self.blue
pushi.e 2
cmp.i.v EQ
bf [12]

:[7]
push.v 1576.x
push.v 1576.xprevious
cmp.v.v NEQ
bt [9]

:[8]
push.v 1576.y
push.v 1576.yprevious
cmp.v.v NEQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 0
pop.v.i self.check

:[12]
push.v self.check
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 20
pop.v.i global.border
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
pushi.e 2
pushi.e -5
pushi.e 370
pop.v.i [array]global.flag
pushbltn.v self.room
pushi.e 192
cmp.i.v EQ
bt [18]

:[17]
pushbltn.v self.room
pushi.e 193
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushi.e 3
pushi.e -5
pushi.e 370
pop.v.i [array]global.flag

:[21]
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 145
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i 1283.active
pushi.e 60
pushi.e 1283
pushi.e 0
pop.v.i [array]self.alarm

:[end]