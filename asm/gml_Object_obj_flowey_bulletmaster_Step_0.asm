.localvar 0 arguments
.localvar 1 text_x 9839

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.attacktimer
push.v self.attacktimermax
cmp.v.v GTE
bf [6]

:[2]
pushi.e 1589
pushenv [4]

:[3]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]
pushi.e -100
pop.v.i self.attacktimer
push.v self.timer
push.v self.maxtimer
pushi.e 70
sub.i.v
cmp.v.v LT
bf [6]

:[5]
pushi.e -100
pop.v.i self.attacktimer
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
push.v self.timer
push.v self.atimer
cmp.v.v EQ
bf [9]

:[7]
pushi.e 1602
conv.i.v
pushi.e 420
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fightbt
pushi.e 110
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushglb.v global.battlephase
pushi.e 6
cmp.i.v EQ
bf [9]

:[8]
pushi.e 79
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.atimer
pushi.e 80
add.i.v
pop.v.v self.atimer

:[9]
push.v self.timer
push.v self.maxtimer
cmp.v.v GTE
bf [12]

:[10]
push.v self.phase_s
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushglb.v global.battlephase
pushi.e 6
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [48]

:[14]
pushi.e 1602
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[15]
pushi.e 1602
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]

:[18]
pushi.e 1
pop.v.i self.phase_s
pushi.e 155
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1591
pushenv [22]

:[19]
push.v self.mustype
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_endnote
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.mustype

:[21]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_alarm
call.i caster_play(argc=3)
popz.v

:[22]
popenv [19]
pushi.e 1593
pushenv [24]

:[23]
pushi.e 1
pop.v.i self.tvmode

:[24]
popenv [23]
pushglb.v global.soul_rescue
pushi.e 0
cmp.i.v EQ
bf [28]

:[25]
pushi.e 1599
pushenv [27]

:[26]
pushi.e 1
pop.v.i self.flash

:[27]
popenv [26]

:[28]
pushglb.v global.soul_rescue
pushi.e 1
cmp.i.v EQ
bf [32]

:[29]
pushi.e 1599
pushenv [31]

:[30]
pushi.e 2
pop.v.i self.flash

:[31]
popenv [30]

:[32]
pushglb.v global.soul_rescue
pushi.e 2
cmp.i.v EQ
bf [36]

:[33]
pushi.e 1600
pushenv [35]

:[34]
pushi.e 1
pop.v.i self.flash

:[35]
popenv [34]

:[36]
pushglb.v global.soul_rescue
pushi.e 3
cmp.i.v EQ
bf [40]

:[37]
pushi.e 1600
pushenv [39]

:[38]
pushi.e 2
pop.v.i self.flash

:[39]
popenv [38]

:[40]
pushglb.v global.soul_rescue
pushi.e 4
cmp.i.v EQ
bf [44]

:[41]
pushi.e 1601
pushenv [43]

:[42]
pushi.e 1
pop.v.i self.flash

:[43]
popenv [42]

:[44]
pushglb.v global.soul_rescue
pushi.e 5
cmp.i.v EQ
bf [48]

:[45]
pushi.e 1601
pushenv [47]

:[46]
pushi.e 2
pop.v.i self.flash

:[47]
popenv [46]

:[48]
push.v self.phase_s
pushi.e 2
cmp.i.v EQ
bf [58]

:[49]
pushi.e 1593
pushenv [51]

:[50]
pushi.e 2
pop.v.i self.tvmode

:[51]
popenv [50]
pushi.e 1587
pushenv [53]

:[52]
pushi.e 0
pop.v.i self.move

:[53]
popenv [52]
pushi.e 1591
pushenv [55]

:[54]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_noise
call.i caster_loop(argc=3)
popz.v
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[55]
popenv [54]
pushi.e 314
pop.v.i self.idealhx
pushi.e 400
pop.v.i self.idealhy
pushglb.v global.soul_rescue
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
pushi.e 450
pop.v.i self.idealhy

:[57]
push.v 1587.x
pop.v.v self.nowhx
push.v 1587.y
pop.v.v self.nowhy
push.v self.idealhx
push.v self.nowhx
sub.v.v
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.nowhxadd
push.v self.idealhy
push.v self.nowhy
sub.v.v
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.nowhyadd
pushi.e 3
pop.v.i self.phase_s
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[58]
push.v self.phase_s
pushi.e 3
cmp.i.v EQ
bf [60]

:[59]
push.v 1587.x
push.v self.nowhxadd
add.v.v
pop.v.v 1587.x
push.v 1587.y
push.v self.nowhyadd
add.v.v
pop.v.v 1587.y

:[60]
push.v self.phase_s
pushi.e 4
cmp.i.v EQ
bf [82]

:[61]
push.v self.idealhx
pop.v.v 1587.x
push.v self.idealhy
pop.v.v 1587.y
pushi.e 1
pop.v.i 1587.move
pushi.e 1593
pushenv [63]

:[62]
pushi.e 3
pop.v.i self.tvmode

:[63]
popenv [62]
pushi.e 1591
pushenv [65]

:[64]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushglb.v global.soul_rescue
conv.v.i
push.v [array]self.mus_soul
call.i caster_loop(argc=3)
popz.v

:[65]
popenv [64]
pushglb.v global.soul_rescue
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1632
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[67]
pushglb.v global.soul_rescue
pushi.e 1
cmp.i.v EQ
bf [71]

:[68]
pushi.e 1623
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v self.room_width
push.d 0.5
mul.d.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -120
conv.i.v
pushbltn.v self.room_width
pushi.e 0
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -120
conv.i.v
pushbltn.v self.room_width
pushi.e 1
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -400
conv.i.v
pushbltn.v self.room_width
push.d 0.5
mul.d.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -520
conv.i.v
pushbltn.v self.room_width
pushi.e 0
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -520
conv.i.v
pushbltn.v self.room_width
pushi.e 1
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -800
conv.i.v
pushbltn.v self.room_width
push.d 0.5
mul.d.v
call.i instance_create(argc=3)
pop.v.v self.lg
push.v self.lg
conv.v.i
pushenv [70]

:[69]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[70]
popenv [69]
pushi.e 1623
conv.i.v
pushi.e -920
conv.i.v
pushbltn.v self.room_width
pushi.e 0
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -920
conv.i.v
pushbltn.v self.room_width
pushi.e 1
mul.i.v
call.i instance_create(argc=3)
popz.v

:[71]
pushglb.v global.soul_rescue
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1620
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[73]
pushglb.v global.soul_rescue
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1630
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[75]
pushglb.v global.soul_rescue
pushi.e 4
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1625
conv.i.v
pushi.e 260
conv.i.v
pushi.e 190
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1625
conv.i.v
pushi.e 260
conv.i.v
pushi.e 415
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ppp
pushi.e 1
push.v self.ppp
conv.v.i
pop.v.i [stacktop]self.spec
pushi.e 1625
conv.i.v
pushi.e 260
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
popz.v

:[77]
pushglb.v global.soul_rescue
pushi.e 5
cmp.i.v EQ
bf [79]

:[78]
pushi.e 1615
conv.i.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
call.i instance_create(argc=3)
popz.v

:[79]
pushglb.v global.soul_rescue
pushi.e 5
cmp.i.v GT
bf [81]

:[80]
pushi.e 1632
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[81]
pushi.e 5
pop.v.i self.phase_s

:[82]
push.v self.phase_s
pushi.e 5
cmp.i.v EQ
bf [102]

:[83]
push.v self.soultimer
pushi.e 1
add.i.v
pop.v.v self.soultimer
push.v self.soultimer
push.v self.soulmax
cmp.v.v GTE
bf [102]

:[84]
pushi.e 314
pop.v.i self.idealhx
pushi.e 400
pop.v.i self.idealhy
pushglb.v global.soul_rescue
pushi.e 6
cmp.i.v EQ
bf [86]

:[85]
pushi.e 280
pop.v.i self.idealhy

:[86]
push.v 1587.x
pop.v.v self.nowhx
push.v 1587.y
pop.v.v self.nowhy
push.v self.idealhx
push.v self.nowhx
sub.v.v
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.nowhxadd
push.v self.idealhy
push.v self.nowhy
sub.v.v
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.nowhyadd
pushi.e 0
pop.v.i 1587.move
pushi.e 1593
pushenv [88]

:[87]
pushi.e 2
pop.v.i self.tvmode

:[88]
popenv [87]
pushi.e 1607
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]
pushi.e 1591
pushenv [92]

:[91]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_noise
call.i caster_loop(argc=3)
popz.v

:[92]
popenv [91]
pushi.e 6
pop.v.i self.phase_s
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1599
pushenv [94]

:[93]
pushi.e 0
pop.v.i self.flash

:[94]
popenv [93]
pushi.e 1600
pushenv [96]

:[95]
pushi.e 0
pop.v.i self.flash

:[96]
popenv [95]
pushi.e 1601
pushenv [98]

:[97]
pushi.e 0
pop.v.i self.flash

:[98]
popenv [97]
pushglb.v global.soul_rescue
pushi.e 6
cmp.i.v EQ
bf [100]

:[99]
pushi.e 20
pop.v.i self.phase_s
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[100]
push.v global.battlephase
pushi.e 1
add.i.v
pop.v.v global.battlephase
pushglb.v global.battlephase
pushi.e 6
cmp.i.v GTE
bf [102]

:[101]
pushi.e 0
pop.v.i global.battlephase

:[102]
push.v self.phase_s
pushi.e 6
cmp.i.v EQ
bt [104]

:[103]
push.v self.phase_s
pushi.e 8
cmp.i.v EQ
b [105]

:[104]
push.e 1

:[105]
bf [107]

:[106]
push.v 1587.x
push.v self.nowhxadd
add.v.v
pop.v.v 1587.x
push.v 1587.y
push.v self.nowhyadd
add.v.v
pop.v.v 1587.y

:[107]
push.v self.phase_s
pushi.e 7
cmp.i.v EQ
bf [111]

:[108]
pushi.e 1591
pushenv [110]

:[109]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[110]
popenv [109]
pushi.e 8
pop.v.i self.phase_s
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[111]
push.v self.phase_s
pushi.e 9
cmp.i.v EQ
bf [113]

:[112]
push.v self.idealhx
pop.v.v 1587.x
push.v self.idealhy
pop.v.v 1587.y
pushi.e 1
pop.v.i 1587.move
pushi.e 10
pop.v.i self.phase_s

:[113]
push.v self.phase_s
pushi.e 10
cmp.i.v EQ
bf [119]

:[114]
pushi.e 1593
pushenv [116]

:[115]
pushi.e 0
pop.v.i self.tvmode

:[116]
popenv [115]
pushi.e 1591
pushenv [118]

:[117]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v

:[118]
popenv [117]
pushi.e 1590
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[119]
push.v self.phase_s
pushi.e 20
cmp.i.v EQ
bt [122]

:[120]
push.v self.phase_s
pushi.e 24
cmp.i.v EQ
bt [122]

:[121]
push.v self.phase_s
pushi.e 26
cmp.i.v EQ
b [123]

:[122]
push.e 1

:[123]
bf [125]

:[124]
push.v 1587.x
push.v self.nowhxadd
add.v.v
pop.v.v 1587.x
push.v 1587.y
push.v self.nowhyadd
add.v.v
pop.v.v 1587.y

:[125]
push.v self.phase_s
pushi.e 21
cmp.i.v EQ
bf [131]

:[126]
push.v self.idealhx
pop.v.v 1587.x
push.v self.idealhy
pop.v.v 1587.y
pushi.e 1
pop.v.i 1587.move
pushi.e 1593
pushenv [128]

:[127]
pushi.e 5
pop.v.i self.tvmode

:[128]
popenv [127]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1609
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1591
pushenv [130]

:[129]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_finale1_l
call.i caster_play(argc=3)
popz.v

:[130]
popenv [129]
pushi.e 308
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 615
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 22
pop.v.i self.phase_s

:[131]
push.v self.phase_s
pushi.e 23
cmp.i.v EQ
bf [137]

:[132]
pushi.e 314
pop.v.i self.idealhx
pushi.e 400
pop.v.i self.idealhy
push.v 1587.x
pop.v.v self.nowhx
push.v 1587.y
pop.v.v self.nowhy
push.v self.idealhx
push.v self.nowhx
sub.v.v
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.nowhxadd
push.v self.idealhy
push.v self.nowhy
sub.v.v
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.nowhyadd
pushi.e 0
pop.v.i 1587.move
pushi.e 1593
pushenv [134]

:[133]
pushi.e 2
pop.v.i self.tvmode

:[134]
popenv [133]
pushi.e 1591
pushenv [136]

:[135]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_noise
call.i caster_loop(argc=3)
popz.v

:[136]
popenv [135]
pushi.e 24
pop.v.i self.phase_s
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 6
pop.v.i global.battlephase

:[137]
push.v self.phase_s
pushi.e 25
cmp.i.v EQ
bf [141]

:[138]
pushi.e 1591
pushenv [140]

:[139]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[140]
popenv [139]
pushi.e 26
pop.v.i self.phase_s
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[141]
push.v self.phase_s
pushi.e 27
cmp.i.v EQ
bf [153]

:[142]
push.v self.idealhx
pop.v.v 1587.x
push.v self.idealhy
pop.v.v 1587.y
pushi.e 1
pop.v.i 1587.move
pushi.e 10
pop.v.i self.phase_s
push.s "obj_flowey_bulletmaster_562"@12830
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_bulletmaster_564"@12831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 113
pop.v.i global.typer
pushi.e 180
pop.v.i local.text_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [144]

:[143]
pushi.e 112
pop.v.i local.text_x

:[144]
pushi.e 1604
conv.i.v
pushi.e 300
conv.i.v
pushloc.v local.text_x
call.i instance_create(argc=3)
popz.v
pushi.e 1592
pushenv [146]

:[145]
pushi.e 0
pop.v.i self.desperate

:[146]
popenv [145]
pushi.e 1592
pushenv [148]

:[147]
pushi.e 1
pop.v.i self.wimpy

:[148]
popenv [147]
pushi.e 1595
pushenv [150]

:[149]
pushi.e 0
pop.v.i self.memorymode

:[150]
popenv [149]
pushi.e 1597
pushenv [152]

:[151]
pushi.e 0
pop.v.i self.memorymode

:[152]
popenv [151]

:[153]
push.v self.timer
push.v self.maxtimer
pushi.e 120
add.i.v
cmp.v.v GT
bf [end]

:[154]
pushi.e 1633
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [158]

:[155]
pushi.e 1633
pushenv [157]

:[156]
call.i instance_destroy(argc=0)
popz.v

:[157]
popenv [156]

:[158]
pushi.e 1595
pushenv [160]

:[159]
pushi.e 0
pop.v.i self.md
pushi.e 0
pop.v.i self.con

:[160]
popenv [159]
pushi.e 1597
pushenv [162]

:[161]
pushi.e 0
pop.v.i self.md
pushi.e 0
pop.v.i self.con

:[162]
popenv [161]

:[end]