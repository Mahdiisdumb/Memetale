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
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.stretchup

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
bf [64]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [61]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 200
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[38]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[40]
push.v self.turns
pushi.e 0
cmp.i.v GT
bf [45]

:[41]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 536
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 2
pop.v.i self.turns
b [44]

:[43]
pushi.e 1
pop.v.i self.turns
pushi.e 537
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg

:[44]
b [46]

:[45]
pushi.e 250
pop.v.i global.turntimer
pushi.e 539
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 1
pop.v.i self.turns

:[46]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_reaperbird_446"@23242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_reaperbird_447"@23243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_reaperbird_448"@23244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_reaperbird_449"@23245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.mycommand
pushi.e 98
cmp.i.v GTE
bf [56]

:[55]
push.s "obj_reaperbird_450"@23247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [58]

:[57]
push.s "obj_reaperbird_451"@23249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 4
conv.i.d
div.d.v
cmp.v.v LTE
bf [60]

:[59]
push.s "obj_reaperbird_452"@23250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
pushi.e 1
pop.v.i self.attacked

:[61]
push.v self.mercymod
push.i 99999
cmp.i.v EQ
bf [63]

:[62]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[63]
pushi.e -1
pop.v.i self.whatiheard

:[64]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [132]

:[65]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [132]

:[66]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [132]

:[67]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [79]

:[68]
push.v self.mercymod
pushi.e 100
cmp.i.v LT
bf [76]

:[69]
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i 784.halt
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdef
call.i string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
call.i string(argc=1)
push.s "obj_reaperbird_488"@23252
conv.s.v
call.i scr_gettext(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
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
pushenv [71]

:[70]
pushi.e 0
pop.v.i self.halt

:[71]
popenv [70]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdef
call.i string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
call.i string(argc=1)
push.s "obj_reaperbird_492"@23254
conv.s.v
call.i scr_gettext(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
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
pushenv [73]

:[72]
pushi.e 0
pop.v.i self.halt

:[73]
popenv [72]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdef
call.i string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
call.i string(argc=1)
push.s "obj_reaperbird_496"@23256
conv.s.v
call.i scr_gettext(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
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
pushenv [75]

:[74]
pushi.e 0
pop.v.i self.halt

:[75]
popenv [74]
pushi.e 9
pop.v.i self.whatiheard
b [79]

:[76]
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i 784.halt
push.s "obj_reaperbird_505"@23258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
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

:[79]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [93]

:[80]
pushi.e 0
pop.v.i global.msc
push.v self.pickon
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_reaperbird_514"@23260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.pickon
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_reaperbird_516"@23262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
pushi.e 1
pop.v.i self.pickon
push.v self.pray
pushi.e 1
cmp.i.v EQ
bf [87]

:[85]
push.v self.pickon
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.v self.mystify
pushi.e 1
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
push.i 999999
pop.v.i self.mercymod
push.s "monstername_54b"@6888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
push.s "obj_reaperbird_523"@23264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
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
pushenv [92]

:[91]
pushi.e 0
pop.v.i self.halt

:[92]
popenv [91]

:[93]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [107]

:[94]
pushi.e 0
pop.v.i global.msc
push.v self.mystify
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_reaperbird_536"@23266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
push.v self.mystify
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_reaperbird_538"@23268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[98]
pushi.e 1
pop.v.i self.mystify
push.v self.pray
pushi.e 1
cmp.i.v EQ
bf [101]

:[99]
push.v self.pickon
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.v self.mystify
pushi.e 1
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
push.i 999999
pop.v.i self.mercymod
push.s "monstername_54b"@6888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
push.s "obj_reaperbird_545"@23270
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
pushi.e 4
cmp.i.v EQ
bf [113]

:[108]
pushi.e 0
pop.v.i global.msc
push.s "obj_reaperbird_557"@23272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.xclean
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_reaperbird_559"@23274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[110]
pushi.e 3
pop.v.i 784.halt
pushi.e 1
pop.v.i self.xclean
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

:[113]
push.v self.whatiheard
pushi.e 2
cmp.i.v EQ
bf [117]

:[114]
pushi.e 0
pop.v.i global.msc
push.s "obj_reaperbird_569"@23276
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
pushenv [116]

:[115]
pushi.e 0
pop.v.i self.halt

:[116]
popenv [115]

:[117]
push.v self.whatiheard
pushi.e 5
cmp.i.v EQ
bf [131]

:[118]
pushi.e 0
pop.v.i global.msc
push.v self.pray
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_reaperbird_579"@23278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[120]
push.v self.pray
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
push.s "obj_reaperbird_581"@23280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[122]
pushi.e 1
pop.v.i self.pray
push.v self.pray
pushi.e 1
cmp.i.v EQ
bf [125]

:[123]
push.v self.pickon
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.v self.mystify
pushi.e 1
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
push.i 999999
pop.v.i self.mercymod
push.s "monstername_54b"@6888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
push.s "obj_reaperbird_588"@23282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[128]
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
pushenv [130]

:[129]
pushi.e 0
pop.v.i self.halt

:[130]
popenv [129]

:[131]
pushi.e 1
pop.v.i global.heard

:[132]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [136]

:[133]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [136]

:[134]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [136]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[136]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [138]

:[137]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [139]

:[138]
push.e 0

:[139]
bf [end]

:[140]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[end]