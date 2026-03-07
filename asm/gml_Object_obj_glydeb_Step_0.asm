.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.attacked
push.v self.mypart1
conv.v.i
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.sh_timer
pushi.e 0
pop.v.i self.sh
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.attackmode

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
bf [77]

:[37]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [74]

:[38]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 180
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[40]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[42]
push.v self.mycommand
pushi.e 40
cmp.i.v LT
bf [46]

:[43]
push.v self.mypart1
conv.v.i
pushenv [45]

:[44]
pushi.e 1
pop.v.i self.sh
pushi.e 1
pop.v.i self.attackmode
pushi.e 1
pop.v.i self.sh_speed
pushi.e 5
pop.v.i self.diff

:[45]
popenv [44]

:[46]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [48]

:[47]
push.v self.mycommand
pushi.e 70
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [53]

:[50]
push.v self.mypart1
conv.v.i
pushenv [52]

:[51]
pushi.e 1
pop.v.i self.sh
pushi.e 1
pop.v.i self.attackmode
pushi.e 2
pop.v.i self.sh_speed
pushi.e 3
pop.v.i self.diff

:[52]
popenv [51]

:[53]
push.v self.mycommand
pushi.e 70
cmp.i.v GT
bf [57]

:[54]
push.v self.mypart1
conv.v.i
pushenv [56]

:[55]
pushi.e 1
pop.v.i self.attackmode
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[56]
popenv [55]

:[57]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [59]

:[58]
push.s "obj_glydeb_414"@13775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_glydeb_415"@13777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_glydeb_416"@13779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [65]

:[64]
push.s "obj_glydeb_417"@13781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [67]

:[66]
push.s "obj_glydeb_418"@13783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.nothing
pushi.e 2
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_glydeb_420"@13785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [71]

:[70]
push.s "obj_glydeb_421"@13787
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
push.s "obj_glydeb_422"@13789
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
bf [110]

:[78]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [110]

:[79]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [110]

:[80]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [84]

:[81]
pushi.e 0
pop.v.i global.msc
push.s "obj_glydeb_455"@13791
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
bf [92]

:[85]
pushi.e 0
pop.v.i global.msc
push.v self.applaud
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
push.s "obj_glydeb_466"@13793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.applaud
b [89]

:[87]
push.s "obj_glydeb_471"@13795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.applaud
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
pushi.e 2
pop.v.i self.applaud

:[89]
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
pushenv [91]

:[90]
pushi.e 0
pop.v.i self.halt

:[91]
popenv [90]

:[92]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [98]

:[93]
pushi.e 0
pop.v.i global.msc
push.s "obj_glydeb_486"@13797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsteratk
pushi.e 2
add.i.v
pop.i.v [array]global.monsteratk
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterdef
pushi.e 10
sub.i.v
pop.i.v [array]global.monsterdef
push.v self.nothing
pushi.e 2
cmp.i.v EQ
bf [95]

:[94]
push.s "obj_glydeb_492"@13799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.nothing
pushi.e 222
pop.v.i self.mercymod

:[95]
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
pushenv [97]

:[96]
pushi.e 0
pop.v.i self.halt

:[97]
popenv [96]
push.v self.boo
pushi.e 1
add.i.v
pop.v.v self.boo

:[98]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [109]

:[99]
pushi.e 0
pop.v.i global.msc
push.s "obj_glydeb_506"@13801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.applaud
pushi.e 2
cmp.i.v GTE
bf [106]

:[100]
push.v self.nothing
pushi.e 2
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_glydeb_511"@13803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.nothing
pushi.e 222
pop.v.i self.mercymod

:[102]
push.v self.nothing
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_glydeb_519"@13805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.nothing

:[104]
push.v self.nothing
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_glydeb_525"@13807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.nothing

:[106]
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
pushenv [108]

:[107]
pushi.e 0
pop.v.i self.halt

:[108]
popenv [107]

:[109]
pushi.e 1
pop.v.i global.heard

:[110]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [114]

:[111]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [114]

:[112]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [116]

:[115]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [120]

:[118]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [120]

:[119]
call.i instance_destroy(argc=0)
popz.v

:[120]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [122]

:[121]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [end]

:[124]
pushi.e 3
pop.v.i global.mnfight

:[end]