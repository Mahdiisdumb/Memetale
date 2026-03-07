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
bf [47]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [44]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
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
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [42]

:[41]
pushi.e 190
pop.v.i global.turntimer
pushi.e 460
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 35
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.factor
pushi.e 9
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
b [43]

:[42]
pushi.e 180
pop.v.i global.turntimer
pushi.e 471
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff
pushi.e 9
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg

:[43]
pushi.e 1
pop.v.i self.turnoff
push.s "obj_ripoff_toriel_465"@23450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.attacked

:[44]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [46]

:[45]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[46]
pushi.e -1
pop.v.i self.whatiheard

:[47]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [91]

:[48]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [91]

:[49]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [91]

:[50]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [59]

:[51]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [53]

:[52]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[53]
popenv [52]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_toriel_502"@23452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_toriel_503"@23454
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [56]

:[54]
push.s "obj_ripoff_toriel_506"@23456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight
push.v 564.mercyno
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_ripoff_toriel_512"@23458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_toriel_513"@23460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[56]
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
pushenv [58]

:[57]
pushi.e 0
pop.v.i self.halt

:[58]
popenv [57]
pushi.e 9
pop.v.i self.whatiheard

:[59]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [68]

:[60]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [62]

:[61]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[62]
popenv [61]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_toriel_529"@23462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_toriel_530"@23464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [65]

:[63]
push.s "obj_ripoff_toriel_533"@23465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight
push.v 564.mercyno
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_ripoff_toriel_539"@23466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_toriel_540"@23467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[65]
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
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.halt

:[67]
popenv [66]

:[68]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [77]

:[69]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [71]

:[70]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[71]
popenv [70]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_toriel_556"@23469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_toriel_557"@23471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [74]

:[72]
push.s "obj_ripoff_toriel_560"@23472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight
push.v 564.mercyno
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_ripoff_toriel_566"@23473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_toriel_567"@23474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[74]
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
pushenv [76]

:[75]
pushi.e 0
pop.v.i self.halt

:[76]
popenv [75]

:[77]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [90]

:[78]
pushi.e 0
pop.v.i global.msc
pushi.e 607
pushenv [80]

:[79]
push.v self.totalmercy
pushi.e 1
add.i.v
pop.v.v self.totalmercy

:[80]
popenv [79]
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
pushi.e -5
pushi.e 46
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_ripoff_toriel_587"@23476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
pushi.e -5
pushi.e 46
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_ripoff_toriel_592"@23478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.s "obj_ripoff_toriel_595"@23480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.totalmercy
pushi.e 4
cmp.i.v GTE
bf [87]

:[85]
push.s "obj_ripoff_toriel_598"@23482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight
push.v 564.mercyno
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
push.s "obj_ripoff_toriel_604"@23483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_ripoff_toriel_605"@23484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[87]
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
pushi.e 1
pop.v.i global.heard

:[91]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [95]

:[92]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [95]

:[93]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [97]

:[96]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [101]

:[99]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [101]

:[100]
call.i instance_destroy(argc=0)
popz.v

:[101]
pushglb.v global.mnfight
pushi.e 5
cmp.i.v EQ
bf [103]

:[102]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [117]

:[105]
push.v self.saved
pushi.e 1
cmp.i.v EQ
bf [113]

:[106]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [108]

:[107]
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[108]
pushi.e 1668
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.saved
pushi.e 3
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm
pushi.e 564
pushenv [112]

:[111]
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.face

:[112]
popenv [111]

:[113]
push.v self.saved
pushi.e 3
cmp.i.v EQ
bf [117]

:[114]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 8
pop.v.i global.typer
push.s "obj_ripoff_toriel_665"@23486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 160
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 564
pushenv [116]

:[115]
pushi.e 0
pop.v.i global.msc
pushi.e 63
pop.v.i global.typer
push.s "obj_ripoff_toriel_672"@23488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 140
conv.i.v
pushi.e 160
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 39
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[116]
popenv [115]
pushi.e 4
pop.v.i self.saved

:[117]
push.v self.saved
pushi.e 4
cmp.i.v EQ
bf [121]

:[118]
push.v self.writer
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [121]

:[119]
push.v 564.writer
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [121]

:[120]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [122]

:[121]
push.e 0

:[122]
bf [128]

:[123]
push.v self.writer
conv.v.i
pushenv [125]

:[124]
call.i instance_destroy(argc=0)
popz.v

:[125]
popenv [124]
push.v 564.writer
conv.v.i
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]
pushi.e 558
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.saved
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 34
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[128]
push.v self.saved
pushi.e 6
cmp.i.v EQ
bf [130]

:[129]
pushi.e 256
pop.v.i global.battlegroup
pushi.e 1
pushi.e -5
pushi.e 508
pop.v.i [array]global.flag
call.i room_restart(argc=0)
popz.v

:[130]
push.v self.turnoff
pushi.e 1
cmp.i.v EQ
bf [132]

:[131]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
b [133]

:[132]
push.e 0

:[133]
bf [end]

:[134]
pushi.e 0
pop.v.i self.dont
pushi.e -1
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.turnoff
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight

:[end]