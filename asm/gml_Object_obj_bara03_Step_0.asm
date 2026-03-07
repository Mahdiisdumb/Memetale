.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.attacked
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
bf [23]

:[18]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [20]

:[19]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
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

:[25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [31]

:[26]
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
pushenv [28]

:[27]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[28]
popenv [27]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [30]

:[29]
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
b [31]

:[30]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[31]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [35]

:[32]
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
pushenv [34]

:[33]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[34]
popenv [33]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[35]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [82]

:[36]
push.v 760.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [38]

:[37]
push.v 760.y
push.v 762.y
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v 744.y

:[38]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [82]

:[39]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 180
pop.v.i global.turntimer
pushi.e 701
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [60]

:[40]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [43]

:[41]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.v self.pop
pushi.e 1
cmp.i.v GT
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 80
pop.v.i self.mycommand

:[46]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [48]

:[47]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 25
pop.v.i global.firingrate
pushi.e 315
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
b [59]

:[51]
pushi.e 20
pop.v.i global.firingrate
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [54]

:[52]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
push.v self.pop
pushi.e 1
cmp.i.v GT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 309
conv.i.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 80
sub.i.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 15
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 35
pop.v.i global.firingrate

:[57]
pushi.e 314
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
push.v self.con
pushi.e 6
cmp.i.v GT
bf [59]

:[58]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.shake

:[59]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself

:[60]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [62]

:[61]
push.s "* 03 rubs her glove quietly."@48439
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[62]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [64]

:[63]
push.s "* 04 hums and looks the other&  way."@48440
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[64]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [66]

:[65]
push.s "* 03 stands guard."@48441
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[66]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [68]

:[67]
push.s "* 04's twitches her tail."@48442
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[68]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [70]

:[69]
push.s "* Smells like a military zoo."@10529
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[70]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [79]

:[71]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [73]

:[72]
push.s "* 03 is trembling."@48443
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[73]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [75]

:[74]
push.s "* 03 is holding her face in&  her hands."@48444
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[75]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [77]

:[76]
push.s "* 03 stands still."@48445
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[77]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [79]

:[78]
push.s "* 03 seems sick."@48446
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[79]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [81]

:[80]
push.s "* 03's breathing intensifies."@48447
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[81]
pushi.e 1
pop.v.i self.attacked
pushi.e -1
pop.v.i self.whatiheard

:[82]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [101]

:[83]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [101]

:[84]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [101]

:[85]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [89]

:[86]
pushi.e 0
pop.v.i global.msc
push.s "* RG 03 "@48448
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
call.i string(argc=1)
add.v.s
push.s " ATK "@48449
add.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdef
call.i string(argc=1)
add.v.v
push.s " DEF&* Royal Guard member with&  stuffy armor./^"@48450
add.s.v
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
pushi.e 9
pop.v.i self.whatiheard

:[89]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [96]

:[90]
pushi.e 0
pop.v.i global.msc
push.s "* You touch RG 03's glove^1.&* It starts to come loose./^"@48451
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.shirtless
pushi.e 1
cmp.i.v EQ
bf [93]

:[91]
push.s "* You shake RG 03's claw./^"@48452
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
pushi.e 310
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [93]

:[92]
pushi.e 12
pop.v.i 310.whatiheard

:[93]
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
pushenv [95]

:[94]
pushi.e 0
pop.v.i self.halt

:[95]
popenv [94]

:[96]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [100]

:[97]
pushi.e 0
pop.v.i global.msc
push.s "* You tell RG 03 that she&  should stand up for herself./^"@48453
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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

:[100]
pushi.e 1
pop.v.i global.heard

:[101]
push.v self.alphaup
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[106]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [110]

:[107]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [110]

:[108]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [112]

:[111]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
bf [116]

:[114]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [116]

:[115]
call.i instance_destroy(argc=0)
popz.v

:[116]
push.v self.fuckyou
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
pushi.e 5
pop.v.i global.mnfight

:[118]
pushglb.v global.mnfight
pushi.e 5
cmp.i.v EQ
bf [end]

:[119]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [121]

:[120]
pushi.e 1
pop.v.i self.fuckyou
pushi.e -800
pop.v.i 744.x
pushi.e -1
pop.v.i 744.movement
pushi.e 0
pop.v.i global.border
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.con

:[121]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [123]

:[122]
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
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
push.s "My glove&...!/%%"@48454
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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

:[123]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [125]

:[124]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [132]

:[127]
push.v self.blcon
conv.v.i
pushenv [129]

:[128]
call.i instance_destroy(argc=0)
popz.v

:[129]
popenv [128]
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.mypart1
conv.v.i
pushenv [131]

:[130]
pushi.e 379
pop.v.i self.hand1pic

:[131]
popenv [130]
pushi.e 4
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[132]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [134]

:[133]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [141]

:[136]
pushi.e 313
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [140]

:[137]
pushi.e 313
pushenv [139]

:[138]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 2
pop.v.i global.typer
push.s "03...&Is that&...?/%%"@48456
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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

:[139]
popenv [138]

:[140]
pushi.e 6
pop.v.i self.con

:[141]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [143]

:[142]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [144]

:[143]
push.e 0

:[144]
bf [152]

:[145]
pushi.e 313
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [151]

:[146]
pushi.e 313
pushenv [150]

:[147]
push.v self.blcon
conv.v.i
pushenv [149]

:[148]
call.i instance_destroy(argc=0)
popz.v

:[149]
popenv [148]

:[150]
popenv [147]

:[151]
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
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
push.s "Yes.&It is./"@48457
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "Go&ahead.&Laugh at&me./%%"@48458
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
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
pushi.e 7
pop.v.i self.con

:[152]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [154]

:[153]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [155]

:[154]
push.e 0

:[155]
bf [163]

:[156]
push.v self.blcon
conv.v.i
pushenv [158]

:[157]
call.i instance_destroy(argc=0)
popz.v

:[158]
popenv [157]
pushi.e 313
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [162]

:[159]
pushi.e 313
pushenv [161]

:[160]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 2
pop.v.i global.typer
push.s "No, I.../%%"@48459
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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

:[161]
popenv [160]

:[162]
pushi.e 8
pop.v.i self.con

:[163]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [165]

:[164]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [166]

:[165]
push.e 0

:[166]
bf [172]

:[167]
pushi.e 313
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [171]

:[168]
push.v 313.blcon
conv.v.i
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]

:[171]
pushi.e 9
pop.v.i self.con

:[172]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [174]

:[173]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [175]

:[174]
push.e 0

:[175]
bf [end]

:[176]
pushi.e 0
pop.v.i self.fuckyou
pushi.e 1
pop.v.i self.shirtless
push.v self.blcon
conv.v.i
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]
push.s "* RG 04 is looking at her own&  glove."@48460
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
pushi.e 10
pop.v.i self.con
pushi.e 3
pop.v.i global.mnfight
pushi.e 1
pop.v.i 313.shake
pushi.e 1
pop.v.i 744.movement

:[end]