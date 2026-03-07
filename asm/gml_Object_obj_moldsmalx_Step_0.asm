.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.attacked

:[2]
call.i scr_blconmatch(argc=0)
popz.v
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 60
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[5]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [12]

:[6]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [9]

:[7]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [9]

:[8]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[12]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 16
pop.v.i self.shudder
pushglb.v global.damagetimer
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [20]

:[15]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterhp
push.v self.takedamage
sub.v.v
pop.i.v [array]global.monsterhp
push.v self.dmgwriter
conv.v.i
pushenv [17]

:[16]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[17]
popenv [16]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [19]

:[18]
pushi.e 0
pop.v.i self.visible
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.stage
push.v self.mypart1
conv.v.i
pop.v.v [stacktop]self.stage
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.image_index
push.d 0.01
pop.v.d self.scalevalue
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [20]

:[19]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [24]

:[21]
pushi.e 0
pop.v.i global.damage
pushi.e 190
conv.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 48
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 190
pushenv [23]

:[22]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[23]
popenv [22]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[24]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [84]

:[25]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [84]

:[26]
push.v self.stage
pushi.e 0
cmp.i.v EQ
bf [44]

:[27]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v LT
bf [29]

:[28]
pushi.e 10
pop.v.i global.turntimer

:[29]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [31]

:[30]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [32]

:[31]
push.e 0

:[32]
bf [38]

:[33]
pushi.e 90
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
pushglb.v global.firingrate
pushi.e 2
mul.i.v
pop.v.v global.firingrate

:[35]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
pushglb.v global.firingrate
push.d 1.5
mul.d.v
pop.v.v global.firingrate

:[37]
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype
b [43]

:[38]
pushi.e 90
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
pushi.e 2
mul.i.v
pop.v.v global.firingrate

:[40]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
pushglb.v global.firingrate
push.d 1.5
mul.d.v
pop.v.v global.firingrate

:[42]
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[43]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself

:[44]
push.v self.stage
pushi.e 1
cmp.i.v EQ
bf [59]

:[45]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [47]

:[46]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [48]

:[47]
push.e 0

:[48]
bf [54]

:[49]
pushi.e 180
pop.v.i global.turntimer
pushi.e 40
pop.v.i global.firingrate
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
push.v global.firingrate
push.d 1.1
mul.d.v
pop.v.v global.firingrate

:[51]
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
push.v global.firingrate
pushi.e 1
mul.i.v
pop.v.v global.firingrate

:[53]
pushi.e 694
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
b [59]

:[54]
pushi.e 180
pop.v.i global.turntimer
pushi.e 35
pop.v.i global.firingrate
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
pushi.e 34
pop.v.i global.firingrate

:[56]
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
push.v global.firingrate
push.d 0.6
mul.d.v
pop.v.v global.firingrate

:[58]
pushi.e 693
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[59]
push.v self.stage
pushi.e 0
cmp.i.v EQ
bf [70]

:[60]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [62]

:[61]
push.s "obj_moldsmalx_451"@18323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [64]

:[63]
push.s "obj_moldsmalx_452"@18325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [66]

:[65]
push.s "obj_moldsmalx_453"@18327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [68]

:[67]
push.s "obj_moldsmalx_454"@18329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 15
cmp.i.v LT
bf [70]

:[69]
push.s "obj_moldsmalx_455"@18331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
push.v self.stage
pushi.e 1
cmp.i.v EQ
bf [83]

:[71]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [73]

:[72]
push.s "obj_moldsmalx_459"@18333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [75]

:[74]
push.s "obj_moldsmalx_460"@18335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [77]

:[76]
push.s "obj_moldsmalx_461"@18337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [79]

:[78]
push.s "obj_moldsmalx_462"@18338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [81]

:[80]
push.s "obj_moldsmalx_463"@18340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [83]

:[82]
push.s "obj_moldsmalx_464"@18342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
pushi.e 1
pop.v.i self.attacked

:[84]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [123]

:[85]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [123]

:[86]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [123]

:[87]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [95]

:[88]
pushi.e 0
pop.v.i global.msc
push.v self.stage
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_moldsmalx_484"@18344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.stage
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_moldsmalx_486"@18346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
pushi.e 3
pop.v.i 784.halt
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [94]

:[93]
pushi.e 0
pop.v.i self.halt

:[94]
popenv [93]

:[95]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [103]

:[96]
pushi.e 0
pop.v.i global.msc
push.v self.stage
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_moldsmalx_495"@18348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[98]
push.v self.stage
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_moldsmalx_497"@18350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[100]
pushi.e 3
pop.v.i 784.halt
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [102]

:[101]
pushi.e 0
pop.v.i self.halt

:[102]
popenv [101]

:[103]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [114]

:[104]
pushi.e 0
pop.v.i global.msc
push.v self.stage
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_moldsmalx_510"@18352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[106]
push.v self.stage
pushi.e 1
cmp.i.v EQ
bf [111]

:[107]
push.s "obj_moldsmalx_513"@18354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.sp
pushi.e 3
cmp.i.v GT
bf [109]

:[108]
push.v global.sp
pushi.e 1
sub.i.v
pop.v.v global.sp

:[109]
pushi.e 257
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [111]

:[110]
pushi.e 1
pop.v.i 257.slime
pushi.e 0
pop.v.i 257.clean

:[111]
pushi.e 3
pop.v.i 784.halt
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [113]

:[112]
pushi.e 0
pop.v.i self.halt

:[113]
popenv [112]

:[114]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [122]

:[115]
pushi.e 0
pop.v.i global.msc
push.v self.stage
pushi.e 0
cmp.i.v EQ
bf [117]

:[116]
push.s "obj_moldsmalx_526"@18356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[117]
push.v self.stage
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
pushi.e 1
pushi.e -5
pushi.e 144
pop.v.i [array]global.flag
push.s "obj_moldsmalx_530"@18358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[119]
pushi.e 3
pop.v.i 784.halt
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [121]

:[120]
pushi.e 0
pop.v.i self.halt

:[121]
popenv [120]
pushi.e 200
pop.v.i self.mercymod

:[122]
pushi.e 1
pop.v.i global.heard

:[123]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[124]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[125]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[end]