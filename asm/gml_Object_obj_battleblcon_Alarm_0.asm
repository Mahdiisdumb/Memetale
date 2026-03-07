.localvar 0 arguments

:[0]
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
pushi.e -600
pop.v.i 1576.depth
pushi.e 1
pop.v.i self.battle
pushbltn.v self.room
pushi.e 220
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.battle

:[2]
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.battle

:[4]
pushbltn.v self.room
pushi.e 222
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.battle

:[6]
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.battle

:[8]
push.v self.battle
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
pushi.e 143
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[11]
push.v self.battle
pushi.e 2
cmp.i.v EQ
bf [14]

:[12]
pushi.e 146
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 146
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]