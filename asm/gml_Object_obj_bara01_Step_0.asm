.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.attacked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 701
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [14]

:[5]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
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
bf [8]

:[7]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[8]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
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
bf [11]

:[10]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[11]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [14]

:[12]
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
bf [14]

:[13]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[14]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 110
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

:[17]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [24]

:[18]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [21]

:[19]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [21]

:[20]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
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

:[26]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [32]

:[27]
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
pushenv [29]

:[28]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[29]
popenv [28]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [31]

:[30]
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [32]

:[31]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[32]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [36]

:[33]
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
pushenv [35]

:[34]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[35]
popenv [34]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[36]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [73]

:[37]
push.v 760.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [39]

:[38]
push.v 760.y
push.v 762.y
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v 744.y

:[39]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [73]

:[43]
pushi.e 180
pop.v.i global.turntimer
pushi.e 701
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [51]

:[44]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [46]

:[45]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 25
pop.v.i global.firingrate
pushi.e 701
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 8
push.v self.gen
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
b [50]

:[49]
pushi.e 20
pop.v.i global.firingrate
pushi.e 701
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 8
push.v self.gen
conv.v.i
pushi.e 1
pop.v.i [array]self.alarm

:[50]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself

:[51]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [53]

:[52]
push.s "obj_bara01_524"@10522
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [55]

:[54]
push.s "obj_bara01_525"@10524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [57]

:[56]
push.s "obj_bara01_526"@10526
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [59]

:[58]
push.s "obj_bara01_527"@10528
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_bara01_528"@10530
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [70]

:[62]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [64]

:[63]
push.s "obj_bara01_535"@10532
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [66]

:[65]
push.s "obj_bara01_536"@10534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [68]

:[67]
push.s "obj_bara01_537"@10536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [70]

:[69]
push.s "obj_bara01_538"@10538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [72]

:[71]
push.s "obj_bara01_542"@10540
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
pushi.e 1
pop.v.i self.attacked

:[73]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [96]

:[74]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [96]

:[75]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [96]

:[76]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [85]

:[77]
pushi.e 0
pop.v.i global.msc
push.s "obj_bara01_558"@10542
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [79]

:[78]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
push.s "obj_bara01_561"@10544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
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
pushenv [84]

:[83]
pushi.e 0
pop.v.i self.halt

:[84]
popenv [83]
pushi.e 9
pop.v.i self.whatiheard

:[85]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [89]

:[86]
pushi.e 0
pop.v.i global.msc
push.s "obj_bara01_571"@10546
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
pushenv [88]

:[87]
pushi.e 0
pop.v.i self.halt

:[88]
popenv [87]

:[89]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [95]

:[90]
pushi.e 0
pop.v.i global.msc
push.s "obj_bara01_581"@10548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
pushi.e 1
pop.v.i self.toldhim

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
pushi.e 1
pop.v.i global.heard

:[96]
push.v self.toldhim
pushi.e 1
cmp.i.v EQ
bf [102]

:[97]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
bf [102]

:[98]
pushglb.v global.turntimer
pushi.e 5
cmp.i.v LT
bf [102]

:[99]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [102]

:[100]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
call.i scr_monstersum(argc=0)
pushi.e 2
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
pushi.e -1
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.border
pushi.e -800
pop.v.i 744.x
pushi.e -1
pop.v.i 744.movement

:[105]
pushglb.v global.mnfight
pushi.e 5
cmp.i.v EQ
bf [187]

:[106]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
push.v self.toldhim
pushi.e 1
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[111]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [113]

:[112]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
add.v.v
pushi.e 28
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 2
pop.v.i global.typer
push.s "obj_bara01_615"@10550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_bara01_616"@10552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_bara01_617"@10554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_bara01_618"@10556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
pushi.e 3
pop.v.i self.con

:[113]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [115]

:[114]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [116]

:[115]
push.e 0

:[116]
bf [122]

:[117]
push.v self.mypart1
conv.v.i
pushenv [119]

:[118]
pushi.e 0
pop.v.i self.shaker

:[119]
popenv [118]
push.v self.blcon
conv.v.i
pushenv [121]

:[120]
call.i instance_destroy(argc=0)
popz.v

:[121]
popenv [120]
push.s "music/confession.ogg"@2701
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.conmusic
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
push.v self.conmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 2
pop.v.i global.typer
push.s "obj_bara01_632"@10558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_bara01_633"@10560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_bara01_634"@10562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_bara01_635"@10564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_bara01_636"@10566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_bara01_637"@10568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
pushi.e 50
add.i.v
call.i scr_blcon_x(argc=2)
popz.v

:[122]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [124]

:[123]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [129]

:[126]
push.v self.conmusic
call.i caster_pause(argc=1)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 311
pushenv [128]

:[127]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.v self.blcon
pop.v.v 310.blcon
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
push.s "obj_bara01_650"@10570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_bara01_651"@10572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer

:[128]
popenv [127]

:[129]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [131]

:[130]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [140]

:[133]
push.v self.mypart1
conv.v.i
pushenv [135]

:[134]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[135]
popenv [134]
push.v self.blcon
conv.v.i
pushenv [137]

:[136]
call.i instance_destroy(argc=0)
popz.v

:[137]
popenv [136]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
add.v.v
pushi.e 28
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 2
pop.v.i global.typer
push.s "obj_bara01_663"@10574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_bara01_664"@10576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_bara01_665"@10578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 401
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
push.s "obj_bara01_668"@10580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_bara01_669"@10582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_bara01_670"@10584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_bara01_671"@10586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[139]
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
pushi.e 6
pop.v.i self.con

:[140]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [142]

:[141]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [149]

:[144]
push.v self.blcon
conv.v.i
pushenv [146]

:[145]
call.i instance_destroy(argc=0)
popz.v

:[146]
popenv [145]
pushi.e 7
pop.v.i self.con
pushi.e 311
pushenv [148]

:[147]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.v self.blcon
pop.v.v 310.blcon
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
push.s "obj_bara01_687"@10588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer

:[148]
popenv [147]

:[149]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [151]

:[150]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [158]

:[153]
push.v self.mypart1
conv.v.i
pushenv [155]

:[154]
pushi.e 2
pop.v.i self.shaker

:[155]
popenv [154]
push.v self.blcon
conv.v.i
pushenv [157]

:[156]
call.i instance_destroy(argc=0)
popz.v

:[157]
popenv [156]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
add.v.v
pushi.e 28
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 2
pop.v.i global.typer
push.s "obj_bara01_699"@10590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
pushi.e 8
pop.v.i self.con

:[158]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [160]

:[159]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [161]

:[160]
push.e 0

:[161]
bf [169]

:[162]
push.v self.mypart1
conv.v.i
pushenv [164]

:[163]
pushi.e 0
pop.v.i self.shaker

:[164]
popenv [163]
push.v self.blcon
conv.v.i
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
pushi.e 9
pop.v.i self.con
pushi.e 311
pushenv [168]

:[167]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.v self.blcon
pop.v.v 310.blcon
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
push.s "obj_bara01_716"@10591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_bara01_717"@10593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_bara01_718"@10595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_bara01_719"@10597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer

:[168]
popenv [167]

:[169]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [171]

:[170]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [172]

:[171]
push.e 0

:[172]
bf [178]

:[173]
push.v self.mypart1
conv.v.i
pushenv [175]

:[174]
pushi.e 0
pop.v.i self.shaker

:[175]
popenv [174]
push.v self.blcon
conv.v.i
pushenv [177]

:[176]
call.i instance_destroy(argc=0)
popz.v

:[177]
popenv [176]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
add.v.v
pushi.e 28
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 2
pop.v.i global.typer
push.s "obj_bara01_731"@10599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_bara01_732"@10601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
pushi.e 10
pop.v.i self.con

:[178]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [180]

:[179]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [181]

:[180]
push.e 0

:[181]
bf [187]

:[182]
push.v self.blcon
conv.v.i
pushenv [184]

:[183]
call.i instance_destroy(argc=0)
popz.v

:[184]
popenv [183]
pushi.e 3
pop.v.i global.mnfight
pushi.e 11
pop.v.i self.con
pushi.e 999
pop.v.i self.mercymod
pushi.e -999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 311
pushenv [186]

:[185]
pushi.e 999
pop.v.i self.mercymod
pushi.e -999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[186]
popenv [185]
push.v self.conmusic
call.i caster_free(argc=1)
popz.v
push.s "obj_bara01_751"@10603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[187]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [191]

:[188]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [191]

:[189]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [191]

:[190]
call.i instance_destroy(argc=0)
popz.v

:[191]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [193]

:[192]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [194]

:[193]
push.e 0

:[194]
bf [end]

:[195]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[196]
call.i instance_destroy(argc=0)
popz.v

:[end]