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
pop.v.i self.sideface

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
bf [19]

:[13]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [19]

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[16]
push.v self.mercymod
pushi.e -49
cmp.i.v EQ
bf [18]

:[17]
pushi.e 400
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[18]
pushi.e 2
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[19]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [34]

:[20]
push.v self.conversation
pushi.e 13
cmp.i.v LT
bf [27]

:[21]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [24]

:[22]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [24]

:[23]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[27]
push.v self.conversation
pushi.e 13
cmp.i.v GTE
bf [29]

:[28]
push.v self.conversation
pushi.e 99
cmp.i.v NEQ
b [30]

:[29]
push.e 0

:[30]
bf [34]

:[31]
pushi.e 786
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[32]
push.v 786.stringpos
pushi.e 786
pushi.e 0
push.v [array]self.mystring
call.i string_length(argc=1)
cmp.v.v GTE
bf [34]

:[33]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[34]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [38]

:[35]
pushi.e 16
pop.v.i self.shudder
pushglb.v global.damagetimer
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushglb.v global.damage
pushi.e 100
cmp.i.v GT
bf [37]

:[36]
pushi.e 32
pop.v.i self.shudder

:[37]
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[38]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [55]

:[39]
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
pushenv [41]

:[40]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[41]
popenv [40]
pushglb.v global.damage
pushi.e 100
cmp.i.v GT
bf [45]

:[42]
push.v self.dmgwriter
conv.v.i
pushenv [44]

:[43]
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[44]
popenv [43]

:[45]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 150
cmp.i.v LTE
bf [47]

:[46]
pushi.e -140
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[47]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [54]

:[48]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
push.v self.conversation
pushi.e 13
cmp.i.v LT
bf [53]

:[49]
pushglb.v global.hp
pushi.e 2
cmp.i.v GT
bf [51]

:[50]
pushi.e 749
pop.v.i self.sprite_index

:[51]
pushglb.v global.hp
pushi.e 2
cmp.i.v LTE
bf [53]

:[52]
pushi.e 759
pop.v.i self.sprite_index

:[53]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [55]

:[54]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[55]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [59]

:[56]
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
pushenv [58]

:[57]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[58]
popenv [57]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[59]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [146]

:[60]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [146]

:[61]
pushi.e 160
pop.v.i global.turntimer
pushglb.v global.hp
pushi.e 2
cmp.i.v GT
bf [63]

:[62]
push.v self.conversation
pushi.e 13
cmp.i.v LT
b [64]

:[63]
push.e 0

:[64]
bf [126]

:[65]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [96]

:[66]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [68]

:[67]
push.v self.mycommand
pushi.e 20
cmp.i.v LTE
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 140
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 7
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[71]
push.v self.mycommand
pushi.e 20
cmp.i.v GT
bf [73]

:[72]
push.v self.mycommand
pushi.e 40
cmp.i.v LTE
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 140
pop.v.i global.turntimer
pushi.e 2
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 8
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[76]
push.v self.mycommand
pushi.e 80
cmp.i.v GT
bf [78]

:[77]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [79]

:[78]
push.e 0

:[79]
bf [82]

:[80]
pushi.e 200
pop.v.i global.turntimer
pushi.e 2
pop.v.i global.firingrate
pushi.e 616
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 45
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushglb.v global.hp
pushi.e 6
cmp.i.v GT
bf [82]

:[81]
pushi.e 5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg

:[82]
push.v self.mycommand
pushi.e 60
cmp.i.v GT
bf [84]

:[83]
push.v self.mycommand
pushi.e 80
cmp.i.v LTE
b [85]

:[84]
push.e 0

:[85]
bf [90]

:[86]
pushi.e 200
pop.v.i global.turntimer
pushi.e 2
pop.v.i global.firingrate
pushi.e 616
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 45
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.x1
pushglb.v global.hp
pushi.e 6
cmp.i.v GT
bf [88]

:[87]
pushi.e 5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg

:[88]
pushi.e 617
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 5
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen2
pushglb.v global.hp
pushi.e 6
cmp.i.v GT
bf [90]

:[89]
pushi.e 5
push.v self.gen2
conv.v.i
pop.v.i [stacktop]self.dmg

:[90]
push.v self.mycommand
pushi.e 40
cmp.i.v GT
bf [92]

:[91]
push.v self.mycommand
pushi.e 60
cmp.i.v LTE
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 140
pop.v.i global.turntimer
pushi.e 6
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 10
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[95]
b [125]

:[96]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [98]

:[97]
push.v self.mycommand
pushi.e 20
cmp.i.v LTE
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 160
pop.v.i global.turntimer
pushi.e 4
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 7
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[101]
push.v self.mycommand
pushi.e 20
cmp.i.v GT
bf [103]

:[102]
push.v self.mycommand
pushi.e 40
cmp.i.v LTE
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 160
pop.v.i global.turntimer
pushi.e 1
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 8
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[106]
push.v self.mycommand
pushi.e 80
cmp.i.v GT
bf [108]

:[107]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [109]

:[108]
push.e 0

:[109]
bf [112]

:[110]
pushi.e 200
pop.v.i global.turntimer
pushi.e 1
pop.v.i global.firingrate
pushi.e 616
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 45
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushglb.v global.hp
pushi.e 6
cmp.i.v GT
bf [112]

:[111]
pushi.e 6
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg

:[112]
push.v self.mycommand
pushi.e 60
cmp.i.v GT
bf [114]

:[113]
push.v self.mycommand
pushi.e 80
cmp.i.v LTE
b [115]

:[114]
push.e 0

:[115]
bf [120]

:[116]
pushi.e 200
pop.v.i global.turntimer
pushi.e 1
pop.v.i global.firingrate
pushi.e 616
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 45
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.x1
pushglb.v global.hp
pushi.e 6
cmp.i.v GT
bf [118]

:[117]
pushi.e 6
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg

:[118]
pushi.e 617
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 5
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen2
pushglb.v global.hp
pushi.e 6
cmp.i.v GT
bf [120]

:[119]
pushi.e 6
push.v self.gen2
conv.v.i
pop.v.i [stacktop]self.dmg

:[120]
push.v self.mycommand
pushi.e 40
cmp.i.v GT
bf [122]

:[121]
push.v self.mycommand
pushi.e 60
cmp.i.v LTE
b [123]

:[122]
push.e 0

:[123]
bf [125]

:[124]
pushi.e 160
pop.v.i global.turntimer
pushi.e 5
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 10
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[125]
b [131]

:[126]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 150
cmp.i.v GT
bf [128]

:[127]
pushi.e -15
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[128]
pushi.e 140
pop.v.i global.turntimer
pushi.e 2
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.conversation
pushi.e 13
cmp.i.v LT
bf [130]

:[129]
pushi.e 1
pop.v.i self.sideface

:[130]
pushi.e 9
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[131]
push.v self.conversation
pushi.e 13
cmp.i.v GT
bf [133]

:[132]
pushi.e 1
pop.v.i global.turntimer
pushi.e -2000
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[133]
pushi.e -5
pushi.e 202
push.v [array]global.flag
pushi.e 20
cmp.i.v GTE
bf [135]

:[134]
pushi.e -9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[135]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [137]

:[136]
push.s "obj_torielboss_803"@27404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[137]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [139]

:[138]
push.s "obj_torielboss_804"@27406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[139]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [141]

:[140]
push.s "obj_torielboss_805"@27408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[141]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [143]

:[142]
push.s "obj_torielboss_806"@27410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[143]
push.v self.conversation
pushi.e 13
cmp.i.v GT
bf [145]

:[144]
push.s "obj_torielboss_809"@27411
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[145]
pushi.e 1
pop.v.i self.attacked

:[146]
push.v self.whatiheard
pushi.e 3
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
bf [152]

:[150]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [152]

:[151]
call.i instance_destroy(argc=0)
popz.v

:[152]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [177]

:[153]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [177]

:[154]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [177]

:[155]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [159]

:[156]
pushi.e 0
pop.v.i global.msc
push.s "obj_torielboss_834"@27413
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
pushenv [158]

:[157]
pushi.e 0
pop.v.i self.halt

:[158]
popenv [157]

:[159]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [176]

:[160]
push.v self.tt
pushi.e 1
add.i.v
pop.v.v self.tt
pushi.e 0
pop.v.i global.msc
push.s "obj_torielboss_843"@27415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TK"@47563
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.TK
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.tt
pushi.e 1
cmp.i.v GT
bf [162]

:[161]
push.s "obj_torielboss_847"@27417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[162]
push.v self.tt
pushi.e 2
cmp.i.v GT
bf [164]

:[163]
push.s "obj_torielboss_848"@27419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[164]
push.v self.TK
pushi.e 0
cmp.i.v GT
bf [166]

:[165]
push.s "obj_torielboss_850"@27421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torielboss_851"@27423
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torielboss_852"@27425
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[166]
push.v self.TK
pushi.e 0
cmp.i.v GT
bf [168]

:[167]
push.v self.tt
pushi.e 1
cmp.i.v GT
b [169]

:[168]
push.e 0

:[169]
bf [171]

:[170]
push.s "obj_torielboss_854"@27427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[171]
pushi.e -5
pushi.e 202
push.v [array]global.flag
pushi.e 20
cmp.i.v GTE
bf [173]

:[172]
push.s "obj_torielboss_855"@27429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[173]
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
pushenv [175]

:[174]
pushi.e 0
pop.v.i self.halt

:[175]
popenv [174]

:[176]
pushi.e 1
pop.v.i global.heard

:[177]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [181]

:[178]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [181]

:[179]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [181]

:[180]
call.i instance_destroy(argc=0)
popz.v

:[181]
push.v self.destroyed
pushi.e 1
cmp.i.v EQ
bf [199]

:[182]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [184]

:[183]
pushi.e 761
pop.v.i self.sprite_index
pushi.e 12
pop.v.i global.typer

:[184]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [186]

:[185]
pushi.e 764
pop.v.i self.sprite_index
pushi.e 13
pop.v.i global.typer

:[186]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [188]

:[187]
pushi.e 765
pop.v.i self.sprite_index
pushi.e 14
pop.v.i global.typer

:[188]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [190]

:[189]
pushi.e 762
pop.v.i self.sprite_index
pushi.e 15
pop.v.i global.typer

:[190]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [192]

:[191]
pushi.e 766
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 13
pop.v.i global.typer

:[192]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bf [194]

:[193]
pushi.e 1
pop.v.i self.image_index

:[194]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [198]

:[195]
pushi.e 784
pushenv [197]

:[196]
pushglb.v global.typer
pushi.e 155
conv.i.v
call.i script_execute(argc=2)
popz.v

:[197]
popenv [196]

:[198]
pushi.e 1
pop.v.i global.facechange

:[199]
push.v self.conversation
pushi.e 99
cmp.i.v EQ
bf [201]

:[200]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [202]

:[201]
push.e 0

:[202]
bf [end]

:[203]
pushi.e 786
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [207]

:[204]
push.v self.blconwd
conv.v.i
pushenv [206]

:[205]
call.i instance_destroy(argc=0)
popz.v

:[206]
popenv [205]

:[207]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [211]

:[208]
push.v self.blcon
conv.v.i
pushenv [210]

:[209]
call.i instance_destroy(argc=0)
popz.v

:[210]
popenv [209]

:[211]
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [215]

:[212]
pushi.e 188
pushenv [214]

:[213]
call.i instance_destroy(argc=0)
popz.v

:[214]
popenv [213]

:[215]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [217]

:[216]
pushi.e 1
pop.v.i 155.runaway
pushi.e 56
pop.v.i self.conversation
pushi.e 5
pushi.e -5
pushi.e 45
pop.v.i [array]global.flag
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
b [end]

:[217]
pushi.e 603
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.tr
pushi.e 759
push.v self.tr
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.visible
pushi.e -20
pop.v.i self.conversation

:[end]