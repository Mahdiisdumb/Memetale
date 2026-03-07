.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.plot
pushi.e 108
cmp.i.v LT
bf [3]

:[2]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 108
pop.v.i global.plot

:[6]
pushbltn.v self.room
pushi.e 102
cmp.i.v EQ
bf [9]

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -5
pushi.e 356
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 1
pushi.e -5
pushi.e 356
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]