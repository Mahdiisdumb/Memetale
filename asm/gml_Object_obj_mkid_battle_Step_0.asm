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
bf [21]

:[16]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [18]

:[17]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[21]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 6
pop.v.i global.faceemotion
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushi.e 15
pop.v.i self.con
pushi.e 99
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v self.con
pushi.e 20
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [30]

:[27]
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
push.d 20.1
pop.v.d self.con
pushi.e 0
pop.v.i global.myfight
pushi.e 99
pop.v.i global.mnfight

:[30]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [36]

:[31]
pushglb.v global.damage
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
pushi.e 20000
pushi.e 2964
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.i
pop.v.v global.damage

:[33]
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [40]

:[37]
pushi.e 20000
pushi.e 2964
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.i
pop.v.v global.damage
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
pushenv [39]

:[38]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[39]
popenv [38]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[40]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [53]

:[41]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [50]

:[42]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[44]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[46]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [48]

:[47]
pushi.e 335
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
b [49]

:[48]
pushi.e 332
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 2
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 30
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[49]
pushi.e 1
pop.v.i self.attacked

:[50]
push.s "obj_mkid_battle_450"@18150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [52]

:[51]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[52]
pushi.e -1
pop.v.i self.whatiheard

:[53]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [61]

:[54]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [61]

:[55]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [61]

:[56]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [60]

:[57]
pushi.e 0
pop.v.i global.msc
push.s "obj_mkid_battle_479"@18152
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
pushenv [59]

:[58]
pushi.e 0
pop.v.i self.halt

:[59]
popenv [58]
pushi.e 9
pop.v.i self.whatiheard

:[60]
pushi.e 1
pop.v.i global.heard

:[61]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [63]

:[62]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1087
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.wht
pushi.e 0
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 400
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 400
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e -9000
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 16
pop.v.i self.con

:[63]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [69]

:[64]
push.v self.wht
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
add.d.v
pop.i.v [stacktop]self.image_alpha
pushi.e -5
pushi.e 13
push.v [array]global.tempvalue
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.v self.wht
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
add.d.v
pop.i.v [stacktop]self.image_alpha

:[66]
push.v self.wht
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [69]

:[67]
pushi.e 17
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 13
push.v [array]global.tempvalue
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [73]

:[70]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 284
conv.i.v
pushi.e 20
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 310
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1675
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shk
push.v self.undyne
push.v self.shk
conv.v.i
pop.v.v [stacktop]self.obj
pushi.e 70
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.x
push.v self.wht
conv.v.i
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]
pushi.e 19
pop.v.i self.con
pushi.e 8
pop.v.i self.shudder
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[73]
push.v self.con
push.d 20.1
cmp.d.v EQ
bf [76]

:[74]
push.d 20.2
pop.v.d self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 13
push.v [array]global.tempvalue
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
push.d 21.2
cmp.d.v EQ
bf [78]

:[77]
pushi.e 0
pop.v.i global.msc
pushi.e 33
pop.v.i global.typer
pushi.e 0
pop.v.i self.skiptext
pushi.e 0
pop.v.i global.faceemotion
pushi.e 2
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_mkid_battle_553"@18154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 110
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index
pushi.e -2000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -3000
pop.v.i 784.depth
pushi.e 23
pop.v.i self.con

:[78]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [80]

:[79]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 39
pop.v.i global.typer
push.s "obj_mkid_battle_565"@18156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mkid_battle_566"@18158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 160
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 24
pop.v.i self.con

:[83]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [85]

:[84]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
pushi.e 33
pop.v.i global.typer
push.s "obj_mkid_battle_574"@18159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 110
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index
pushi.e 25
pop.v.i self.con

:[88]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [90]

:[89]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e 2
pop.v.i global.faceemotion
pushi.e 39
pop.v.i global.typer
push.s "obj_mkid_battle_584"@18161
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mkid_battle_585"@18163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 160
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
pop.v.i self.con

:[93]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [95]

:[94]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [99]

:[97]
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 27
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 13
push.v [array]global.tempvalue
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
pushi.e -12
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 199
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[99]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [101]

:[100]
pushi.e -2
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 29
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[101]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [103]

:[102]
pushi.e 31
pop.v.i self.con
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[103]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [105]

:[104]
pushi.e -8
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 33
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[105]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [107]

:[106]
pushi.e 286
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.siner
pushi.e 4
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww
pushi.e 3
pop.v.i global.faceemotion
pushi.e 40
pop.v.i global.typer
push.s "obj_mkid_battle_632"@18165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mkid_battle_633"@18167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mkid_battle_634"@18169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mkid_battle_635"@18171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mkid_battle_636"@18173
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 160
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 35
pop.v.i self.con

:[107]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [109]

:[108]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [119]

:[111]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
pushi.e 6
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww

:[113]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [115]

:[114]
pushi.e 8
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww

:[115]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [117]

:[116]
pushi.e 10
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww

:[117]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [119]

:[118]
pushi.e 12
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww

:[119]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [121]

:[120]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 4
pop.v.i global.faceemotion
pushi.e 42
pop.v.i global.typer
push.s "obj_mkid_battle_655"@18175
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mkid_battle_656"@18177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mkid_battle_657"@18179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 160
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 36
pop.v.i self.con

:[124]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [126]

:[125]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [134]

:[128]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 15
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww

:[130]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [132]

:[131]
pushi.e 20
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww

:[132]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [134]

:[133]
pushi.e 25
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww

:[134]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [136]

:[135]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [137]

:[136]
push.e 0

:[137]
bf [142]

:[138]
push.v self.siner
conv.v.i
push.v [stacktop]self.idealww
pushi.e 45
cmp.i.v NEQ
bf [140]

:[139]
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v

:[140]
pushi.e 45
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww
push.v self.siner
conv.v.i
push.v [stacktop]self.ww
pushi.e 45
cmp.i.v GTE
bf [142]

:[141]
pushi.e 37
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[142]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [144]

:[143]
pushi.e 0
pop.v.i self.vol
pushi.e 5
pop.v.i global.faceemotion
pushi.e 8
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww
pushi.e 41
pop.v.i global.typer
push.s "obj_mkid_battle_689"@18180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mkid_battle_690"@18182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 160
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 39
pop.v.i self.con

:[144]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [146]

:[145]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [147]

:[146]
push.e 0

:[147]
bf [149]

:[148]
pushi.e 0
pop.v.i self.vol
push.s "music/x_undyne_pre.ogg"@2816
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.truthmusic
push.d 0.9
conv.d.v
push.v self.vol
push.v self.truthmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 5
pop.v.i global.faceemotion
pushi.e 41
pop.v.i global.typer
push.s "obj_mkid_battle_702"@18184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mkid_battle_703"@18186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mkid_battle_704"@18187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mkid_battle_705"@18189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mkid_battle_706"@18191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mkid_battle_707"@18193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mkid_battle_708"@18195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mkid_battle_709"@18197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mkid_battle_710"@18199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mkid_battle_711"@18201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mkid_battle_712"@18203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mkid_battle_713"@18205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mkid_battle_714"@18207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mkid_battle_715"@18209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mkid_battle_716"@18211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mkid_battle_717"@18213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mkid_battle_718"@18215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mkid_battle_719"@18217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 160
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 40
pop.v.i self.con

:[149]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [151]

:[150]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
pushi.e 42
pop.v.i global.typer
push.s "obj_mkid_battle_728"@18219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 160
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 41
pop.v.i self.con

:[154]
push.v self.con
pushi.e 40
cmp.i.v EQ
bt [156]

:[155]
push.v self.con
pushi.e 41
cmp.i.v EQ
b [157]

:[156]
push.e 1

:[157]
bf [161]

:[158]
push.v self.vol
push.d 0.8
cmp.d.v LTE
bf [160]

:[159]
push.v self.vol
push.d 0.02
add.d.v
pop.v.v self.vol

:[160]
push.v self.vol
push.v self.truthmusic
call.i caster_set_volume(argc=2)
popz.v

:[161]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [163]

:[162]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
push.v self.truthmusic
call.i caster_free(argc=1)
popz.v
push.s "music/f_destroyed2.ogg"@2760
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.risesfx
pushi.e 0
pop.v.i self.vol
push.d 0.5
pop.v.d self.pit
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.v self.risesfx
call.i caster_loop(argc=3)
popz.v
pushi.e 50
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww

:[166]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [168]

:[167]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [169]

:[168]
push.e 0

:[169]
bf [171]

:[170]
pushi.e 1087
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.wht
pushi.e 0
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 400
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 400
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 42
pop.v.i self.con

:[171]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [174]

:[172]
push.v self.wht
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.01
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.wht
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [174]

:[173]
pushi.e 43
pop.v.i self.con
pushi.e 55
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[174]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [180]

:[175]
push.v self.vol
pushi.e 1
cmp.i.v LT
bf [177]

:[176]
push.v self.vol
push.d 0.01
add.d.v
pop.v.v self.vol

:[177]
push.v self.pit
pushi.e 2
cmp.i.v LT
bf [179]

:[178]
push.v self.pit
push.d 0.01
add.d.v
pop.v.v self.pit

:[179]
push.v self.vol
push.v self.risesfx
call.i caster_set_volume(argc=2)
popz.v
push.v self.pit
push.v self.risesfx
call.i caster_set_pitch(argc=2)
popz.v

:[180]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [186]

:[181]
push.v self.vol
pushi.e 0
cmp.i.v GT
bf [183]

:[182]
push.v self.vol
push.d 0.03
sub.d.v
pop.v.v self.vol

:[183]
push.v self.pit
pushi.e 2
cmp.i.v LT
bf [185]

:[184]
push.v self.pit
push.d 0.02
add.d.v
pop.v.v self.pit

:[185]
push.v self.vol
push.v self.risesfx
call.i caster_set_volume(argc=2)
popz.v
push.v self.pit
push.v self.risesfx
call.i caster_set_pitch(argc=2)
popz.v

:[186]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [190]

:[187]
push.v self.wht
conv.v.i
pushenv [189]

:[188]
call.i instance_destroy(argc=0)
popz.v

:[189]
popenv [188]
push.v self.risesfx
call.i caster_free(argc=1)
popz.v
pushi.e 319
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -40
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.yy
pushi.e 0
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 45
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[190]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [192]

:[191]
pushi.e 0
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww
pushi.e 47
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[192]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [195]

:[193]
push.v self.siner
conv.v.i
push.v [stacktop]self.ww
pushi.e 0
cmp.i.v GT
bf [195]

:[194]
push.v self.siner
conv.v.i
dup.i 0
push.v [stacktop]self.ww
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.ww

:[195]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [199]

:[196]
push.v self.siner
conv.v.i
pushenv [198]

:[197]
call.i instance_destroy(argc=0)
popz.v

:[198]
popenv [197]
pushi.e 93
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_mkid_battle_827"@18221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 163
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 49
pop.v.i self.con

:[199]
push.v self.con
pushi.e 49
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
bf [204]

:[203]
pushi.e 92
pop.v.i global.battlegroup
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
call.i room_restart(argc=0)
popz.v

:[204]
push.v self.con
pushi.e 20
cmp.i.v GTE
bf [206]

:[205]
push.v self.con
pushi.e 47
cmp.i.v LTE
b [207]

:[206]
push.e 0

:[207]
bf [209]

:[208]
call.i scr_textskip(argc=0)
popz.v

:[209]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [211]

:[210]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.batmusic
call.i caster_get_volume(argc=1)
pop.v.v self.cc
pushi.e 100
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[211]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [213]

:[212]
push.v self.cc
push.d 0.6
mul.d.v
pop.v.v self.cc
push.v self.cc
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v

:[213]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [215]

:[214]
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[215]
push.v self.con
pushi.e 200
cmp.i.v EQ
bf [217]

:[216]
pushi.e 286
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.siner
pushi.e 4
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww
pushi.e 5
pop.v.i global.faceemotion
pushi.e 8
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww
pushi.e 40
pop.v.i global.typer
push.s "obj_mkid_battle_883"@18223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mkid_battle_884"@18225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 166
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 201
pop.v.i self.con

:[217]
push.v self.con
pushi.e 201
cmp.i.v EQ
bf [219]

:[218]
call.i scr_textskip(argc=0)
popz.v

:[219]
push.v self.con
pushi.e 201
cmp.i.v EQ
bf [221]

:[220]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [222]

:[221]
push.e 0

:[222]
bf [224]

:[223]
push.s "music/f_destroyed2.ogg"@2760
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.risesfx
pushi.e 0
pop.v.i self.vol
push.d 0.5
pop.v.d self.pit
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.v self.risesfx
call.i caster_loop(argc=3)
popz.v
pushi.e 50
push.v self.siner
conv.v.i
pop.v.i [stacktop]self.idealww
pushi.e 1087
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.wht
pushi.e 0
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 400
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 400
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 202
pop.v.i self.con

:[224]
push.v self.con
pushi.e 202
cmp.i.v EQ
bf [227]

:[225]
push.v self.wht
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.wht
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [227]

:[226]
pushi.e 203
pop.v.i self.con
pushi.e 55
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[227]
push.v self.con
pushi.e 202
cmp.i.v EQ
bf [233]

:[228]
push.v self.vol
pushi.e 1
cmp.i.v LT
bf [230]

:[229]
push.v self.vol
push.d 0.02
add.d.v
pop.v.v self.vol

:[230]
push.v self.pit
pushi.e 2
cmp.i.v LT
bf [232]

:[231]
push.v self.pit
push.d 0.02
add.d.v
pop.v.v self.pit

:[232]
push.v self.vol
push.v self.risesfx
call.i caster_set_volume(argc=2)
popz.v
push.v self.pit
push.v self.risesfx
call.i caster_set_pitch(argc=2)
popz.v

:[233]
push.v self.con
pushi.e 203
cmp.i.v EQ
bf [239]

:[234]
push.v self.vol
pushi.e 0
cmp.i.v GT
bf [236]

:[235]
push.v self.vol
push.d 0.03
sub.d.v
pop.v.v self.vol

:[236]
push.v self.pit
pushi.e 2
cmp.i.v LT
bf [238]

:[237]
push.v self.pit
push.d 0.02
add.d.v
pop.v.v self.pit

:[238]
push.v self.vol
push.v self.risesfx
call.i caster_set_volume(argc=2)
popz.v
push.v self.pit
push.v self.risesfx
call.i caster_set_pitch(argc=2)
popz.v

:[239]
push.v self.con
pushi.e 204
cmp.i.v EQ
bf [241]

:[240]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [242]

:[241]
push.e 0

:[242]
bf [244]

:[243]
pushi.e 92
pop.v.i global.battlegroup
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
call.i room_restart(argc=0)
popz.v

:[244]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [247]

:[245]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [247]

:[246]
pushi.e 99
pop.v.i self.con
pushi.e -99
pop.v.i global.myfight
pushi.e -99
pop.v.i global.mnfight
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v

:[247]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [249]

:[248]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [250]

:[249]
push.e 0

:[250]
bf [end]

:[251]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]