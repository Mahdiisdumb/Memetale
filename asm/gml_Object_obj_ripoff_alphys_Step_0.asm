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
bf [48]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [45]

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
pushi.e 10
pop.v.i global.turntimer
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 36
pop.v.i global.attacktype
pushi.e 415
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[42]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.specialdam
pushi.e 40
pop.v.i global.attacktype
pushi.e 415
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[44]
push.s "obj_ripoff_alphys_473"@23293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.attacked

:[45]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [47]

:[46]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[47]
pushi.e -1
pop.v.i self.whatiheard

:[48]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [76]

:[49]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [76]

:[50]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [76]

:[51]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [57]

:[52]
pushi.e 0
pop.v.i global.msc
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_alphys_508"@23295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_alphys_509"@23297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercyno
pushi.e 3
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_ripoff_alphys_512"@23299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight

:[54]
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
pushenv [56]

:[55]
pushi.e 0
pop.v.i self.halt

:[56]
popenv [55]
pushi.e 9
pop.v.i self.whatiheard

:[57]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [63]

:[58]
pushi.e 0
pop.v.i global.msc
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_alphys_525"@23301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_alphys_526"@23303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercyno
pushi.e 3
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_ripoff_alphys_529"@23305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight

:[60]
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
pushenv [62]

:[61]
pushi.e 0
pop.v.i self.halt

:[62]
popenv [61]

:[63]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [69]

:[64]
pushi.e 0
pop.v.i global.msc
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_alphys_543"@23307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_alphys_544"@23309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercyno
pushi.e 3
cmp.i.v GTE
bf [66]

:[65]
push.s "obj_ripoff_alphys_547"@23310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight

:[66]
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
pushenv [68]

:[67]
pushi.e 0
pop.v.i self.halt

:[68]
popenv [67]

:[69]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [75]

:[70]
pushi.e 0
pop.v.i global.msc
push.v self.mercyno
pushi.e 1
add.i.v
pop.v.v self.mercyno
push.s "obj_ripoff_alphys_560"@23312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_ripoff_alphys_561"@23314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.mercyno
pushi.e 3
cmp.i.v GTE
bf [72]

:[71]
push.s "obj_ripoff_alphys_564"@23316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.saved
pushi.e 5
pop.v.i global.mnfight

:[72]
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
pushenv [74]

:[73]
pushi.e 0
pop.v.i self.halt

:[74]
popenv [73]

:[75]
pushi.e 1
pop.v.i global.heard

:[76]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [80]

:[77]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [80]

:[78]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [82]

:[81]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [86]

:[84]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
pushglb.v global.mnfight
pushi.e 5
cmp.i.v EQ
bf [88]

:[87]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [end]

:[90]
push.v self.saved
pushi.e 1
cmp.i.v EQ
bf [96]

:[91]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [93]

:[92]
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[93]
pushi.e 1668
pushenv [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
popenv [94]
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

:[96]
push.v self.saved
pushi.e 3
cmp.i.v EQ
bf [98]

:[97]
pushi.e 5
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 74
pop.v.i global.typer
pushi.e 1
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.noanim
pushi.e 0
push.v self.part1
conv.v.i
pop.v.i [stacktop]self.spearalpha
push.s "obj_ripoff_alphys_628"@23318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
push.v self.x
pushi.e 110
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 4
pop.v.i self.saved

:[98]
push.v self.saved
pushi.e 4
cmp.i.v EQ
bf [100]

:[99]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
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

:[103]
push.v self.saved
pushi.e 6
cmp.i.v EQ
bf [end]

:[104]
pushi.e 256
pop.v.i global.battlegroup
pushi.e 1
pushi.e -5
pushi.e 506
pop.v.i [array]global.flag
call.i room_restart(argc=0)
popz.v

:[end]