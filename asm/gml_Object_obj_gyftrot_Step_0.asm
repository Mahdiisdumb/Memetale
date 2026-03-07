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
push.v self.part2
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart2
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
bf [81]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [81]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 218
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[37]
push.v 218.ditch
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.v self.pop
pushi.e 1
sub.i.v
pop.v.v self.pop

:[39]
pushi.e 120
pop.v.i global.turntimer
push.v self.mercymod
pushi.e 90
cmp.i.v GT
bf [41]

:[40]
pushi.e -2
pop.v.i global.turntimer

:[41]
pushi.e 5
pop.v.i global.firingrate
pushglb.v global.hardmode
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 3
pop.v.i global.firingrate

:[43]
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [45]

:[44]
pushglb.v global.firingrate
push.d 2.4
mul.d.v
pop.v.v global.firingrate

:[45]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [47]

:[46]
pushglb.v global.firingrate
push.d 1.7
mul.d.v
pop.v.v global.firingrate

:[47]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [49]

:[48]
push.v self.mycommand
pushi.e 60
cmp.i.v LTE
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 715
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype
b [53]

:[52]
pushi.e 686
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[53]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [55]

:[54]
push.s "obj_gyftrot_507"@14195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [57]

:[56]
push.s "obj_gyftrot_508"@14197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [59]

:[58]
push.s "obj_gyftrot_509"@14199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_gyftrot_510"@14201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_gyftrot_511"@14203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.giftgiven
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_gyftrot_512"@14205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.giftgiven
pushi.e 2
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_gyftrot_513"@14207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.googly
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_gyftrot_514"@14209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.v self.itemgone
pushi.e 1
cmp.i.v EQ
bt [71]

:[70]
push.v self.itemgone
pushi.e 2
cmp.i.v EQ
b [72]

:[71]
push.e 1

:[72]
bf [74]

:[73]
push.s "obj_gyftrot_515"@14211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[74]
push.v self.itemgone
pushi.e 3
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_gyftrot_516"@14213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[76]
push.v self.betray
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.s "obj_gyftrot_517"@14215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[78]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [80]

:[79]
push.s "obj_gyftrot_519"@14217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[80]
pushi.e 1
pop.v.i self.attacked

:[81]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [173]

:[82]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [173]

:[83]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [172]

:[84]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [88]

:[85]
pushi.e 0
pop.v.i global.msc
push.s "obj_gyftrot_534"@14219
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
pushenv [87]

:[86]
pushi.e 0
pop.v.i self.halt

:[87]
popenv [86]

:[88]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [137]

:[89]
pushi.e 0
pop.v.i global.msc
push.v self.itemgone
pushi.e 3
cmp.i.v LT
bf [106]

:[90]
pushi.e -1
push.v self.itemgone
conv.v.i
push.v [array]self.gift
pushi.e 0
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_gyftrot_544"@14221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
pushi.e -1
push.v self.itemgone
conv.v.i
push.v [array]self.gift
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_gyftrot_545"@14223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
pushi.e -1
push.v self.itemgone
conv.v.i
push.v [array]self.gift
pushi.e 2
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_gyftrot_546"@14225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
pushi.e -1
push.v self.itemgone
conv.v.i
push.v [array]self.gift
pushi.e 3
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_gyftrot_547"@14227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[98]
pushi.e -1
push.v self.itemgone
conv.v.i
push.v [array]self.gift
pushi.e 4
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_gyftrot_548"@14229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[100]
pushi.e -1
push.v self.itemgone
conv.v.i
push.v [array]self.gift
pushi.e 5
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_gyftrot_549"@14231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[102]
pushi.e -1
push.v self.itemgone
conv.v.i
push.v [array]self.gift
pushi.e 6
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_gyftrot_550"@14233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[104]
pushi.e -1
push.v self.itemgone
conv.v.i
push.v [array]self.gift
pushi.e 7
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_gyftrot_551"@14235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[106]
push.v self.itemgone
pushi.e 3
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_gyftrot_553"@14237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 180
pop.v.i self.mercymod

:[108]
push.v self.googly
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_gyftrot_554"@14239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[110]
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
pushenv [112]

:[111]
pushi.e 0
pop.v.i self.halt

:[112]
popenv [111]
push.v self.googly
pushi.e 1
cmp.i.v EQ
bf [116]

:[113]
pushi.e 0
pop.v.i self.googly
pushi.e 1
pop.v.i self.ung
push.v self.mypart5
conv.v.i
pushenv [115]

:[114]
call.i instance_destroy(argc=0)
popz.v

:[115]
popenv [114]
b [129]

:[116]
push.v self.itemgone
pushi.e 3
cmp.i.v LT
bf [129]

:[117]
push.v self.itemgone
pushi.e 2
cmp.i.v EQ
bf [121]

:[118]
push.v self.mypart8
conv.v.i
pushenv [120]

:[119]
call.i instance_destroy(argc=0)
popz.v

:[120]
popenv [119]
pushi.e 3
pop.v.i self.itemgone

:[121]
push.v self.itemgone
pushi.e 1
cmp.i.v EQ
bf [125]

:[122]
push.v self.mypart4
conv.v.i
pushenv [124]

:[123]
call.i instance_destroy(argc=0)
popz.v

:[124]
popenv [123]
pushi.e 2
pop.v.i self.itemgone

:[125]
push.v self.itemgone
pushi.e 0
cmp.i.v EQ
bf [129]

:[126]
push.v self.mypart3
conv.v.i
pushenv [128]

:[127]
call.i instance_destroy(argc=0)
popz.v

:[128]
popenv [127]
pushi.e 1
pop.v.i self.itemgone

:[129]
push.v self.mercymod
pushi.e 150
cmp.i.v LT
bf [137]

:[130]
push.v self.itemgone
pushi.e 0
cmp.i.v GT
bf [132]

:[131]
push.v self.mercymod
pushi.e 100
cmp.i.v LT
b [133]

:[132]
push.e 0

:[133]
bf [135]

:[134]
pushi.e 10
pop.v.i self.mercymod

:[135]
push.v self.itemgone
pushi.e 2
cmp.i.v GT
bf [137]

:[136]
pushi.e 160
pop.v.i self.mercymod
pushi.e 1
pushi.e -5
pushi.e 138
pop.v.i [array]global.flag

:[137]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [144]

:[138]
pushi.e 0
pop.v.i global.msc
push.v self.googly
pushi.e 0
cmp.i.v EQ
bf [140]

:[139]
push.s "obj_gyftrot_579"@14241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.googly
push.v self.part3
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart5
pushi.e 8
push.v self.mypart5
conv.v.i
pop.v.i [stacktop]self.gift
b [141]

:[140]
push.s "obj_gyftrot_586"@14243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[141]
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
pushenv [143]

:[142]
pushi.e 0
pop.v.i self.halt

:[143]
popenv [142]

:[144]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [172]

:[145]
pushi.e 0
pop.v.i global.msc
push.v self.giftgiven
pushi.e 0
cmp.i.v EQ
bf [149]

:[146]
push.v self.googly
pushi.e 0
cmp.i.v EQ
bf [149]

:[147]
push.v self.itemgone
pushi.e 0
cmp.i.v GT
bf [149]

:[148]
push.v self.betray
pushi.e 0
cmp.i.v EQ
b [150]

:[149]
push.e 0

:[150]
bf [159]

:[151]
push.v self.part3
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart6
pushi.e 9
push.v self.mypart6
conv.v.i
pop.v.i [stacktop]self.gift
pushglb.v global.gold
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
push.s "obj_gyftrot_601"@14245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.giftgiven
pushi.e 140
pop.v.i self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.goldreward
pushi.e 50
add.i.v
pop.i.v [array]global.goldreward

:[153]
pushglb.v global.gold
pushi.e 0
cmp.i.v GT
bf [158]

:[154]
pushglb.v global.gold
pushi.e 35
cmp.i.v GTE
bf [156]

:[155]
push.s "obj_gyftrot_610"@14247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v global.gold
pushi.e 35
sub.i.v
pop.v.v global.gold
b [157]

:[156]
pushi.e 0
pop.v.i global.gold
push.s "obj_gyftrot_616"@14249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[157]
pushi.e 1
pop.v.i self.giftgiven
pushi.e 140
pop.v.i self.mercymod

:[158]
b [169]

:[159]
push.v self.googly
pushi.e 1
cmp.i.v EQ
bt [162]

:[160]
push.v self.betray
pushi.e 1
cmp.i.v EQ
bt [162]

:[161]
push.v self.itemgone
pushi.e 0
cmp.i.v EQ
b [163]

:[162]
push.e 1

:[163]
bf [165]

:[164]
push.s "obj_gyftrot_624"@14251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[165]
push.v self.giftgiven
pushi.e 1
cmp.i.v EQ
bf [167]

:[166]
push.s "obj_gyftrot_625"@14253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[167]
push.v self.giftgiven
pushi.e 2
cmp.i.v EQ
bf [169]

:[168]
push.s "obj_gyftrot_626"@14255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[169]
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
pushenv [171]

:[170]
pushi.e 0
pop.v.i self.halt

:[171]
popenv [170]

:[172]
pushi.e 1
pop.v.i global.heard

:[173]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [177]

:[174]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [177]

:[175]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [177]

:[176]
call.i instance_destroy(argc=0)
popz.v

:[177]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [179]

:[178]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [180]

:[179]
push.e 0

:[180]
bf [end]

:[181]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[182]
call.i instance_destroy(argc=0)
popz.v

:[end]