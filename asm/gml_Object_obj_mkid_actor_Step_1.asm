.localvar 0 arguments

:[0]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
push.v self.follow
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
call.i scr_npc_anim(argc=0)
popz.v

:[4]
push.v self.follow
pushi.e 1
cmp.i.v EQ
bf [16]

:[5]
push.v 1576.y
pushi.e 8
add.i.v
pop.v.v self.tmp_idealy
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
bf [7]

:[6]
push.v 1576.y
pushi.e 142
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v 1576.y
pushi.e 2
sub.i.v
pop.v.v self.tmp_idealy

:[10]
pushbltn.v self.room
pushi.e 107
cmp.i.v EQ
bf [12]

:[11]
push.v 1576.y
pushi.e 906
cmp.i.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v 1576.y
pushi.e 2
sub.i.v
pop.v.v self.tmp_idealy

:[15]
pushi.e 2
conv.i.v
push.v self.tmp_idealy
push.v 1576.x
pushi.e 6
sub.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.follow

:[16]
push.v self.follow
pushi.e 2
cmp.i.v EQ
bf [19]

:[17]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.object_index
push.v 1576.y
pushi.e 28
add.i.v
push.v 1576.x
pushi.e 6
sub.i.v
call.i collision_point(argc=5)
conv.v.b
bf [19]

:[18]
pushi.e 0
pop.v.i self.speed
pushi.e 3
pop.v.i self.follow

:[19]
push.v self.follow
push.d 2.1
cmp.d.v EQ
bf [32]

:[20]
push.d 0.25
pop.v.d self.image_speed
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.done
push.v self.sprite_index
push.v self.rsprite
cmp.v.v EQ
bt [22]

:[21]
push.v self.sprite_index
push.v self.usprite
cmp.v.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushi.e 4
conv.i.v
push.v 1576.y
pushi.e 8
add.i.v
push.v 1576.x
pushi.e 2
sub.i.v
call.i move_towards_point(argc=3)
popz.v

:[25]
push.v self.sprite_index
push.v self.lsprite
cmp.v.v EQ
bf [27]

:[26]
pushi.e 4
conv.i.v
push.v 1576.y
pushi.e 8
add.i.v
push.v 1576.x
pushi.e 6
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[27]
push.v self.sprite_index
push.v self.dsprite
cmp.v.v EQ
bf [29]

:[28]
pushi.e 4
conv.i.v
push.v 1576.y
pushi.e 12
sub.i.v
push.v 1576.x
call.i move_towards_point(argc=3)
popz.v

:[29]
pushi.e 4
conv.i.v
push.v 1576.y
push.v 1576.x
call.i move_towards_point(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.object_index
push.v 1576.bbox_bottom
pushi.e 4
add.i.v
push.v 1576.bbox_right
pushi.e 4
add.i.v
push.v 1576.bbox_top
pushi.e 4
sub.i.v
push.v 1576.bbox_left
pushi.e 6
sub.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [31]

:[30]
pushi.e 0
pop.v.i self.speed
pushi.e 3
pop.v.i self.follow

:[31]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[32]
pushi.e 0
pop.v.i self.alcovecheck
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
bf [34]

:[33]
push.v 1576.y
pushi.e 100
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 1
pop.v.i self.alcovecheck
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v self.usprite
pop.v.v self.sprite_index

:[37]
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
bf [39]

:[38]
push.v self.y
pushi.e 156
cmp.i.v GT
b [40]

:[39]
push.e 0

:[40]
bf [44]

:[41]
push.v 1576.x
pushi.e 1518
cmp.i.v GT
bf [44]

:[42]
push.v self.x
pushi.e 1520
cmp.i.v LT
bf [44]

:[43]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[44]
push.v self.follow
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
push.v self.alcovecheck
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [60]

:[48]
push.v 1576.moving
pushi.e 1
cmp.i.v EQ
bf [58]

:[49]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 12
cmp.i.v GT
bf [51]

:[50]
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.follow

:[51]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 4
cmp.i.v GT
bt [53]

:[52]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 0
cmp.i.v LT
b [54]

:[53]
push.e 1

:[54]
bf [57]

:[55]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 10
cmp.i.v LT
bf [57]

:[56]
pushi.e 1
pop.v.i self.closemove

:[57]
b [59]

:[58]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[59]
pushglb.v global.facing
pop.v.v self.facing2

:[60]
push.v self.follow
pushi.e 5
cmp.i.v EQ
bf [62]

:[61]
pushi.e 1
conv.i.v
call.i scr_npc_watch(argc=1)
popz.v
pushi.e 6
pop.v.i self.follow
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[62]
push.v self.follow
pushi.e 7
cmp.i.v EQ
bf [64]

:[63]
push.d 2.1
pop.v.d self.follow

:[64]
push.v self.follow
pushi.e 8
cmp.i.v EQ
bf [66]

:[65]
push.v self.rtsprite
pop.v.v self.sprite_index

:[66]
push.v self.follow
pushi.e 9
cmp.i.v EQ
bf [69]

:[67]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
pushi.e 1
pop.v.i global.interact
pushi.e 0
conv.i.v
call.i scr_npc_watch(argc=1)
popz.v
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.d 9.1
pop.v.d self.follow

:[69]
push.v self.follow
push.d 10.1
cmp.d.v EQ
bf [71]

:[70]
pushi.e 0
pop.v.i global.facechoice
push.s "obj_mkid_actor_337"@18131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mkid_actor_338"@18133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mkid_actor_339"@18135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mkid_actor_340"@18137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mkid_actor_341"@18139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mkid_actor_342"@18141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mkid_actor_343"@18143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 780
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 10
pop.v.i self.follow

:[71]
push.v self.follow
pushi.e 10
cmp.i.v EQ
bf [73]

:[72]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i global.interact
push.d 2.1
pop.v.d self.follow

:[76]
push.v self.follow
pushi.e 99
cmp.i.v EQ
bf [88]

:[77]
push.v 1576.moving
pushi.e 1
cmp.i.v EQ
bf [87]

:[78]
push.v self.x
push.v 1576.x
push.v 1576.xprevious
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v 1576.y
push.v 1576.yprevious
sub.v.v
add.v.v
pop.v.v self.y
pushglb.v global.facing
pop.v.v self.facing
push.v 1576.image_speed
pop.v.v self.image_speed
push.v self.facing
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.v self.dsprite
pop.v.v self.sprite_index

:[80]
push.v self.facing
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.v self.rsprite
pop.v.v self.sprite_index

:[82]
push.v self.facing
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
push.v self.usprite
pop.v.v self.sprite_index

:[84]
push.v self.facing
pushi.e 3
cmp.i.v EQ
bf [86]

:[85]
push.v self.lsprite
pop.v.v self.sprite_index

:[86]
b [88]

:[87]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[88]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[89]
push.v 1576.x
pop.v.v self.xfer
push.v 1576.y
pop.v.v self.yfer

:[end]