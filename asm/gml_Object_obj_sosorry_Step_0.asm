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
bf [25]

:[13]
push.v self.talked
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
call.i scr_textskip(argc=0)
popz.v

:[18]
push.v self.talked
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 3
pop.v.i self.talked

:[23]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
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

:[27]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [35]

:[28]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterhp
push.v self.takedamage
sub.v.v
pop.i.v [array]global.monsterhp
push.v self.hitplot
pushi.e 10
cmp.i.v GTE
bf [30]

:[29]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp

:[30]
push.v self.dmgwriter
conv.v.i
pushenv [32]

:[31]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[32]
popenv [31]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [34]

:[33]
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
b [35]

:[34]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[35]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [39]

:[36]
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
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 190
pushenv [38]

:[37]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[38]
popenv [37]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[39]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [89]

:[40]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [86]

:[41]
push.v self.talked
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
pushi.e 0
pop.v.i self.talked

:[43]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 180
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.p_mode
pushi.e 0
cmp.i.v EQ
bf [67]

:[44]
push.v self.myplot
pushi.e 0
cmp.i.v EQ
bt [46]

:[45]
push.v self.myplot
pushi.e 1
cmp.i.v EQ
b [47]

:[46]
push.e 1

:[47]
bf [51]

:[48]
push.v self.mypart1
conv.v.i
pushenv [50]

:[49]
pushi.e 170
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.back
pushi.e 1
pop.v.i self.tailtype
pushi.e 0
pop.v.i self.armtype
pushi.e 0
pop.v.i self.tail_t
pushi.e 8
pop.v.i self.tailsiner

:[50]
popenv [49]

:[51]
push.v self.myplot
pushi.e 2
cmp.i.v EQ
bf [55]

:[52]
push.v self.mypart1
conv.v.i
pushenv [54]

:[53]
pushi.e 1
pop.v.i self.back
pushi.e 1
pop.v.i self.tailtype
pushi.e 0
pop.v.i self.armtype
push.d 0.3
pop.v.d self.tail_t
pushi.e 8
pop.v.i self.tailsiner

:[54]
popenv [53]

:[55]
push.v self.myplot
pushi.e 3
cmp.i.v EQ
bf [59]

:[56]
push.v self.mypart1
conv.v.i
pushenv [58]

:[57]
pushi.e 240
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.intense
pushi.e 1
pop.v.i self.back
pushi.e 0
pop.v.i self.tailtype
pushi.e 1
pop.v.i self.armtype
pushi.e 0
pop.v.i self.tail_t
pushi.e 0
pop.v.i self.tailsiner
pushi.e 3
pop.v.i self.diff

:[58]
popenv [57]

:[59]
push.v self.myplot
pushi.e 4
cmp.i.v EQ
bf [63]

:[60]
push.v self.mypart1
conv.v.i
pushenv [62]

:[61]
pushi.e 240
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.intense
pushi.e 1
pop.v.i self.back
pushi.e 0
pop.v.i self.tailtype
pushi.e 1
pop.v.i self.armtype
pushi.e 0
pop.v.i self.tail_t
pushi.e 0
pop.v.i self.tailsiner
pushi.e 3
pop.v.i self.diff

:[62]
popenv [61]

:[63]
push.v self.myplot
pushi.e 5
cmp.i.v GTE
bf [67]

:[64]
push.v self.mypart1
conv.v.i
pushenv [66]

:[65]
pushi.e 270
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.intense
pushi.e 1
pop.v.i self.back
pushi.e 1
pop.v.i self.tailtype
pushi.e 1
pop.v.i self.armtype
push.d -0.2
pop.v.d self.tail_t
pushi.e 8
pop.v.i self.tailsiner
pushi.e 3
pop.v.i self.diff

:[66]
popenv [65]

:[67]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [69]

:[68]
push.s "obj_sosorry_785"@26181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [71]

:[70]
push.s "obj_sosorry_786"@26183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [73]

:[72]
push.s "obj_sosorry_787"@26185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [75]

:[74]
push.s "obj_sosorry_788"@26187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.mycommand
pushi.e 72
cmp.i.v GTE
bf [77]

:[76]
push.s "obj_sosorry_789"@26189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
push.v self.mycommand
pushi.e 86
cmp.i.v GTE
bf [79]

:[78]
push.s "obj_sosorry_790"@26191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.mycommand
pushi.e 96
cmp.i.v GTE
bf [81]

:[80]
push.s "obj_sosorry_791"@26193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [83]

:[82]
push.s "obj_sosorry_792"@26195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
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
bf [85]

:[84]
push.s "obj_sosorry_793"@26197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[85]
pushi.e 1
pop.v.i self.attacked

:[86]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [88]

:[87]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[88]
pushi.e -1
pop.v.i self.whatiheard

:[89]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [111]

:[90]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [111]

:[91]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [111]

:[92]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [96]

:[93]
pushi.e 0
pop.v.i global.msc
push.s "obj_sosorry_826"@26199
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
pushenv [95]

:[94]
pushi.e 0
pop.v.i self.halt

:[95]
popenv [94]
pushi.e 9
pop.v.i self.whatiheard

:[96]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [110]

:[97]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.ch
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.ch
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_sosorry_838"@26201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[99]
push.v self.ch
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_sosorry_841"@26203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[101]
push.v self.ch
pushi.e 2
cmp.i.v EQ
bf [103]

:[102]
push.s "obj_sosorry_844"@26205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[103]
push.v self.ch
pushi.e 3
cmp.i.v EQ
bf [105]

:[104]
push.s "obj_sosorry_847"@26207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[105]
push.v self.ch
pushi.e 4
cmp.i.v EQ
bf [107]

:[106]
push.s "obj_sosorry_850"@26209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[107]
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
pushenv [109]

:[108]
pushi.e 0
pop.v.i self.halt

:[109]
popenv [108]

:[110]
pushi.e 1
pop.v.i global.heard

:[111]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [115]

:[112]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [115]

:[113]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [115]

:[114]
call.i instance_destroy(argc=0)
popz.v

:[115]
push.v self.n_con
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
pushi.e 0
pop.v.i global.border
pushi.e 1
pop.v.i global.typer
pushi.e -200
pop.v.i 744.x
pushi.e 900
pop.v.i 744.y
pushi.e 0
pop.v.i 744.visible
pushi.e -5
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight

:[120]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [122]

:[121]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [125]

:[124]
call.i instance_destroy(argc=0)
popz.v

:[125]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [127]

:[126]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [132]

:[129]
pushi.e 3
pop.v.i global.mnfight
push.v self.mypart1
conv.v.i
pushenv [131]

:[130]
pushi.e 0
pop.v.i self.back

:[131]
popenv [130]

:[132]
push.v self.d_con
pushi.e 1
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
bf [145]

:[136]
pushi.e 4
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.mypart1
conv.v.i
pushenv [138]

:[137]
pushi.e 1
pop.v.i self.pause

:[138]
popenv [137]
push.v self.mypart1
conv.v.i
pushenv [140]

:[139]
pushi.e 0
pop.v.i self.intense

:[140]
popenv [139]
push.v self.mypart1
conv.v.i
pushenv [142]

:[141]
pushi.e -2
pop.v.i self.hspeed

:[142]
popenv [141]
pushi.e -1
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.d_con
pushi.e 80
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 455
pushenv [144]

:[143]
call.i instance_destroy(argc=0)
popz.v

:[144]
popenv [143]

:[145]
push.v self.d_con
pushi.e 2
cmp.i.v EQ
bf [149]

:[146]
pushi.e 454
pushenv [148]

:[147]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha

:[148]
popenv [147]

:[149]
push.v self.d_con
pushi.e 3
cmp.i.v EQ
bf [153]

:[150]
pushi.e 0
pop.v.i self.hspeed
push.v self.mypart1
conv.v.i
pushenv [152]

:[151]
pushi.e 0
pop.v.i self.hspeed

:[152]
popenv [151]
pushi.e 30
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.d_con

:[153]
push.v self.d_con
pushi.e 5
cmp.i.v EQ
bf [155]

:[154]
pushglb.v global.batmusic
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 33
pop.v.i global.typer
push.s "obj_sosorry_950"@26211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_951"@26213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_952"@26215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_953"@26217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 170
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e -1500
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -1600
push.v self.writer
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 6
pop.v.i self.d_con

:[155]
push.v self.d_con
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
bf [160]

:[159]
pushi.e 0
pop.v.i self.visible
pushi.e 598
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.killed
push.v self.x
pushi.e 19
add.i.v
pop.v.v self.x
push.v self.x
pushi.e 70
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 24
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i global.border
pushi.e 1
pop.v.i global.typer
pushi.e -200
pop.v.i 744.x
pushi.e 900
pop.v.i 744.y
pushi.e 0
pop.v.i 744.visible
pushi.e -5
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[160]
push.v self.p_con
pushi.e 2
cmp.i.v EQ
bf [164]

:[161]
pushi.e 81
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 81
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
pushi.e 455
conv.i.v
pushi.e 88
conv.i.v
pushi.e 26
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.monsterinstance
pushi.e 455
conv.i.v
pushi.e 88
conv.i.v
pushi.e 526
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 2
pop.v.v [array]global.monsterinstance
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushenv [163]

:[162]
pushi.e 1
pop.v.i self.specialmessage

:[163]
popenv [162]
pushi.e 3
pop.v.i self.p_con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[164]
push.v self.p_con
pushi.e 1
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
bf [169]

:[168]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fl
pushi.e -2000
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 2
pop.v.i self.p_con
pushi.e -6
pop.v.i global.mnfight

:[169]
push.v self.p_con
pushi.e 4
cmp.i.v EQ
bf [171]

:[170]
push.s "obj_sosorry_1007"@26219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 111
pop.v.i global.typer
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 170
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e -1500
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -1600
push.v self.writer
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 5
pop.v.i self.p_con

:[171]
push.v self.p_con
pushi.e 5
cmp.i.v EQ
bf [173]

:[172]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [174]

:[173]
push.e 0

:[174]
bf [end]

:[175]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.p_con
pushi.e 2
pop.v.i global.mnfight

:[end]