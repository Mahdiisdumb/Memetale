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
bf [91]

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
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [91]

:[40]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 180
pop.v.i global.turntimer
pushi.e 701
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [69]

:[41]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [44]

:[42]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.v self.pop
pushi.e 1
cmp.i.v GT
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 80
pop.v.i self.mycommand

:[47]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [49]

:[48]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [50]

:[49]
push.e 0

:[50]
bf [57]

:[51]
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
push.v self.con
pushi.e 6
cmp.i.v GT
bf [53]

:[52]
call.i scr_monstersum(argc=0)
pushi.e 2
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.shake

:[56]
b [68]

:[57]
pushi.e 20
pop.v.i global.firingrate
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [60]

:[58]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
push.v self.pop
pushi.e 1
cmp.i.v GT
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
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

:[63]
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
push.v self.con
pushi.e 6
cmp.i.v GT
bf [65]

:[64]
call.i scr_monstersum(argc=0)
pushi.e 2
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.shake

:[68]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself

:[69]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [71]

:[70]
push.s "obj_bara02_527"@10630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [73]

:[72]
push.s "obj_bara02_528"@10631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [75]

:[74]
push.s "obj_bara02_529"@10632
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [77]

:[76]
push.s "obj_bara02_530"@10633
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
push.s "obj_bara02_531"@10634
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [88]

:[80]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [82]

:[81]
push.s "obj_bara02_538"@10636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [84]

:[83]
push.s "obj_bara02_539"@10638
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [86]

:[85]
push.s "obj_bara02_540"@10640
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [88]

:[87]
push.s "obj_bara02_541"@10642
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [90]

:[89]
push.s "obj_bara02_545"@10644
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
pushi.e 1
pop.v.i self.attacked
pushi.e -1
pop.v.i self.whatiheard

:[91]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [117]

:[92]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [117]

:[93]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [117]

:[94]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [103]

:[95]
pushi.e 0
pop.v.i global.msc
push.s "obj_bara02_564"@10646
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [97]

:[96]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
push.s "obj_bara02_567"@10648
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_bara02_568"@10650
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
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
pushi.e 9
pop.v.i self.whatiheard

:[103]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [112]

:[104]
pushi.e 0
pop.v.i global.msc
push.s "obj_bara02_580"@10652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_monstersum(argc=0)
pushi.e 2
cmp.i.v LT
bf [106]

:[105]
push.s "obj_bara02_581"@10654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[106]
push.v self.shirtless
pushi.e 1
cmp.i.v EQ
bf [109]

:[107]
push.s "obj_bara02_585"@10656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 310
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [109]

:[108]
pushi.e 12
pop.v.i 310.whatiheard

:[109]
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
pushenv [111]

:[110]
pushi.e 0
pop.v.i self.halt

:[111]
popenv [110]

:[112]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [116]

:[113]
pushi.e 0
pop.v.i global.msc
push.s "obj_bara02_597"@10658
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
pushenv [115]

:[114]
pushi.e 0
pop.v.i self.halt

:[115]
popenv [114]

:[116]
pushi.e 1
pop.v.i global.heard

:[117]
push.v self.alphaup
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[122]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [126]

:[123]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [126]

:[124]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [126]

:[125]
call.i instance_destroy(argc=0)
popz.v

:[126]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [128]

:[127]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [129]

:[128]
push.e 0

:[129]
bf [132]

:[130]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [132]

:[131]
call.i instance_destroy(argc=0)
popz.v

:[132]
pushglb.v global.mnfight
pushi.e 5
cmp.i.v EQ
bf [end]

:[133]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [135]

:[134]
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

:[135]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [137]

:[136]
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
push.s "obj_bara02_644"@10660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_bara02_645"@10662
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
pushi.e 3
pop.v.i self.con

:[137]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [139]

:[138]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [146]

:[141]
push.v self.blcon
conv.v.i
pushenv [143]

:[142]
call.i instance_destroy(argc=0)
popz.v

:[143]
popenv [142]
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.mypart1
conv.v.i
pushenv [145]

:[144]
pushi.e 384
pop.v.i self.bodypic

:[145]
popenv [144]
pushi.e 4
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[146]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [148]

:[147]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [149]

:[148]
push.e 0

:[149]
bf [155]

:[150]
pushi.e 310
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [154]

:[151]
push.v 310.mypart1
conv.v.i
pushenv [153]

:[152]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[153]
popenv [152]

:[154]
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
push.s "obj_bara02_664"@10664
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
pushi.e 6
pop.v.i self.con

:[155]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [157]

:[156]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [158]

:[157]
push.e 0

:[158]
bf [end]

:[159]
pushi.e 1
pop.v.i self.shirtless
push.v self.blcon
conv.v.i
pushenv [161]

:[160]
call.i instance_destroy(argc=0)
popz.v

:[161]
popenv [160]
push.s "obj_bara02_672"@10666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
pop.v.i self.con
pushi.e 3
pop.v.i global.mnfight
pushi.e 1
pop.v.i 310.shake
pushi.e 1
pop.v.i 744.movement

:[end]