.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract

:[2]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [8]

:[3]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i global.interact

:[15]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [22]

:[16]
pushglb.v global.facing
pop.v.v self.rface
push.v 1576.x
push.v self.x
cmp.v.v LT
bf [18]

:[17]
push.v 1576.y
push.v self.y
pushi.e 15
add.i.v
cmp.v.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 0
pop.v.i global.facing
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 3
pop.v.i 1576.vspeed
push.d 2.9
pop.v.d self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [22]

:[21]
push.d 3.9
pop.v.d self.con

:[22]
push.v self.con
push.d 3.9
cmp.d.v EQ
bf [24]

:[23]
push.v self.rface
pop.v.v global.facing
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.vspeed
push.v self.lsprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -3
pop.v.i self.hspeed
pushi.e 4
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
pushi.e 3
pop.v.i global.facing
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v
pushi.e 6
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [28]

:[27]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i global.facechoice
push.s "obj_sans_prefinaldate_297"@23667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i self.m1
pushi.e 0
pop.v.i self.m2

:[28]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [30]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [40]

:[32]
push.v self.m1
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.lsprite
pop.v.v self.sprite_index
pushi.e -3
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e -3
pop.v.i 1576.hspeed
pushi.e 3
pop.v.i global.facing
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 1
pop.v.i self.m1
pushi.e 1
pop.v.i self.m2

:[34]
push.v self.m1
pushi.e 1
cmp.i.v EQ
bf [37]

:[35]
push.v self.x
pushi.e 53
cmp.i.v LTE
bf [37]

:[36]
pushi.e 50
pop.v.i self.x
pushi.e -3
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 2
pop.v.i self.m1

:[37]
push.v self.m2
pushi.e 1
cmp.i.v EQ
bf [40]

:[38]
push.v 1576.x
pushi.e 53
cmp.i.v LTE
bf [40]

:[39]
pushi.e 50
pop.v.i 1576.x
pushi.e -3
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 2
pop.v.i global.facing
pushi.e 2
pop.v.i self.m2
pushi.e 13
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [end]

:[41]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 15
pop.v.i self.con

:[end]