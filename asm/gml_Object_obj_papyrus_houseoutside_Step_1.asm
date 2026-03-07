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
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 776.image_index
pop.v.v self.image_index
b [8]

:[3]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.path_speed
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_index

:[8]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 0
conv.i.v
call.i scr_npc_watch(argc=1)
popz.v

:[13]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.solid
pushi.e 1
pop.v.i global.phase

:[18]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [25]

:[19]
push.v 1576.bbox_top
push.v self.bbox_bottom
cmp.v.v LTE
bf [21]

:[20]
push.v 1576.bbox_left
push.v self.bbox_right
cmp.v.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 0
pop.v.i 1576.facing
pushi.e 0
pop.v.i global.facing
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 1
pop.v.i 1576.vspeed
b [25]

:[24]
push.v self.lsprite
pop.v.v self.sprite_index
pushi.e 3
pop.v.i 1576.facing
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 3
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
pushi.e -5
pop.v.i self.hspeed
push.v self.lsprite
pop.v.v self.sprite_index
push.d 0.5
pop.v.d self.image_speed
push.d 4.5
pop.v.d self.con
pushi.e 145
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[27]
push.v self.con
push.d 4.5
cmp.d.v EQ
bf [30]

:[28]
push.v 1576.bbox_left
push.v self.bbox_right
cmp.v.v GT
bf [30]

:[29]
pushi.e -5
pop.v.i 1576.hspeed
push.d 0.5
pop.v.d 1576.image_speed

:[30]
push.v self.con
push.d 5.5
cmp.d.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_index
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 5
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i self.hspeed
pushi.e 4
pop.v.i self.vspeed
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_index
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.facing
pushi.e 0
pop.v.i global.facing
pushi.e 7
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [37]

:[35]
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 5
pop.v.i self.hspeed
push.v self.bbox_left
push.v 1576.bbox_right
pushi.e 10
add.i.v
cmp.v.v GT
bf [37]

:[36]
pushi.e 5
pop.v.i 1576.hspeed
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i 1576.facing
push.d 0.5
pop.v.d 1576.image_speed
pushi.e 9
pop.v.i self.con
pushi.e 145
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[37]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i 1576.hspeed
push.v self.utsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i 1576.facing
pushi.e 2
pop.v.i global.facing
pushi.e 11
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[39]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [41]

:[40]
pushi.e 3
pop.v.i self.myinteract
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_papyrus_houseoutside_303"@20953
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
pop.v.v self.mydialoguer
pushi.e 13
pop.v.i self.con

:[41]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [43]

:[42]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e -6
pop.v.i self.vspeed
push.v self.usprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 14
pop.v.i self.con
pushi.e 7
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[46]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [end]

:[47]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 440
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 2
pushi.e -5
pushi.e 88
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v
pushi.e 1
pop.v.i 1433.dooract

:[end]