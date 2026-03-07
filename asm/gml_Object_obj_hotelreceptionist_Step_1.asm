.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
call.i scr_npc_anim(argc=0)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [15]

:[4]
pushglb.v global.maxhp
pop.v.v global.hp
pushglb.v global.lv
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 30
pop.v.i global.hp

:[6]
pushglb.v global.lv
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 32
pop.v.i global.hp

:[8]
pushglb.v global.lv
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 34
pop.v.i global.hp

:[10]
pushglb.v global.lv
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 36
pop.v.i global.hp

:[12]
pushglb.v global.lv
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e 38
pop.v.i global.hp

:[14]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[15]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i global.interact

:[17]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[18]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i global.entrance
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 186
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]