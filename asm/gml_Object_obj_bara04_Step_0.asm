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
bf [72]

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
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v self.pop
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [72]

:[42]
pushi.e 180
pop.v.i global.turntimer
pushi.e 312
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [50]

:[43]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [45]

:[44]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
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
pushi.e 8
push.v self.gen
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
b [49]

:[48]
pushi.e 20
pop.v.i global.firingrate
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

:[49]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself

:[50]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [52]

:[51]
push.s "* 03 rubs her glove quietly."@48439
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[52]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [54]

:[53]
push.s "* 04 hums and looks the other&  way."@48440
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[54]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [56]

:[55]
push.s "* 03 stands guard."@48441
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[56]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [58]

:[57]
push.s "* 04's twitches her tail."@48442
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[58]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [60]

:[59]
push.s "* Smells like a military zoo."@10529
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[60]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [69]

:[61]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [63]

:[62]
push.s "* 04 holds her head in her&  hands."@48474
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[63]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [65]

:[64]
push.s "*Sad mews emerge from&  04's armor."@48475
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[65]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [67]

:[66]
push.s "* 04 is thunderstruck."@48476
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[67]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [69]

:[68]
push.s "* 04 does nothing."@48477
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[69]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [71]

:[70]
push.s "* 04's breathing intensifies."@48478
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[71]
pushi.e 1
pop.v.i self.attacked

:[72]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [92]

:[73]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [92]

:[74]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [92]

:[75]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [79]

:[76]
pushi.e 0
pop.v.i global.msc
push.s "* RG 04 "@48479
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
push.s " DEF&* Royal Guard member.&* Protective of her armor./^"@48480
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
pushenv [78]

:[77]
pushi.e 0
pop.v.i self.halt

:[78]
popenv [77]
pushi.e 9
pop.v.i self.whatiheard

:[79]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [85]

:[80]
pushi.e 0
pop.v.i global.msc
push.s "* You attempt to touch RG 04's&  glove^1.&* She bats your hand away./^"@48481
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "* You touch RG 04's glove softly.&* She nods and begins to&  take it off./^"@48482
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
pushi.e 1
pop.v.i self.toldhim

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

:[85]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [91]

:[86]
pushi.e 0
pop.v.i global.msc
push.s "* You tell RG 04 to remember&  what being friends is about./^"@48483
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
pushi.e 1
pop.v.i self.toldhim

:[88]
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
pushenv [90]

:[89]
pushi.e 0
pop.v.i self.halt

:[90]
popenv [89]

:[91]
pushi.e 1
pop.v.i global.heard

:[92]
push.v self.toldhim
pushi.e 1
cmp.i.v EQ
bf [97]

:[93]
pushglb.v global.turntimer
pushi.e 6
cmp.i.v GT
bf [97]

:[94]
pushglb.v global.turntimer
pushi.e 12
cmp.i.v LT
bf [97]

:[95]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [97]

:[96]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
pushi.e -1
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.fuckyou
pushi.e 5
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.border
pushi.e -800
pop.v.i 744.x
pushi.e -1
pop.v.i 744.movement

:[100]
push.v self.fuckyou
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 5
pop.v.i global.mnfight

:[102]
pushglb.v global.mnfight
pushi.e 5
cmp.i.v EQ
bf [173]

:[103]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [105]

:[104]
push.v self.toldhim
pushi.e 1
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v
push.d 0.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[108]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [112]

:[109]
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.mypart1
conv.v.i
pushenv [111]

:[110]
pushi.e 378
pop.v.i self.hand1pic

:[111]
popenv [110]
pushi.e 1
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[112]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
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
pushi.e 0
pop.v.i global.msc
push.s "Actually&.../"@48484
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "I still&wear&mine&too./%%"@48485
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
pushi.e 3
pop.v.i self.con

:[114]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [116]

:[115]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [125]

:[118]
push.v self.mypart1
conv.v.i
pushenv [120]

:[119]
pushi.e 0
pop.v.i self.shaker

:[120]
popenv [119]
push.v self.blcon
conv.v.i
pushenv [122]

:[121]
call.i instance_destroy(argc=0)
popz.v

:[122]
popenv [121]
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
pushi.e 312
pushenv [124]

:[123]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
sub.v.v
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.v self.blcon
pop.v.v 313.blcon
pushi.e 39
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
push.s "Our friendship&bracelets from&high school./%%"@48486
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

:[124]
popenv [123]

:[125]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [127]

:[126]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [132]

:[129]
push.v self.blcon
conv.v.i
pushenv [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
popenv [130]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
add.v.v
pushi.e 5
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 38
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "03, I'm sorry.&I thought you hated&me, after what&happened.../"@48487
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "We did some pretty&nasty things to&each other, because&of.../%%"@48488
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
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
pushi.e 5
pop.v.i self.con

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
push.v self.blcon
conv.v.i
pushenv [138]

:[137]
call.i instance_destroy(argc=0)
popz.v

:[138]
popenv [137]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 2
pop.v.i global.typer
pushi.e 312
pushenv [140]

:[139]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
sub.v.v
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.v self.blcon
pop.v.v 313.blcon
pushi.e 39
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
push.s "That old drama?&Forget about it./"@48489
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "To tell you the&truth, I requested&to be partners&with you./"@48490
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "I wanted to become&friends with you&again.../"@48491
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.s "But I didn't know&how to breach the&topic./%%"@48492
pushi.e -5
pushi.e 3
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

:[140]
popenv [139]

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
bf [148]

:[145]
push.v self.blcon
conv.v.i
pushenv [147]

:[146]
call.i instance_destroy(argc=0)
popz.v

:[147]
popenv [146]
pushi.e 187
conv.i.v
push.v self.y
push.v self.blcony
add.v.v
push.v self.x
push.v self.blconx
add.v.v
pushi.e 5
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 38
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "03!/"@48493
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "After this.../"@48494
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "Do you want to get&some ice-cream?/%%"@48495
pushi.e -5
pushi.e 2
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
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
pushi.e 7
pop.v.i self.con

:[148]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [150]

:[149]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [151]

:[150]
push.e 0

:[151]
bf [157]

:[152]
push.v self.blcon
conv.v.i
pushenv [154]

:[153]
call.i instance_destroy(argc=0)
popz.v

:[154]
popenv [153]
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 2
pop.v.i global.typer
pushi.e 312
pushenv [156]

:[155]
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
pop.v.v 313.blcon
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
push.s "Salmon-&flavor?/%%"@48496
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

:[156]
popenv [155]

:[157]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [159]

:[158]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [164]

:[161]
push.v self.blcon
conv.v.i
pushenv [163]

:[162]
call.i instance_destroy(argc=0)
popz.v

:[163]
popenv [162]
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
pushi.e 26
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "You know&it!/%%"@48497
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
pushi.e 10
pop.v.i self.con

:[164]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [166]

:[165]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [167]

:[166]
push.e 0

:[167]
bf [173]

:[168]
pushi.e 0
pop.v.i self.fuckyou
push.v self.blcon
conv.v.i
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]
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
pushi.e 312
pushenv [172]

:[171]
pushi.e 999
pop.v.i self.mercymod
pushi.e -999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[172]
popenv [171]
push.v self.conmusic
call.i caster_free(argc=1)
popz.v
push.s "* 03 and 04 are planning all&  sorts of things to do&  together."@48498
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

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