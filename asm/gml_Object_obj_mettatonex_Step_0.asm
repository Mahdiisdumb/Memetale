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
bf [28]

:[13]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [28]

:[14]
push.v self.turns
pushi.e 19
cmp.i.v GTE
bf [16]

:[15]
pushglb.v global.ratings
pushi.e 10000
cmp.i.v GTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i self.qualify

:[19]
push.v self.turns
pushi.e 19
cmp.i.v LT
bf [21]

:[20]
pushglb.v global.ratings
pushi.e 12000
cmp.i.v GTE
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.i self.qualify

:[24]
push.v self.qualify
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
b [27]

:[26]
pushi.e 90
pop.v.i self.con

:[27]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[28]
push.v self.talked
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[33]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
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

:[35]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [42]

:[36]
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
pushenv [38]

:[37]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[38]
popenv [37]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [40]

:[39]
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
b [42]

:[40]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e -1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
pushi.e 1
pop.v.i self.killed
pushi.e 50
pop.v.i self.con

:[42]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [46]

:[43]
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
pushenv [45]

:[44]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[45]
popenv [44]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[46]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [77]

:[47]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [74]

:[48]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 10
pop.v.i global.turntimer
push.v self.turns
pushi.e 1
cmp.i.v GTE
bf [61]

:[49]
pushi.e 29
push.v self.turns
add.v.i
pop.v.v global.attacktype
pushglb.v global.attacktype
pushi.e 54
cmp.i.v EQ
bf [51]

:[50]
push.v self.turns
pushi.e 5
sub.i.v
pop.v.v self.turns
pushi.e 49
pop.v.i global.attacktype

:[51]
pushglb.v global.attacktype
pushi.e 50
cmp.i.v GTE
bf [60]

:[52]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdef
pushi.e -10
cmp.i.v GTE
bf [54]

:[53]
pushi.e -10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[54]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterdef
pushi.e 5
sub.i.v
pop.i.v [array]global.monsterdef
pushglb.v global.attacktype
pushi.e 50
cmp.i.v EQ
bf [56]

:[55]
pushi.e 38
pop.v.i global.attacktype

:[56]
pushglb.v global.attacktype
pushi.e 51
cmp.i.v EQ
bf [58]

:[57]
pushi.e 54
pop.v.i global.attacktype

:[58]
pushglb.v global.attacktype
pushi.e 52
cmp.i.v EQ
bf [60]

:[59]
pushi.e 56
pop.v.i global.attacktype

:[60]
pushi.e 415
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[61]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_mettatonex_638"@17417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [65]

:[64]
push.s "obj_mettatonex_639"@17418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [67]

:[66]
push.s "obj_mettatonex_640"@17419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [69]

:[68]
push.s "obj_mettatonex_641"@17420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [71]

:[70]
push.s "obj_mettatonex_642"@17422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
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
bf [73]

:[72]
push.s "obj_mettatonex_644"@17424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
pushi.e 1
pop.v.i self.attacked

:[74]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [76]

:[75]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[76]
pushi.e -1
pop.v.i self.whatiheard

:[77]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [109]

:[78]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [109]

:[79]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [109]

:[80]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [84]

:[81]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_677"@17426
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
pushenv [83]

:[82]
pushi.e 0
pop.v.i self.halt

:[83]
popenv [82]
pushi.e 9
pop.v.i self.whatiheard

:[84]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [90]

:[85]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_691"@17428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_692"@17430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 403
pushenv [87]

:[86]
pushi.e 1
pop.v.i self.boastmode

:[87]
popenv [86]
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
pushenv [89]

:[88]
pushi.e 0
pop.v.i self.halt

:[89]
popenv [88]

:[90]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [102]

:[91]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_706"@17432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.hp
pushglb.v global.maxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [93]

:[92]
push.s "obj_mettatonex_708"@17434
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[93]
pushglb.v global.hp
pushglb.v global.maxhp
pushi.e 4
conv.i.d
div.d.v
cmp.v.v LT
bf [95]

:[94]
push.s "obj_mettatonex_710"@17436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[95]
pushglb.v global.hp
pushi.e 3
cmp.i.v LTE
bf [97]

:[96]
push.s "obj_mettatonex_712"@17438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[97]
pushi.e 403
pushenv [99]

:[98]
pushi.e 11
pop.v.i self.curtype
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[99]
popenv [98]
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
pushenv [101]

:[100]
pushi.e 0
pop.v.i self.halt

:[101]
popenv [100]

:[102]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [108]

:[103]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_726"@17440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_727"@17442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 403
pushenv [105]

:[104]
pushi.e 1
pop.v.i self.heel

:[105]
popenv [104]
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
pushenv [107]

:[106]
pushi.e 0
pop.v.i self.halt

:[107]
popenv [106]

:[108]
pushi.e 1
pop.v.i global.heard

:[109]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [119]

:[110]
pushi.e 403
pushenv [112]

:[111]
pushi.e 0
pop.v.i self.active

:[112]
popenv [111]
pushi.e 190
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 784
pushenv [116]

:[115]
call.i instance_destroy(argc=0)
popz.v

:[116]
popenv [115]
push.v self.mypart1
conv.v.i
pushenv [118]

:[117]
pushi.e 2
pop.v.i self.hurt
pushi.e 0
pop.v.i self.sineron
pushi.e 3
pop.v.i self.pause
push.d 0.5
pop.v.d self.dsf

:[118]
popenv [117]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 51
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[119]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [121]

:[120]
pushi.e 53
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_770"@17444
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_771"@17446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonex_772"@17448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonex_773"@17450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettatonex_774"@17452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettatonex_775"@17454
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettatonex_776"@17456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettatonex_777"@17458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettatonex_778"@17460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mettatonex_779"@17462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mettatonex_780"@17464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mettatonex_781"@17466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mettatonex_782"@17468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 53
pop.v.i self.con
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 180
add.i.v
call.i scr_blcon_x(argc=2)
popz.v

:[121]
push.v self.con
pushi.e 53
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
bf [126]

:[125]
pushi.e 54
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[126]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [130]

:[127]
push.v self.mypart1
conv.v.i
pushenv [129]

:[128]
push.v self.dsf
push.d 0.012
sub.d.v
pop.v.v self.dsf

:[129]
popenv [128]

:[130]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [132]

:[131]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [137]

:[134]
pushi.e 54
pop.v.i global.typer
push.v self.mypart1
conv.v.i
pushenv [136]

:[135]
pushi.e 0
pop.v.i self.dsf

:[136]
popenv [135]
push.s "obj_mettatonex_804"@17470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 180
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 56
pop.v.i self.con

:[137]
push.v self.con
pushi.e 56
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
bf [142]

:[141]
push.s "music/explosion.ogg"@2722
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.explode
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.fadewhite
pushi.e 57
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[142]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [144]

:[143]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.explode
call.i caster_play(argc=3)
popz.v
push.v global.xp
pushi.e 800
add.i.v
pop.v.v global.xp
call.i scr_levelup(argc=0)
popz.v
push.v global.kills
pushi.e 1
add.i.v
pop.v.v global.kills
pushi.e 1
pushi.e -5
pushi.e 425
pop.v.i [array]global.flag
pushi.e 59
pop.v.i self.con

:[144]
push.v self.con
pushi.e 90
cmp.i.v EQ
bf [148]

:[145]
pushi.e 190
pushenv [147]

:[146]
call.i instance_destroy(argc=0)
popz.v

:[147]
popenv [146]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.endface
pushi.e 51
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_836"@17472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_837"@17474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonex_838"@17476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonex_839"@17478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettatonex_840"@17480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettatonex_841"@17482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 91
pop.v.i self.con
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 180
add.i.v
call.i scr_blcon_x(argc=2)
pop.v.v self.blc

:[148]
push.v self.con
pushi.e 91
cmp.i.v EQ
bf [150]

:[149]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [151]

:[150]
push.e 0

:[151]
bf [153]

:[152]
pushglb.v global.batmusic
call.i caster_get_volume(argc=1)
pop.v.v self.vol
push.v self.vol
push.d 0.02
sub.d.v
pop.v.v self.vol
push.v self.vol
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v

:[153]
push.v self.con
pushi.e 91
cmp.i.v EQ
bf [155]

:[154]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [156]

:[155]
push.e 0

:[156]
bf [158]

:[157]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 93
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[158]
push.v self.con
pushi.e 94
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
bf [163]

:[162]
pushi.e 51
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_866"@17484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_867"@17486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 95
pop.v.i self.con
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 180
add.i.v
call.i scr_blcon_x(argc=2)
popz.v

:[163]
push.v self.con
pushi.e 95
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
bf [168]

:[167]
pushi.e 187
conv.i.v
pushi.e 200
conv.i.v
pushi.e 530
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shblcon
pushi.e 36
push.v self.shblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.s "music/mettsad.ogg"@2859
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sadmett
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
push.v self.sadmett
call.i caster_loop(argc=3)
popz.v
pushi.e 92
pop.v.i global.typer
push.s "obj_mettatonex_880"@17488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_881"@17490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonex_882"@17492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonex_883"@17494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettatonex_884"@17496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettatonex_885"@17498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettatonex_886"@17500
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettatonex_887"@17502
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettatonex_888"@17504
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mettatonex_889"@17506
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 60
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 96
pop.v.i self.con

:[168]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [170]

:[169]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [171]

:[170]
push.e 0

:[171]
bf [175]

:[172]
pushi.e 187
pushenv [174]

:[173]
call.i instance_destroy(argc=0)
popz.v

:[174]
popenv [173]
pushi.e 51
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_900"@17508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_901"@17510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonex_902"@17511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonex_903"@17513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 97
pop.v.i self.con
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 180
add.i.v
call.i scr_blcon_x(argc=2)
popz.v

:[175]
push.v self.con
pushi.e 97
cmp.i.v EQ
bf [177]

:[176]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
bf [180]

:[179]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 187
conv.i.v
pushi.e 200
conv.i.v
pushi.e 530
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shblcon
pushi.e 36
push.v self.shblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 92
pop.v.i global.typer
push.s "obj_mettatonex_915"@17515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 60
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 98
pop.v.i self.con

:[180]
push.v self.con
pushi.e 98
cmp.i.v EQ
bf [182]

:[181]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [183]

:[182]
push.e 0

:[183]
bf [187]

:[184]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 187
conv.i.v
pushi.e 200
conv.i.v
pushi.e 560
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shblcon
pushi.e 36
push.v self.shblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.shblcon
conv.v.i
pushenv [186]

:[185]
push.v self.depth
pushi.e 4
sub.i.v
pop.v.v self.depth

:[186]
popenv [185]
pushi.e 92
pop.v.i global.typer
push.s "obj_mettatonex_928"@17517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 60
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 99
pop.v.i self.con

:[187]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [189]

:[188]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [190]

:[189]
push.e 0

:[190]
bf [194]

:[191]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 187
conv.i.v
pushi.e 200
conv.i.v
pushi.e 520
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shblcon
pushi.e 36
push.v self.shblcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.shblcon
conv.v.i
pushenv [193]

:[192]
push.v self.depth
pushi.e 8
sub.i.v
pop.v.v self.depth

:[193]
popenv [192]
pushi.e 92
pop.v.i global.typer
push.s "obj_mettatonex_941"@17519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 60
conv.i.v
pushi.e 410
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 100
pop.v.i self.con

:[194]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [196]

:[195]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [197]

:[196]
push.e 0

:[197]
bf [199]

:[198]
pushi.e 101
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[199]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [201]

:[200]
push.v 187.image_alpha
push.d 0.035
sub.d.v
pop.v.v 187.image_alpha

:[201]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [205]

:[202]
pushi.e 187
pushenv [204]

:[203]
call.i instance_destroy(argc=0)
popz.v

:[204]
popenv [203]
pushi.e 51
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonex_964"@17521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_965"@17523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonex_966"@17524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonex_967"@17526
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettatonex_968"@17527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettatonex_969"@17529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettatonex_970"@17531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettatonex_971"@17533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettatonex_972"@17535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mettatonex_973"@17537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mettatonex_974"@17539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mettatonex_975"@17541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mettatonex_976"@17543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mettatonex_977"@17545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mettatonex_978"@17547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mettatonex_979"@17549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mettatonex_980"@17551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mettatonex_981"@17553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mettatonex_982"@17555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mettatonex_983"@17557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mettatonex_984"@17559
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_mettatonex_985"@17561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_mettatonex_986"@17563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_mettatonex_987"@17565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_mettatonex_988"@17567
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_mettatonex_989"@17569
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
pushi.e 103
pop.v.i self.con
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 180
add.i.v
call.i scr_blcon_x(argc=2)
popz.v

:[205]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [207]

:[206]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [208]

:[207]
push.e 0

:[208]
bf [221]

:[209]
push.v 784.stringno
pushi.e 20
cmp.i.v EQ
bf [211]

:[210]
push.d 0.8
conv.d.v
push.v self.sadmett
call.i caster_set_volume(argc=2)
popz.v

:[211]
push.v 784.stringno
pushi.e 21
cmp.i.v EQ
bf [213]

:[212]
push.d 0.6
conv.d.v
push.v self.sadmett
call.i caster_set_volume(argc=2)
popz.v

:[213]
push.v 784.stringno
pushi.e 22
cmp.i.v EQ
bf [215]

:[214]
push.d 0.4
conv.d.v
push.v self.sadmett
call.i caster_set_volume(argc=2)
popz.v

:[215]
push.v 784.stringno
pushi.e 23
cmp.i.v EQ
bf [217]

:[216]
push.d 0.2
conv.d.v
push.v self.sadmett
call.i caster_set_volume(argc=2)
popz.v

:[217]
push.v 784.stringno
pushi.e 24
cmp.i.v EQ
bf [219]

:[218]
push.d 0.1
conv.d.v
push.v self.sadmett
call.i caster_set_volume(argc=2)
popz.v

:[219]
push.v 784.stringno
pushi.e 25
cmp.i.v EQ
bf [221]

:[220]
pushi.e 0
conv.i.v
push.v self.sadmett
call.i caster_set_volume(argc=2)
popz.v

:[221]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [223]

:[222]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [226]

:[225]
push.s "music/create.ogg"@2708
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.impact
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
push.v self.impact
call.i caster_play(argc=3)
popz.v
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.fadewhite
pushi.e 105
pop.v.i self.con

:[226]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[227]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[228]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]