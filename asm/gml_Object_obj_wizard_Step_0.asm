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
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause
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
bf [93]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [87]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 160
pop.v.i global.turntimer
pushi.e 7
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
push.d 2.4
mul.d.v
pop.v.v global.firingrate

:[38]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 1.7
mul.d.v
pop.v.v global.firingrate

:[40]
push.v self.stare1a
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 50
conv.i.v
call.i random(argc=1)
pushi.e 50
add.i.v
pop.v.v self.mycommand

:[42]
push.v self.stare2a
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 49
conv.i.v
call.i random(argc=1)
pop.v.v self.mycommand

:[44]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [48]

:[45]
pushi.e 366
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.orb
push.v self.stare2
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
push.v self.orb
conv.v.i
dup.i 0
push.v [stacktop]self.dmg
push.v self.stare2
pushi.e 2
mul.i.v
sub.v.v
pop.i.v [stacktop]self.dmg
pushi.e 1
push.v self.orb
conv.v.i
pop.v.i [stacktop]self.alt

:[47]
b [55]

:[48]
pushi.e 367
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.orb
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
push.v self.orb
conv.v.i
pop.v.i [stacktop]self.zap

:[50]
pushi.e 1
push.v self.orb
conv.v.i
pop.v.i [stacktop]self.king
pushi.e 360
conv.i.v
call.i random(argc=1)
push.v self.orb
conv.v.i
pop.v.v [stacktop]self.dirr
push.v self.stare1
pushi.e 0
cmp.i.v GT
bf [52]

:[51]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 100
conv.i.v
call.i random(argc=1)
push.v self.orb
conv.v.i
pop.v.v [stacktop]self.dirr
push.v self.orb
conv.v.i
push.v [stacktop]self.dirr
pop.v.v self.nowdirr
pushi.e 367
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.orb2
push.v self.nowdirr
pushi.e 40
add.i.v
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.orb2
conv.v.i
pop.v.v [stacktop]self.dirr
pushi.e 367
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.orb3
push.v self.orb2
conv.v.i
push.v [stacktop]self.dirr
pushi.e 40
add.i.v
pushi.e 70
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.orb3
conv.v.i
pop.v.v [stacktop]self.dirr
push.v 367.dmg
push.v self.stare1
pushi.e 2
mul.i.v
sub.v.v
pop.v.v 367.dmg
pushi.e 0
pop.v.i 367.zap

:[55]
pushi.e 0
pop.v.i self.stare1a
pushi.e 0
pop.v.i self.stare2a
push.v self.confuse
pushi.e 0
cmp.i.v GT
bf [57]

:[56]
push.v 744.sprite_index
pushi.e 47
cmp.i.v NEQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 1
pop.v.i 744.confuse
pushi.e 47
pop.v.i 744.sprite_index
push.v 744.x
pushi.e 8
add.i.v
pop.v.v 744.x
push.v 744.y
pushi.e 8
add.i.v
pop.v.v 744.y

:[60]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [62]

:[61]
push.s "obj_wizard_520"@29889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [64]

:[63]
push.s "obj_wizard_521"@29891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [66]

:[65]
push.s "obj_wizard_522"@29893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [68]

:[67]
push.s "obj_wizard_523"@29895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [70]

:[69]
push.s "obj_wizard_524"@29897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
push.v self.mercymod
pushi.e 140
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_wizard_525"@29899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
push.v self.confuse
pushi.e 0
cmp.i.v GT
bf [74]

:[73]
push.s "obj_wizard_526"@29901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[74]
push.v self.confuse
pushi.e 0
cmp.i.v GT
bf [76]

:[75]
push.v self.mercymod
pushi.e 140
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.s "obj_wizard_527"@29903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.stare1
pushi.e 0
cmp.i.v GT
bf [81]

:[80]
push.v self.stare2
pushi.e 0
cmp.i.v GT
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.s "obj_wizard_528"@29905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.v self.mercymod
pushi.e 280
cmp.i.v GT
bf [86]

:[85]
push.s "obj_wizard_529"@29907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
pushi.e 1
pop.v.i self.attacked

:[87]
push.v self.criticize
pushi.e 0
cmp.i.v GT
bf [89]

:[88]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[92]
pushi.e -1
pop.v.i self.whatiheard

:[93]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [149]

:[94]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [149]

:[95]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [149]

:[96]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [100]

:[97]
pushi.e 0
pop.v.i global.msc
push.s "obj_wizard_563"@29909
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
pushenv [99]

:[98]
pushi.e 0
pop.v.i self.halt

:[99]
popenv [98]
pushi.e 9
pop.v.i self.whatiheard

:[100]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [116]

:[101]
pushi.e 0
pop.v.i global.msc
push.v self.confuse
pushi.e 0
cmp.i.v GT
bf [103]

:[102]
push.v self.clear
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
push.s "obj_wizard_575"@29911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i 744.confuse
pushi.e 1
pop.v.i self.confuse
pushi.e 47
pop.v.i 744.sprite_index

:[106]
push.v self.confuse
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
push.v self.clear
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
push.s "obj_wizard_583"@29913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_wizard_584"@29915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.confuse
pushi.e 1
add.i.v
pop.v.v self.confuse
pushi.e 1
pop.v.i 744.confuse
pushi.e 47
pop.v.i 744.sprite_index
push.v global.df
pushi.e 1
sub.i.v
pop.v.v global.df

:[111]
push.v self.clear
pushi.e 0
cmp.i.v GT
bf [113]

:[112]
push.s "obj_wizard_593"@29917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[113]
pushi.e 190
pop.v.i self.mercymod
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
pushenv [115]

:[114]
pushi.e 0
pop.v.i self.halt

:[115]
popenv [114]

:[116]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [120]

:[117]
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.typer
pushi.e 3
pop.v.i global.myfight
pushi.e 6
pop.v.i global.bmenuno
push.s "obj_wizard_610"@29919
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
push.v self.iii
conv.v.i
pushenv [119]

:[118]
pushi.e 0
pop.v.i self.halt

:[119]
popenv [118]

:[120]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [130]

:[121]
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i self.clear
push.v self.confuse
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
push.s "obj_wizard_623"@29921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v global.df
pushi.e 5
add.i.v
pop.v.v global.df

:[123]
push.v self.confuse
pushi.e 0
cmp.i.v GT
bf [125]

:[124]
push.s "obj_wizard_628"@29923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_wizard_629"@29925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v global.df
pushi.e 10
add.i.v
pop.v.v global.df
pushi.e 0
pop.v.i 744.confuse
pushi.e 0
pop.v.i self.confuse

:[125]
pushi.e 784
pushenv [127]

:[126]
pushi.e 3
pop.v.i self.halt

:[127]
popenv [126]
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
pushenv [129]

:[128]
pushi.e 0
pop.v.i self.halt

:[129]
popenv [128]

:[130]
push.v self.whatiheard
pushi.e 6
cmp.i.v EQ
bf [138]

:[131]
pushi.e 784
pushenv [133]

:[132]
call.i instance_destroy(argc=0)
popz.v

:[133]
popenv [132]
push.v self.stare1
pushi.e 1
add.i.v
pop.v.v self.stare1
pushi.e 1
pop.v.i self.stare1a
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.typer
push.s "obj_wizard_647"@29927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.stare1
pushi.e 1
cmp.i.v GT
bf [135]

:[134]
push.s "obj_wizard_648"@29929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[135]
push.v self.mercymod
pushi.e 200
cmp.i.v LT
bf [137]

:[136]
push.v self.mercymod
pushi.e 100
add.i.v
pop.v.v self.mercymod

:[137]
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

:[138]
push.v self.whatiheard
pushi.e 7
cmp.i.v EQ
bf [148]

:[139]
pushi.e 784
pushenv [141]

:[140]
call.i instance_destroy(argc=0)
popz.v

:[141]
popenv [140]
push.v self.stare2
pushi.e 1
add.i.v
pop.v.v self.stare2
pushi.e 1
pop.v.i self.stare2a
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.typer
push.s "obj_wizard_662"@29931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.stare2
pushi.e 1
cmp.i.v GT
bf [143]

:[142]
push.s "obj_wizard_663"@29933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[143]
push.v self.mercymod
pushi.e 200
cmp.i.v LT
bf [145]

:[144]
push.v self.mercymod
pushi.e 100
add.i.v
pop.v.v self.mercymod

:[145]
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
pushenv [147]

:[146]
pushi.e 0
pop.v.i self.halt

:[147]
popenv [146]

:[148]
pushi.e 1
pop.v.i global.heard

:[149]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
pushi.e 46
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i 744.image_angle

:[154]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [158]

:[155]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [158]

:[156]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [158]

:[157]
call.i instance_destroy(argc=0)
popz.v

:[158]
push.v self.mercymod
pushi.e 222
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
bf [end]

:[162]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[163]
call.i instance_destroy(argc=0)
popz.v

:[end]