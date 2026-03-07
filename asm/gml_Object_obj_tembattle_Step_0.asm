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
bf [15]

:[13]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
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

:[15]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [22]

:[16]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [19]

:[17]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [19]

:[18]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
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

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [30]

:[25]
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
pushenv [27]

:[26]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[27]
popenv [26]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [29]

:[28]
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [30]

:[29]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[30]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [34]

:[31]
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
pushenv [33]

:[32]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[33]
popenv [32]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[34]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [63]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [63]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.mypart1
conv.v.i
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 160
pop.v.i global.turntimer
pushi.e 25
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 2.4
mul.d.v
pop.v.v global.firingrate

:[40]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
pushglb.v global.firingrate
push.d 1.7
mul.d.v
pop.v.v global.firingrate

:[42]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [44]

:[43]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 200
pop.v.i global.turntimer
pushi.e 673
conv.i.v
push.v self.y
pushi.e 96
add.i.v
push.v self.x
pushi.e 24
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
b [48]

:[47]
pushi.e 4
pop.v.i global.firingrate
pushi.e 664
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 80
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[48]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_tembattle_504"@26965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_tembattle_505"@26967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_tembattle_506"@26969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [56]

:[55]
push.s "obj_tembattle_507"@26971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.mycommand
pushi.e 83
cmp.i.v GTE
bf [58]

:[57]
push.s "obj_tembattle_508"@26973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_tembattle_509"@26975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 3
cmp.i.v LT
bf [62]

:[61]
push.s "obj_tembattle_511"@26977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
pushi.e 1
pop.v.i self.attacked

:[63]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [106]

:[64]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [106]

:[65]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [106]

:[66]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [70]

:[67]
pushi.e 0
pop.v.i global.msc
push.s "obj_tembattle_527"@26979
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
pushenv [69]

:[68]
pushi.e 0
pop.v.i self.halt

:[69]
popenv [68]
pushi.e 9
pop.v.i self.whatiheard

:[70]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [76]

:[71]
pushi.e 22
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 0
cmp.i.v EQ
bf [75]

:[72]
pushi.e 0
pop.v.i global.msc
push.s "obj_tembattle_539"@26981
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
pushenv [74]

:[73]
pushi.e 0
pop.v.i self.halt

:[74]
popenv [73]
b [76]

:[75]
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i global.myfight
pushi.e 6
pop.v.i global.bmenuno
push.s "obj_tembattle_550"@26983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i 784.halt
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii

:[76]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [82]

:[77]
pushi.e 0
pop.v.i global.msc
push.s "obj_tembattle_561"@26985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.flex
pushi.e 1
add.i.v
pop.v.v self.flex
pushglb.v global.at
pushi.e 150
cmp.i.v LT
bf [79]

:[78]
push.v global.at
pushi.e 7
add.i.v
pop.v.v global.at

:[79]
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
pushenv [81]

:[80]
pushi.e 0
pop.v.i self.halt

:[81]
popenv [80]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsteratk
pushi.e 1
add.i.v
pop.i.v [array]global.monsteratk

:[82]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [86]

:[83]
pushi.e 1
pushi.e -5
pushi.e 146
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
push.s "obj_tembattle_573"@26987
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
pushenv [85]

:[84]
pushi.e 0
pop.v.i self.halt

:[85]
popenv [84]
pushi.e -10
pop.v.i self.mercymod

:[86]
push.v self.whatiheard
pushi.e 6
cmp.i.v EQ
bf [95]

:[87]
pushi.e 0
pop.v.i self.i
pushi.e 0
pop.v.i self.n
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [92]

:[88]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e 22
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1
pop.v.i self.n
pushi.e 1
pushi.e -5
pushi.e 146
pop.v.i [array]global.flag
b [91]

:[90]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[91]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [88]

:[92]
popz.i
pushi.e 0
conv.i.v
push.v self.i
call.i scr_itemshift(argc=2)
popz.v
pushi.e 787
pushenv [94]

:[93]
call.i instance_destroy(argc=0)
popz.v

:[94]
popenv [93]
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 100
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.myfight

:[95]
push.v self.whatiheard
pushi.e 7
cmp.i.v EQ
bf [105]

:[96]
push.v self.mypart1
conv.v.i
pushenv [98]

:[97]
pushi.e 3
pop.v.i self.atk

:[98]
popenv [97]
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v
pushi.e 190
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 787
pushenv [100]

:[99]
call.i instance_destroy(argc=0)
popz.v

:[100]
popenv [99]
push.v self.mypart1
conv.v.i
pushenv [102]

:[101]
pushi.e 270
pop.v.i self.sprite_index

:[102]
popenv [101]
push.v self.mypart1
conv.v.i
pushenv [104]

:[103]
pushi.e 30
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[104]
popenv [103]

:[105]
pushi.e 1
pop.v.i global.heard

:[106]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [109]

:[107]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
push.v self.dunk
pushi.e 0
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
pushi.e 95
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconx
push.s "obj_tembattle_617"@26989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.dunk
push.s "obj_tembattle_621"@26990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blconx
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blconx
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconxwd

:[112]
push.v self.dunk
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [121]

:[116]
push.v self.blconx
conv.v.i
pushenv [118]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[118]
popenv [117]
pushi.e 23
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 290
conv.i.v
pushi.e 38
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.monsterinstance
pushi.e 0
pop.v.i 290.image_alpha
pushi.e 1
pop.v.i 290.alphaup
pushi.e 187
conv.i.v
push.v 290.y
pushi.e 25
sub.i.v
push.v 290.x
pushi.e 95
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconx
pushi.e 50
push.v self.blconx
conv.v.i
pop.v.i [stacktop]self.depth
push.s "obj_tembattle_635"@26992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_tembattle_636"@26994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[120]
push.s "obj_tembattle_637"@26995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 784
conv.i.v
push.v self.blconx
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blconx
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcont
pushi.e -50
push.v self.blcont
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 2
pop.v.i self.dunk
pushi.e 999
pop.v.i global.myfight

:[121]
push.v self.dunk
pushi.e 2
cmp.i.v EQ
bf [123]

:[122]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
bf [128]

:[125]
push.v self.blconx
conv.v.i
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]
pushi.e 1
pop.v.i self.image_index
pushi.e 187
conv.i.v
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
pushi.e 95
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconx
pushi.e 0
pop.v.i 295.visible
push.s "obj_tembattle_652"@26997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tembattle_653"@26998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blconx
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blconx
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconxwd
pushi.e 3
pop.v.i self.dunk

:[128]
push.v self.dunk
pushi.e 3
cmp.i.v EQ
bf [130]

:[129]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [135]

:[132]
push.v self.blconx
conv.v.i
pushenv [134]

:[133]
call.i instance_destroy(argc=0)
popz.v

:[134]
popenv [133]
pushi.e 222
pop.v.i self.mercymod
pushi.e 2
pop.v.i 290.flex

:[135]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [139]

:[136]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [139]

:[137]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [139]

:[138]
call.i instance_destroy(argc=0)
popz.v

:[139]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [141]

:[140]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [end]

:[143]
pushi.e 4
pop.v.i global.myfight
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[144]
call.i instance_destroy(argc=0)
popz.v

:[end]