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
call.i scr_blconmatch(argc=0)
popz.v
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 70
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

:[5]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [12]

:[6]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [9]

:[7]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [9]

:[8]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[12]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
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

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [20]

:[15]
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
pushenv [17]

:[16]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[17]
popenv [16]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [19]

:[18]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
push.v self.normalsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [20]

:[19]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [24]

:[21]
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
pushenv [23]

:[22]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[23]
popenv [22]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[24]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [67]

:[25]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [67]

:[26]
push.v self.mercymod
pushi.e 250
cmp.i.v GT
bf [28]

:[27]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 0
pop.v.i global.turntimer
b [32]

:[31]
pushi.e 110
pop.v.i global.turntimer

:[32]
pushi.e 4
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [34]

:[33]
pushi.e 2
pop.v.i self.mycommand

:[34]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [36]

:[35]
pushi.e 13
pop.v.i global.firingrate
pushi.e 650
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
sub.i.v
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
pop.v.i global.border
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[36]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [38]

:[37]
pushi.e 13
pop.v.i global.firingrate
pushi.e 655
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
sub.i.v
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
pop.v.i global.border
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[38]
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
bf [40]

:[39]
push.s "obj_lesserdoge_420"@15599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [42]

:[41]
push.s "obj_lesserdoge_421"@15601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [44]

:[43]
push.s "obj_lesserdoge_422"@15603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.mycommand
pushi.e 85
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_lesserdoge_423"@15605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.mercymod
pushi.e 40
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_lesserdoge_424"@15607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.mercymod
pushi.e 200
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_lesserdoge_425"@15609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.mercymod
pushi.e 400
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_lesserdoge_426"@15611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.mercymod
pushi.e 700
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_lesserdoge_427"@15613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.mercymod
pushi.e 1640
cmp.i.v GTE
bf [56]

:[55]
push.s "obj_lesserdoge_428"@15615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.mercymod
pushi.e 1740
cmp.i.v GTE
bf [58]

:[57]
push.s "obj_lesserdoge_429"@15617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.mercymod
pushi.e 2190
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_lesserdoge_430"@15619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.mercymod
pushi.e 2340
cmp.i.v GTE
bf [62]

:[61]
push.s "obj_lesserdoge_431"@15621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.mercymod
pushi.e 2640
cmp.i.v GTE
bf [64]

:[63]
push.s "obj_lesserdoge_432"@15623
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LT
bf [66]

:[65]
push.s "obj_lesserdoge_433"@15625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
pushi.e 1
pop.v.i self.attacked

:[67]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [127]

:[68]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [127]

:[69]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [126]

:[70]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [74]

:[71]
pushi.e 0
pop.v.i global.msc
push.s "obj_lesserdoge_449"@15627
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
pushenv [73]

:[72]
pushi.e 0
pop.v.i self.halt

:[73]
popenv [72]

:[74]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bt [79]

:[75]
push.v self.whatiheard
pushi.e 2
cmp.i.v EQ
bt [79]

:[76]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bt [79]

:[77]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bt [79]

:[78]
push.v self.whatiheard
pushi.e 5
cmp.i.v EQ
b [80]

:[79]
push.e 1

:[80]
bf [126]

:[81]
pushi.e 0
pop.v.i global.msc
push.v self.mercymod
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_lesserdoge_457"@15629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
push.v self.mercymod
pushi.e 40
cmp.i.v GT
bf [85]

:[84]
push.s "obj_lesserdoge_458"@15631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[85]
push.v self.mercymod
pushi.e 90
cmp.i.v GT
bf [87]

:[86]
push.s "obj_lesserdoge_459"@15633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[87]
push.v self.mercymod
pushi.e 140
cmp.i.v GT
bf [89]

:[88]
push.s "obj_lesserdoge_460"@15635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[89]
push.v self.mercymod
pushi.e 190
cmp.i.v GT
bf [91]

:[90]
push.s "obj_lesserdoge_461"@15637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[91]
push.v self.mercymod
pushi.e 240
cmp.i.v GT
bf [93]

:[92]
push.s "obj_lesserdoge_462"@15639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[93]
push.v self.mercymod
pushi.e 290
cmp.i.v GT
bf [95]

:[94]
push.s "obj_lesserdoge_463"@15641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[95]
push.v self.mercymod
pushi.e 340
cmp.i.v GT
bf [97]

:[96]
push.s "obj_lesserdoge_464"@15643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[97]
push.v self.mercymod
pushi.e 390
cmp.i.v GT
bf [99]

:[98]
push.s "obj_lesserdoge_465"@15645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[99]
push.v self.mercymod
pushi.e 440
cmp.i.v GT
bf [101]

:[100]
push.s "obj_lesserdoge_466"@15647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[101]
push.v self.mercymod
pushi.e 490
cmp.i.v GT
bf [103]

:[102]
push.s "obj_lesserdoge_467"@15649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[103]
push.v self.mercymod
pushi.e 540
cmp.i.v GT
bf [105]

:[104]
push.s "obj_lesserdoge_468"@15651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[105]
push.v self.mercymod
pushi.e 590
cmp.i.v GT
bf [107]

:[106]
push.s "obj_lesserdoge_469"@15653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[107]
push.v self.mercymod
pushi.e 640
cmp.i.v GT
bf [109]

:[108]
push.s "obj_lesserdoge_470"@15655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[109]
push.v self.mercymod
pushi.e 900
cmp.i.v GT
bf [111]

:[110]
push.s "obj_lesserdoge_471"@15657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[111]
push.v self.mercymod
pushi.e 1640
cmp.i.v GT
bf [113]

:[112]
push.s "obj_lesserdoge_472"@15659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[113]
push.v self.mercymod
pushi.e 2190
cmp.i.v GT
bf [115]

:[114]
push.s "obj_lesserdoge_473"@15661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[115]
push.v self.mercymod
pushi.e 2240
cmp.i.v GT
bf [117]

:[116]
push.s "obj_lesserdoge_474"@15663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[117]
push.v self.mercymod
pushi.e 2640
cmp.i.v GTE
bf [119]

:[118]
push.s "obj_lesserdoge_475"@15665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[119]
push.v self.mercymod
pushi.e 2690
cmp.i.v GTE
bf [121]

:[120]
push.s "obj_lesserdoge_476"@15667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[121]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [123]

:[122]
pushi.e 1
pushi.e -5
pushi.e 141
pop.v.i [array]global.flag

:[123]
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
pushenv [125]

:[124]
pushi.e 0
pop.v.i self.halt

:[125]
popenv [124]
push.v self.mercymod
pushi.e 50
add.i.v
pop.v.v self.mercymod

:[126]
pushi.e 1
pop.v.i global.heard

:[127]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[128]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[129]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[end]