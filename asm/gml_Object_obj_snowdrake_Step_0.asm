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
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.part2
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart2
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.image_index
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
bf [72]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [72]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 218
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[37]
push.v 218.ditch
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.v self.pop
pushi.e 1
sub.i.v
pop.v.v self.pop

:[39]
pushi.e 120
pop.v.i global.turntimer
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
pushi.e 130
pop.v.i global.turntimer

:[41]
pushi.e 16
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
pushglb.v global.firingrate
push.d 2.4
mul.d.v
pop.v.v global.firingrate

:[43]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [45]

:[44]
pushglb.v global.firingrate
pushi.e 2
mul.i.v
pop.v.v global.firingrate

:[45]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [47]

:[46]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 713
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype
b [51]

:[50]
push.v global.firingrate
pushi.e 8
add.i.v
pop.v.v global.firingrate
pushi.e 713
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[51]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [53]

:[52]
push.s "obj_snowdrake_507"@25817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [55]

:[54]
push.s "obj_snowdrake_508"@25819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [57]

:[56]
push.s "obj_snowdrake_509"@25821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [59]

:[58]
push.s "obj_snowdrake_510"@25823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_snowdrake_511"@25825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.mercymod
pushi.e 80
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_snowdrake_512"@25827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.mercymod
pushi.e 200
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_snowdrake_513"@25829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.mercymod
pushi.e -35
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_snowdrake_514"@25831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
push.v self.mercymod
pushi.e -10
cmp.i.v LT
bf [69]

:[68]
push.s "obj_snowdrake_515"@25833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 20
cmp.i.v LT
bf [71]

:[70]
push.s "obj_snowdrake_516"@25835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
pushi.e 1
pop.v.i self.attacked

:[72]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [113]

:[73]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [113]

:[74]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [113]

:[75]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [79]

:[76]
pushi.e 0
pop.v.i global.msc
push.s "obj_snowdrake_533"@25837
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
pushenv [78]

:[77]
pushi.e 0
pop.v.i self.halt

:[78]
popenv [77]

:[79]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [93]

:[80]
pushi.e 0
pop.v.i global.msc
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
push.v self.gg
pushi.e 2
cmp.i.v LTE
bf [82]

:[81]
push.s "obj_snowdrake_542"@25839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.gg
pushi.e 3
cmp.i.v EQ
bt [84]

:[83]
push.v self.gg
pushi.e 4
cmp.i.v EQ
b [85]

:[84]
push.e 1

:[85]
bf [87]

:[86]
push.s "obj_snowdrake_543"@25841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[87]
push.v self.gg
pushi.e 5
cmp.i.v EQ
bf [89]

:[88]
push.s "obj_snowdrake_545"@25843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_snowdrake_546"@25845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

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
pushi.e -10
pop.v.i self.mercymod
push.v self.gg
pushi.e 5
cmp.i.v EQ
bf [93]

:[92]
pushi.e 222
pop.v.i self.mercymod

:[93]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [104]

:[94]
push.v self.joketold
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
pushi.e -4
pop.v.i self.mercymod
b [97]

:[96]
pushi.e 80
pop.v.i self.mercymod
pushi.e 1
pushi.e -5
pushi.e 136
pop.v.i [array]global.flag

:[97]
pushi.e 0
pop.v.i global.msc
push.v self.joketold
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_snowdrake_559"@25847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[99]
push.v self.joketold
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_snowdrake_560"@25849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[101]
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
pushenv [103]

:[102]
pushi.e 0
pop.v.i self.halt

:[103]
popenv [102]

:[104]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [112]

:[105]
pushi.e 0
pop.v.i global.msc
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
push.s "obj_snowdrake_568"@25851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[107]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v GT
bf [109]

:[108]
push.s "obj_snowdrake_570"@25853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_snowdrake_571"@25854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
call.i scr_withallmonster(argc=2)
popz.v
pushi.e 19
pop.v.i self.whatiheard

:[109]
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
pushenv [111]

:[110]
pushi.e 0
pop.v.i self.halt

:[111]
popenv [110]

:[112]
pushi.e 1
pop.v.i global.heard

:[113]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [117]

:[114]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [117]

:[115]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [117]

:[116]
call.i instance_destroy(argc=0)
popz.v

:[117]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [119]

:[118]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [end]

:[121]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[end]