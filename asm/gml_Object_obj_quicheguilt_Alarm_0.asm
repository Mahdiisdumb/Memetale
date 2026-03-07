.localvar 0 arguments

:[0]
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushglb.v global.inbattle
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.nowroom
pushbltn.v self.room
cmp.v.v NEQ
bf [5]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
pushi.e -5
pushi.e 17
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
push.v self.qtimer
pushi.e 1
add.i.v
pop.v.v self.qtimer
push.v self.qtimer
pushi.e 90
cmp.i.v GT
bf [end]

:[8]
pushi.e 1
pop.v.i self.guilt
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]