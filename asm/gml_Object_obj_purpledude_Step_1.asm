.localvar 0 arguments

:[0]
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
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.phasing
pushi.e 3
pop.v.i 1576.vspeed
pushi.e 4
pop.v.i self.con

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [12]

:[10]
push.v 1576.y
push.v self.y
pushi.e 10
sub.i.v
cmp.v.v GT
bf [12]

:[11]
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 5
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1086
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.pil
pushi.e 7
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i 1576.visible
pushi.e 9
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [18]

:[17]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 11
pop.v.i self.con
pushi.e 24
pop.v.i global.entrance
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [24]

:[19]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushbltn.v self.room
pushi.e 93
cmp.i.v EQ
bf [21]

:[20]
pushi.e 91
conv.i.v
call.i room_goto(argc=1)
popz.v

:[21]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [23]

:[22]
pushi.e 93
conv.i.v
call.i room_goto(argc=1)
popz.v

:[23]
pushi.e 13
pop.v.i self.con

:[24]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [26]

:[25]
pushi.e 21
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i 1576.visible
push.v self.x
pop.v.v 1576.x
push.v self.y
pushi.e 8
sub.i.v
pop.v.v 1576.y

:[28]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1086
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.pil
pushi.e 23
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i 1576.visible
pushi.e 1
pop.v.i self.visible
pushi.e 25
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i global.phasing
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 2
pop.v.i global.facing
pushi.e -3
pop.v.i 1576.vspeed
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 27
pop.v.i self.con

:[34]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 29
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.phasing

:[36]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_purpledude_249"@21767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_purpledude_250"@21769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v global.gold
pushi.e 3
add.i.v
pop.v.v global.gold
pushi.e 0
pop.v.i global.msc
call.i scr_regulartext(argc=0)
popz.v
pushi.e 31
pop.v.i self.con

:[38]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [40]

:[39]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [end]

:[42]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con

:[end]