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
pushi.e 111
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.conversation
pushi.e 2
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
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m
push.d 0.05
push.v self.m
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 3
pop.v.i self.conversation

:[5]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [23]

:[6]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [8]

:[7]
pushglb.v global.maxhp
pop.v.v global.hp

:[8]
pushglb.v global.hp
pushi.e 36
cmp.i.v EQ
bf [10]

:[9]
pushi.e 38
pop.v.i global.hp

:[10]
pushglb.v global.hp
pushi.e 32
cmp.i.v EQ
bf [12]

:[11]
pushi.e 36
pop.v.i global.hp

:[12]
pushglb.v global.hp
pushi.e 28
cmp.i.v EQ
bf [14]

:[13]
pushi.e 34
pop.v.i global.hp

:[14]
pushglb.v global.hp
pushi.e 24
cmp.i.v EQ
bf [16]

:[15]
pushi.e 32
pop.v.i global.hp

:[16]
pushglb.v global.hp
pushi.e 20
cmp.i.v EQ
bf [18]

:[17]
pushi.e 30
pop.v.i global.hp

:[18]
pushi.e 0
pop.v.i global.msc
push.s "obj_townnpc_innlady_199"@28002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_innlady_200"@28004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 72
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_townnpc_innlady_203"@28006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[20]
pushi.e -5
pushi.e 72
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_townnpc_innlady_207"@28008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[22]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.conversation

:[23]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [25]

:[24]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [end]

:[27]
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pushi.e -5
pushi.e 73
pop.v.i [array]global.flag

:[end]