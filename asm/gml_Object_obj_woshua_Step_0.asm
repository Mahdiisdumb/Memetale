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
bf [92]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [92]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 160
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
pushi.e 3
mul.i.v
pop.v.v global.firingrate

:[38]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
pushi.e 2
mul.i.v
pop.v.v global.firingrate

:[40]
pushi.e 2
pop.v.i self.type
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [42]

:[41]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 1
pop.v.i self.type

:[45]
push.v self.clean
pushi.e 1
cmp.i.v EQ
bt [47]

:[46]
push.v self.clean
pushi.e 3
cmp.i.v EQ
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
pushi.e 1
pop.v.i self.type

:[50]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [72]

:[51]
pushi.e 180
pop.v.i global.turntimer
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
pushi.e 150
pop.v.i global.turntimer

:[53]
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e 3
pop.v.i global.firingrate

:[55]
push.v global.firingrate
push.v self.dirtyjoke
add.v.v
pop.v.v global.firingrate
push.v self.dirtyjoke
pushi.e 3
cmp.i.v GT
bf [57]

:[56]
pushi.e 2
pop.v.i self.dirtyjoke

:[57]
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [59]

:[58]
pushi.e 692
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 90
add.i.v
pushi.e 0
conv.i.v
call.i c_borderheight(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[59]
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 692
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
sub.i.v
pushi.e 0
conv.i.v
call.i c_borderheight(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[61]
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [67]

:[62]
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.blue
push.v self.mycommand
conv.v.b
bf [64]

:[63]
pushi.e 6
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.turn

:[64]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.qq
push.v self.qq
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushi.e -6
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.turn
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.backwards

:[66]
pushi.e 60
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.direction

:[67]
push.v self.clean
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.cleaner
pushi.e 0
pop.v.i self.clean

:[69]
push.v self.clean
pushi.e 3
cmp.i.v EQ
bf [71]

:[70]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.cleaner
pushi.e 2
pop.v.i self.clean

:[71]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
b [79]

:[72]
pushi.e 4
pop.v.i global.firingrate
pushi.e 668
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e 0
conv.i.v
call.i c_borderheight(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [74]

:[73]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.offset

:[74]
pushi.e 0
pop.v.i self.qd
push.v self.dirtyjoke
pushi.e 0
cmp.i.v GT
bf [76]

:[75]
push.v self.dirtyjoke
push.d 0.5
mul.d.v
pop.v.v self.qd

:[76]
push.v self.qd
pushi.e 1
cmp.i.v GT
bf [78]

:[77]
pushi.e 1
pop.v.i self.qd

:[78]
pushi.e 4
push.v self.qd
sub.v.i
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.speed
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[79]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [81]

:[80]
push.s "obj_woshua_504"@30054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [83]

:[82]
push.s "obj_woshua_505"@30056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [85]

:[84]
push.s "obj_woshua_506"@30058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[85]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [87]

:[86]
push.s "obj_woshua_507"@30060
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[87]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [89]

:[88]
push.s "obj_woshua_508"@30062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[89]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [91]

:[90]
push.s "obj_woshua_510"@30064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[91]
pushi.e 1
pop.v.i self.attacked

:[92]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [131]

:[93]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [131]

:[94]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [131]

:[95]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [99]

:[96]
pushi.e 0
pop.v.i global.msc
push.s "obj_woshua_526"@30066
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
pushenv [98]

:[97]
pushi.e 0
pop.v.i self.halt

:[98]
popenv [97]
pushi.e 9
pop.v.i self.whatiheard

:[99]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [107]

:[100]
pushi.e 0
pop.v.i global.msc
push.s "obj_woshua_535"@30068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.slime
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_woshua_536"@30070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 333
pop.v.i self.mercymod

:[102]
push.v self.clean
pushi.e 2
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_woshua_537"@30072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[104]
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
pushenv [106]

:[105]
pushi.e 0
pop.v.i self.halt

:[106]
popenv [105]

:[107]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [117]

:[108]
pushi.e 0
pop.v.i global.msc
push.s "obj_woshua_546"@30074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.clean
pushi.e 2
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_woshua_547"@30076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[110]
push.v self.clean
pushi.e 0
cmp.i.v EQ
bf [112]

:[111]
pushi.e 1
pop.v.i self.clean

:[112]
push.v self.clean
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
pushi.e 3
pop.v.i self.clean

:[114]
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
pushenv [116]

:[115]
pushi.e 0
pop.v.i self.halt

:[116]
popenv [115]

:[117]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [130]

:[118]
pushi.e 0
pop.v.i global.msc
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.jj
push.v self.jj
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_woshua_558"@30078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[120]
push.v self.jj
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
push.s "obj_woshua_559"@30080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[122]
push.v self.jj
pushi.e 2
cmp.i.v EQ
bf [124]

:[123]
push.s "obj_woshua_560"@30082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[124]
push.s "obj_woshua_561"@30084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.dirtyjoke
pushi.e 1
add.i.v
pop.v.v self.dirtyjoke
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
pushenv [126]

:[125]
pushi.e 0
pop.v.i self.halt

:[126]
popenv [125]
pushi.e 290
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [128]

:[127]
pushi.e 12
pop.v.i 290.whatiheard
pushi.e 450
pop.v.i 290.mercymod

:[128]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pushi.e 3
cmp.i.v GT
bf [130]

:[129]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsteratk
pushi.e 2
sub.i.v
pop.i.v [array]global.monsteratk

:[130]
pushi.e 1
pop.v.i global.heard

:[131]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [134]

:[132]
push.v self.flex
pushi.e 3
cmp.i.v EQ
bf [134]

:[133]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [135]

:[134]
push.e 0

:[135]
bf [138]

:[136]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e -4
pop.v.i self.vspeed
pushi.e -4
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[138]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [141]

:[139]
push.v self.flex
pushi.e 3
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
bf [145]

:[143]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [145]

:[144]
call.i instance_destroy(argc=0)
popz.v

:[145]
push.v self.alphaup
pushi.e 1
cmp.i.v EQ
bf [147]

:[146]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[150]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [154]

:[151]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [154]

:[152]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [154]

:[153]
call.i instance_destroy(argc=0)
popz.v

:[154]
push.v self.mercymod
pushi.e 333
cmp.i.v EQ
bf [156]

:[155]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [157]

:[156]
push.e 0

:[157]
bf [end]

:[158]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[159]
call.i instance_destroy(argc=0)
popz.v

:[end]