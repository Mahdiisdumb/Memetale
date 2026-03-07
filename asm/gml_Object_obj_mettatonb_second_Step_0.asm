.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.talked

:[2]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [12]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [6]

:[5]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [9]

:[8]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[9]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [12]

:[11]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[12]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [20]

:[13]
push.v self.talked
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
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.talked

:[18]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.attacked
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 8
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

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [28]

:[23]
push.v self.dmgwriter
conv.v.i
pushenv [25]

:[24]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[25]
popenv [24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [27]

:[26]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.hurta
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [28]

:[27]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[28]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [32]

:[29]
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
pushenv [31]

:[30]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[31]
popenv [30]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[32]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [44]

:[33]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [44]

:[34]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.con

:[36]
push.v self.turns
pushi.e 1
cmp.i.v GT
bf [38]

:[37]
pushi.e -5
pushi.e 385
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 6
pop.v.i global.firingrate
pushi.e 698
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 90
pop.v.i global.turntimer

:[41]
push.v self.mypart1
conv.v.i
pushenv [43]

:[42]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[43]
popenv [42]
push.s "obj_mettatonb_second_542"@17232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.attacked
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[44]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [58]

:[45]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [58]

:[46]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [58]

:[47]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [51]

:[48]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_second_564"@17234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
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
pushenv [50]

:[49]
pushi.e 0
pop.v.i self.halt

:[50]
popenv [49]
pushi.e 9
pop.v.i self.whatiheard

:[51]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [57]

:[52]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_second_574"@17236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 385
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 2
pushi.e -5
pushi.e 385
pop.v.i [array]global.flag
push.s "obj_mettatonb_second_579"@17238
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 10
pop.v.i self.con

:[54]
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
pushenv [56]

:[55]
pushi.e 0
pop.v.i self.halt

:[56]
popenv [55]

:[57]
pushi.e 1
pop.v.i global.heard

:[58]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [61]

:[59]
push.v self.flex
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [62]

:[61]
push.e 0

:[62]
bf [65]

:[63]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
pushi.e -4
pop.v.i self.vspeed
pushi.e -4
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[65]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [69]

:[66]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [69]

:[67]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [69]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[69]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [71]

:[70]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [75]

:[73]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1365
conv.i.v
pushi.e 260
conv.i.v
pushi.e 500
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.phone
pushi.e 336
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 20
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -2
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[77]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [79]

:[78]
pushi.e 0
push.v self.phone
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[79]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [81]

:[80]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_second_640"@17240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 51
pop.v.i global.typer
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[81]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [83]

:[82]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
pushi.e 187
conv.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.y
push.v self.phone
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.shblcon
pushi.e 36
push.v self.shblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.shake
pushi.e 49
pop.v.i global.typer
push.s "obj_mettatonb_second_652"@17242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_second_653"@17244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonb_second_654"@17246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonb_second_655"@17248
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.y
pushi.e 140
sub.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.x
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.con

:[86]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [88]

:[87]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [93]

:[90]
push.s "obj_mettatonb_second_662"@17250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 385
pop.v.i [array]global.flag
push.v self.shblcon
conv.v.i
pushenv [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
popenv [91]
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i self.shake
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight

:[93]
push.v self.con
pushi.e 6
cmp.i.v GT
bf [99]

:[94]
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
push.v self.shblcon
call.i instance_exists(argc=1)
conv.v.b
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
push.v self.shblcon
conv.v.i
push.v [stacktop]self.xstart
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.shblcon
conv.v.i
pop.v.v [stacktop]self.x
push.v self.shblcon
conv.v.i
push.v [stacktop]self.ystart
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.shblcon
conv.v.i
pop.v.v [stacktop]self.y

:[99]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [101]

:[100]
pushi.e -1
pop.v.i 744.movement
pushi.e 12
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[101]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [103]

:[102]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushi.e 743
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ctheart
pushi.e -999
pop.v.i 744.x
pushi.e -1
pop.v.i 744.movement
pushi.e 14
pop.v.i self.con

:[103]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [105]

:[104]
pushi.e 187
conv.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.y
push.v self.phone
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.shblcon
pushi.e 36
push.v self.shblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.shake
pushi.e 49
pop.v.i global.typer
push.s "obj_mettatonb_second_703"@17252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.y
pushi.e 140
sub.i.v
push.v self.phone
conv.v.i
push.v [stacktop]self.x
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 16
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[105]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [109]

:[106]
pushglb.v global.hp
pushi.e 999
cmp.i.v GT
bf [108]

:[107]
pushi.e 300
pop.v.i global.turntimer
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 180
sub.i.v
push.v 744.x
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 180
sub.i.v
push.v 744.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 180
sub.i.v
push.v 744.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 180
sub.i.v
push.v 744.x
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 180
sub.i.v
push.v 744.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 180
sub.i.v
push.v 744.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 180
sub.i.v
push.v 744.x
pushi.e 60
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 220
sub.i.v
push.v 744.x
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 260
sub.i.v
push.v 744.x
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 220
sub.i.v
push.v 744.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 677
conv.i.v
push.v 744.y
pushi.e 220
sub.i.v
push.v 744.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i 677.vspeed
push.d -0.1
pop.v.d 677.friction
pushi.e 1
pop.v.i 677.dmg

:[108]
pushi.e 18
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[109]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [117]

:[110]
pushi.e 784
pushenv [112]

:[111]
call.i instance_destroy(argc=0)
popz.v

:[112]
popenv [111]
push.v self.shblcon
conv.v.i
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e 740
pushenv [116]

:[115]
call.i instance_destroy(argc=0)
popz.v

:[116]
popenv [115]
push.d 24.5
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[117]
push.v self.con
push.d 25.5
cmp.d.v EQ
bf [119]

:[118]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_second_746"@17254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_second_747"@17256
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonb_second_748"@17258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonb_second_749"@17260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 51
pop.v.i global.typer
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 26
pop.v.i self.con

:[119]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [121]

:[120]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
push.s "obj_mettatonb_second_757"@17262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 27
pop.v.i self.con
pushi.e -7
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hurta
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[124]
push.v self.con
pushi.e 27
cmp.i.v GTE
bf [127]

:[125]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [127]

:[126]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
pop.v.v 189.x
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 280
sub.i.v
pop.v.v 784.writingx

:[127]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [129]

:[128]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 29
pop.v.i self.con
pushi.e 13
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[129]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [end]

:[130]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]