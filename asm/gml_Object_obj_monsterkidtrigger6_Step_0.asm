.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
push.v 1576.x
pushi.e 120
cmp.i.v GT
bf [8]

:[5]
push.v self.mkid
conv.v.i
pushenv [7]

:[6]
pushi.e 99
pop.v.i self.follow
pushi.e 4
conv.i.v
pushi.e 100
conv.i.v
pushi.e 320
conv.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.rsprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[7]
popenv [6]
pushi.e 1
pop.v.i self.con

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[9]
push.v self.mkid
conv.v.i
pushenv [11]

:[10]
push.v self.rsprite
pop.v.v self.sprite_index

:[11]
popenv [10]
push.v self.ganer
push.d 0.334
add.d.v
pop.v.v self.ganer
push.v self.mkid
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
push.v self.ganer
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.image_index

:[13]
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
pushi.e 316
cmp.i.v GTE
bf [19]

:[14]
push.v self.mkid
pop.v.v self.mkid2
pushi.e 1485
conv.i.v
push.v self.mkid2
conv.v.i
push.v [stacktop]self.y
push.v self.mkid2
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.mkid
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.mkid
conv.v.i
pushenv [16]

:[15]
pushi.e 1489
pop.v.i self.sprite_index

:[16]
popenv [15]
push.v self.mkid2
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
pushi.e 2
pop.v.i self.con

:[19]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
pushi.e 5
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [24]

:[22]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [29]

:[26]
push.v self.unbuffer
pushi.e 1
add.i.v
pop.v.v self.unbuffer
pushi.e 1576
pushenv [28]

:[27]
pushi.e 1
pop.v.i self.uncan

:[28]
popenv [27]
b [33]

:[29]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [33]

:[30]
pushi.e 0
pop.v.i self.unbuffer
pushi.e 1576
pushenv [32]

:[31]
pushi.e 0
pop.v.i self.uncan

:[32]
popenv [31]

:[33]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [37]

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [37]

:[35]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.unbuffer
pushi.e 4
cmp.i.v GTE
b [38]

:[37]
push.e 0

:[38]
bf [52]

:[39]
pushi.e 1576
pushenv [41]

:[40]
pushi.e 1
pop.v.i self.uncan

:[41]
popenv [40]
pushi.e 780
pushenv [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
popenv [42]
pushi.e 784
pushenv [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [44]
pushi.e 785
pushenv [47]

:[46]
call.i instance_destroy(argc=0)
popz.v

:[47]
popenv [46]
pushi.e 1
pop.v.i global.interact
push.v self.mkid
conv.v.i
pushenv [49]

:[48]
pushi.e 1
pop.v.i self.fun
pushi.e 0
conv.i.v
call.i scr_npc_watch(argc=1)
popz.v
push.d 0.25
pop.v.d self.image_speed

:[49]
popenv [48]
push.s "obj_monsterkidtrigger6_192"@18401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger6_193"@18403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_monsterkidtrigger6_195"@18405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[51]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[52]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [54]

:[53]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 5
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 112
pop.v.i global.plot
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 1488
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[57]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i global.phasing
pushi.e 1
pop.v.i global.interact
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.solid
pushi.e 1
pop.v.i 1576.facing
pushi.e 1
pop.v.i global.facing
push.d 0.25
pop.v.d 1576.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
sub.v.v
pop.v.v self.difx
push.v self.mkid
conv.v.i
push.v [stacktop]self.y
pushi.e 18
sub.i.v
push.v 1576.y
sub.v.v
pop.v.v self.dify
pushi.e 11
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[59]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [61]

:[60]
push.v 1576.x
push.v self.difx
pushi.e 10
conv.i.d
div.d.v
add.v.v
pop.v.v 1576.x
push.v 1576.y
push.v self.dify
pushi.e 10
conv.i.d
div.d.v
add.v.v
pop.v.v 1576.y

:[61]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [63]

:[62]
pushi.e 13
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 345
push.v 1576.x
sub.v.i
pop.v.v self.difx
pushi.e 70
push.v 1576.y
sub.v.i
pop.v.v self.dify

:[63]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [65]

:[64]
pushi.e 15
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [67]

:[66]
push.v 1576.x
push.v self.difx
pushi.e 10
conv.i.d
div.d.v
add.v.v
pop.v.v 1576.x
push.v 1576.y
push.v self.dify
pushi.e 10
conv.i.d
div.d.v
add.v.v
pop.v.v 1576.y

:[67]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [69]

:[68]
pushi.e 17
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i 1576.image_speed

:[69]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 19
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[71]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [78]

:[72]
pushi.e 1
pop.v.i self.side
push.v self.ledgewall
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 20
sub.i.v
pop.i.v [stacktop]self.x
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_monsterkidtrigger6_272"@18407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger6_273"@18409
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 9
cmp.i.v GTE
bf [74]

:[73]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.s "obj_monsterkidtrigger6_276"@18411
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger6_277"@18413
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[77]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 21
pop.v.i self.con
pushi.e 0
pop.v.i global.phasing

:[78]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [80]

:[79]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
pushi.e 180
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e -5
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 25
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[83]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [85]

:[84]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.334
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1480
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 49.2
pop.v.d self.con

:[85]
push.v self.con
push.d 49.2
cmp.d.v EQ
bf [88]

:[86]
push.v self.mkid
conv.v.i
push.v [stacktop]self.image_index
pushi.e 19
cmp.i.v GTE
bf [88]

:[87]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.mkid
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 13
sub.i.v
pop.i.v [stacktop]self.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 22
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[88]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [end]

:[89]
pushi.e -3
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 113
pop.v.i global.plot
pushi.e 10
pushi.e -5
pushi.e 91
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 24
pop.v.i self.con

:[end]