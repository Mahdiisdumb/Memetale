.localvar 0 arguments
.localvar 1 vari 4070

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
pushi.e 10
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
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

:[17]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [23]

:[18]
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
pushenv [20]

:[19]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[20]
popenv [19]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [22]

:[21]
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
b [23]

:[22]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [27]

:[24]
pushi.e 0
pop.v.i global.damage
pushi.e 190
conv.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 190
pushenv [26]

:[25]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[26]
popenv [25]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[27]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [132]

:[28]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [129]

:[29]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 180
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [31]

:[30]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[31]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[33]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 110
pop.v.i global.turntimer
pushi.e 461
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
pop.v.i [stacktop]self.type

:[35]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
pushi.e 160
pop.v.i global.turntimer
pushi.e 465
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
pop.v.i [stacktop]self.t

:[37]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushi.e 180
pop.v.i global.turntimer
pushi.e 468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[39]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
pushi.e 9999
pop.v.i global.turntimer
pushi.e 477
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff

:[41]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [43]

:[42]
pushi.e 175
pop.v.i global.turntimer
pushi.e 460
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 40
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.factor

:[43]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [45]

:[44]
pushi.e 190
pop.v.i global.turntimer
pushi.e 471
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff

:[45]
push.v self.turns
pushi.e 7
cmp.i.v EQ
bf [47]

:[46]
pushi.e 160
pop.v.i global.turntimer
pushi.e 463
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.lv

:[47]
push.v self.turns
pushi.e 8
cmp.i.v EQ
bf [49]

:[48]
pushi.e 9999
pop.v.i global.turntimer
pushi.e 477
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

:[49]
push.v self.turns
pushi.e 9
cmp.i.v EQ
bf [51]

:[50]
pushi.e 145
pop.v.i global.turntimer
pushi.e 465
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.t

:[51]
push.v self.turns
pushi.e 10
cmp.i.v EQ
bf [53]

:[52]
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

:[53]
push.v self.turns
pushi.e 11
cmp.i.v EQ
bf [55]

:[54]
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

:[55]
push.v self.turns
pushi.e 12
cmp.i.v EQ
bf [57]

:[56]
pushi.e 9999
pop.v.i global.turntimer
pushi.e 477
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

:[57]
push.v self.turns
pushi.e 13
cmp.i.v EQ
bf [59]

:[58]
pushi.e 140
pop.v.i global.turntimer
pushi.e 463
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.lv

:[59]
push.v self.turns
pushi.e 14
cmp.i.v EQ
bf [61]

:[60]
pushi.e 190
pop.v.i global.turntimer
pushi.e 469
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[61]
push.v self.turns
pushi.e 15
cmp.i.v EQ
bf [63]

:[62]
pushi.e 175
pop.v.i global.turntimer
pushi.e 471
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff

:[63]
push.v self.turns
pushi.e 16
cmp.i.v EQ
bf [65]

:[64]
pushi.e 9999
pop.v.i global.turntimer
pushi.e 477
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff

:[65]
push.v self.turns
pushi.e 17
cmp.i.v EQ
bf [67]

:[66]
pushi.e 173
pop.v.i global.turntimer
pushi.e 460
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.factor

:[67]
push.v self.turns
pushi.e 18
cmp.i.v EQ
bf [69]

:[68]
pushi.e 188
pop.v.i global.turntimer
pushi.e 471
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff

:[69]
push.v self.turns
pushi.e 19
cmp.i.v EQ
bf [71]

:[70]
pushi.e 130
pop.v.i global.turntimer
pushi.e 463
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.lv

:[71]
push.v self.turns
pushi.e 20
cmp.i.v EQ
bf [73]

:[72]
pushi.e 9999
pop.v.i global.turntimer
pushi.e 477
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff

:[73]
push.v self.turns
pushi.e 21
cmp.i.v EQ
bt [75]

:[74]
push.v self.turns
pushi.e 22
cmp.i.v EQ
b [76]

:[75]
push.e 1

:[76]
bf [89]

:[77]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdef
pushi.e -90
cmp.i.v GT
bf [79]

:[78]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterdef
pushi.e 5
sub.i.v
pop.i.v [array]global.monsterdef

:[79]
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
bf [81]

:[80]
pushi.e 188
pop.v.i global.turntimer
pushi.e 471
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff

:[81]
push.v self.ch
pushi.e 1
cmp.i.v EQ
bf [83]

:[82]
pushi.e 130
pop.v.i global.turntimer
pushi.e 463
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.lv

:[83]
push.v self.ch
pushi.e 2
cmp.i.v EQ
bf [85]

:[84]
pushi.e 173
pop.v.i global.turntimer
pushi.e 460
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 30
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.factor

:[85]
push.v self.ch
pushi.e 3
cmp.i.v EQ
bf [87]

:[86]
pushi.e 190
pop.v.i global.turntimer
pushi.e 469
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[87]
push.v self.ch
pushi.e 4
cmp.i.v EQ
bf [89]

:[88]
pushi.e 145
pop.v.i global.turntimer
pushi.e 465
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.t

:[89]
push.v self.turns
pushi.e 20
cmp.i.v GTE
bf [92]

:[90]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdef
pushi.e -120
cmp.i.v GT
bf [92]

:[91]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterdef
pushi.e 10
sub.i.v
pop.i.v [array]global.monsterdef

:[92]
push.v self.turns
pushi.e 23
cmp.i.v EQ
bf [94]

:[93]
pushi.e 9999
pop.v.i global.turntimer
pushi.e 477
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.diff
pushi.e 20
pop.v.i self.turns

:[94]
pushi.e 1
pop.v.i self.turnoff
pushi.e 0
pop.v.i self.toriel
push.v self.toriel
pushi.e 1
cmp.i.v EQ
bf [124]

:[95]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [97]

:[96]
push.v self.mycommand
pushi.e 20
cmp.i.v LTE
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
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

:[100]
push.v self.mycommand
pushi.e 20
cmp.i.v GT
bf [102]

:[101]
push.v self.mycommand
pushi.e 40
cmp.i.v LTE
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
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

:[105]
push.v self.mycommand
pushi.e 80
cmp.i.v GT
bf [107]

:[106]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [108]

:[107]
push.e 0

:[108]
bf [111]

:[109]
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
bf [111]

:[110]
pushi.e 5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg

:[111]
push.v self.mycommand
pushi.e 60
cmp.i.v GT
bf [113]

:[112]
push.v self.mycommand
pushi.e 80
cmp.i.v LTE
b [114]

:[113]
push.e 0

:[114]
bf [119]

:[115]
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
bf [117]

:[116]
pushi.e 5
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg

:[117]
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
bf [119]

:[118]
pushi.e 5
push.v self.gen2
conv.v.i
pop.v.i [stacktop]self.dmg

:[119]
push.v self.mycommand
pushi.e 40
cmp.i.v GT
bf [121]

:[120]
push.v self.mycommand
pushi.e 60
cmp.i.v LTE
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
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

:[124]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [126]

:[125]
push.s "obj_asgoreb_652"@10026
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[126]
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
bf [128]

:[127]
push.s "obj_asgoreb_658"@10028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[128]
pushi.e 1
pop.v.i self.attacked

:[129]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [131]

:[130]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[131]
pushi.e -1
pop.v.i self.whatiheard

:[132]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [184]

:[133]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [184]

:[134]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [184]

:[135]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [139]

:[136]
pushi.e 0
pop.v.i global.msc
push.s "obj_asgoreb_692"@10030
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
pushenv [138]

:[137]
pushi.e 0
pop.v.i self.halt

:[138]
popenv [137]
pushi.e 9
pop.v.i self.whatiheard

:[139]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [183]

:[140]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "KillYou"@5086
conv.s.v
push.s "Asgore"@5087
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ky
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
push.s "obj_asgoreb_705"@10032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.kills
pushi.e 0
cmp.i.v EQ
bf [154]

:[141]
push.v self.talk_x
pushi.e 0
cmp.i.v EQ
bf [143]

:[142]
push.s "obj_asgoreb_711"@10034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoreb_712"@10036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[143]
push.v self.talk_x
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
push.s "obj_asgoreb_716"@10038
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoreb_717"@10040
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[145]
push.v self.talk_x
pushi.e 2
cmp.i.v EQ
bf [147]

:[146]
push.s "obj_asgoreb_721"@10042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoreb_722"@10044
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgoreb_723"@10046
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsteratk
pushi.e 1
sub.i.v
pop.i.v [array]global.monsteratk
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterdef
pushi.e 10
sub.i.v
pop.i.v [array]global.monsterdef

:[147]
push.v self.talk_x
pushi.e 3
cmp.i.v GTE
bf [149]

:[148]
push.v self.talk_x
pushi.e 8
cmp.i.v NEQ
b [150]

:[149]
push.e 0

:[150]
bf [152]

:[151]
push.s "obj_asgoreb_729"@10048
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[152]
push.v self.talk_x
pushi.e 8
cmp.i.v EQ
bf [154]

:[153]
push.s "obj_asgoreb_731"@10050
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[154]
push.v self.talk_x
pushi.e 0
cmp.i.v EQ
bf [156]

:[155]
push.v self.ky
pushi.e 0
cmp.i.v GT
b [157]

:[156]
push.e 0

:[157]
bf [180]

:[158]
push.s "obj_asgoreb_killcount_10"@10072
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari
push.v self.ky
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
push.s "obj_asgoreb_killcount_1"@10054
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[160]
push.v self.ky
pushi.e 2
cmp.i.v EQ
bf [162]

:[161]
push.s "obj_asgoreb_killcount_2"@10056
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[162]
push.v self.ky
pushi.e 3
cmp.i.v EQ
bf [164]

:[163]
push.s "obj_asgoreb_killcount_3"@10058
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[164]
push.v self.ky
pushi.e 4
cmp.i.v EQ
bf [166]

:[165]
push.s "obj_asgoreb_killcount_4"@10060
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[166]
push.v self.ky
pushi.e 5
cmp.i.v EQ
bf [168]

:[167]
push.s "obj_asgoreb_killcount_5"@10062
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[168]
push.v self.ky
pushi.e 6
cmp.i.v EQ
bf [170]

:[169]
push.s "obj_asgoreb_killcount_6"@10064
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[170]
push.v self.ky
pushi.e 7
cmp.i.v EQ
bf [172]

:[171]
push.s "obj_asgoreb_killcount_7"@10066
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[172]
push.v self.ky
pushi.e 8
cmp.i.v EQ
bf [174]

:[173]
push.s "obj_asgoreb_killcount_8"@10068
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[174]
push.v self.ky
pushi.e 9
cmp.i.v EQ
bf [176]

:[175]
push.s "obj_asgoreb_killcount_9"@10070
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.vari

:[176]
pushloc.v local.vari
push.s "obj_asgoreb_748"@10052
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoreb_749"@10074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.ky
pushi.e 4
cmp.i.v GT
bf [178]

:[177]
push.s "obj_asgoreb_751"@10076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[178]
push.v self.ky
pushi.e 9
cmp.i.v GT
bf [180]

:[179]
push.s "obj_asgoreb_753"@10078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[180]
push.v self.talk_x
pushi.e 1
add.i.v
pop.v.v self.talk_x
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
pushenv [182]

:[181]
pushi.e 0
pop.v.i self.halt

:[182]
popenv [181]

:[183]
pushi.e 1
pop.v.i global.heard

:[184]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [188]

:[185]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [188]

:[186]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [188]

:[187]
call.i instance_destroy(argc=0)
popz.v

:[188]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [190]

:[189]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [191]

:[190]
push.e 0

:[191]
bf [194]

:[192]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [194]

:[193]
call.i instance_destroy(argc=0)
popz.v

:[194]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v self.curatk
push.v self.turnoff
pushi.e 1
cmp.i.v EQ
bf [196]

:[195]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
b [197]

:[196]
push.e 0

:[197]
bf [end]

:[198]
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