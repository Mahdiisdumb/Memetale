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
pushi.e 15
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
bf [69]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [69]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 120
pop.v.i global.turntimer
pushi.e 15
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
push.d 2.4
mul.d.v
pop.v.v global.firingrate

:[38]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.firingrate
push.d 1.7
mul.d.v
pop.v.v global.firingrate

:[40]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [42]

:[41]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 688
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 3
pop.v.i global.border
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype
b [46]

:[45]
pushi.e 90
pop.v.i global.turntimer
pushi.e 8
pop.v.i global.border
pushi.e 643
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[46]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_greatdog_440"@13823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.mycommand
pushi.e 45
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_greatdog_441"@13825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_greatdog_442"@13827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_greatdog_443"@13829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.dogignore
pushi.e 0
cmp.i.v GT
bf [56]

:[55]
push.s "obj_greatdog_444"@13831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.dogignore
pushi.e 2
cmp.i.v GT
bf [58]

:[57]
push.s "obj_greatdog_445"@13833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.pet
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_greatdog_446"@13835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.pet
pushi.e 2
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_greatdog_447"@13837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.pet
pushi.e 3
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_greatdog_448"@13839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.pet
pushi.e 4
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_greatdog_449"@13841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
cmp.i.v LT
bf [68]

:[67]
push.s "obj_greatdog_450"@13843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
pushi.e 1
pop.v.i self.attacked

:[69]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [124]

:[70]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [124]

:[71]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [124]

:[72]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [76]

:[73]
pushi.e 0
pop.v.i global.msc
push.s "obj_greatdog_466"@13845
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
pushenv [75]

:[74]
pushi.e 0
pop.v.i self.halt

:[75]
popenv [74]

:[76]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [84]

:[77]
pushi.e 0
pop.v.i global.msc
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_greatdog_478"@13847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.close
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_greatdog_482"@13849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_greatdog_483"@13851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.close

:[81]
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

:[84]
push.v self.whatiheard
pushi.e 2
cmp.i.v EQ
bf [92]

:[85]
pushi.e 0
pop.v.i global.msc
push.v self.dogignore
pushi.e 4
cmp.i.v LT
bf [87]

:[86]
push.s "obj_greatdog_495"@13853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.dogignore
pushi.e 1
add.i.v
pop.v.v self.dogignore
pushi.e 1
pop.v.i self.close

:[87]
push.v self.dogignore
pushi.e 4
cmp.i.v EQ
bf [89]

:[88]
push.s "obj_greatdog_501"@13855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
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

:[92]
push.v self.pet
pushi.e 0
cmp.i.v GT
bf [94]

:[93]
pushi.e -20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[94]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [113]

:[95]
pushi.e 0
pop.v.i global.msc
push.s "obj_greatdog_512"@13857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.pet
pushi.e 4
cmp.i.v EQ
bf [97]

:[96]
push.s "obj_greatdog_515"@13859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[97]
push.v self.pet
pushi.e 3
cmp.i.v EQ
bf [99]

:[98]
pushi.e 4
pop.v.i self.pet
push.s "obj_greatdog_520"@13861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_greatdog_521"@13863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v 155.tempspd
pop.v.v global.sp
pushi.e 9999
pop.v.i self.mercymod
pushi.e 1
pushi.e -5
pushi.e 142
pop.v.i [array]global.flag

:[99]
push.v self.pet
pushi.e 2
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_greatdog_528"@13865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_greatdog_529"@13867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_greatdog_530"@13869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
pop.v.i global.sp
pushi.e 3
pop.v.i self.pet

:[101]
push.v self.pet
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
push.s "obj_greatdog_536"@13871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[103]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.v self.pet
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
push.s "obj_greatdog_540"@13873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_greatdog_541"@13875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_greatdog_542"@13876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_greatdog_543"@13877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_greatdog_544"@13879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.pet

:[108]
push.v self.close
pushi.e 0
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_greatdog_549"@13881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[110]
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
pushenv [112]

:[111]
pushi.e 0
pop.v.i self.halt

:[112]
popenv [111]

:[113]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [123]

:[114]
pushi.e 0
pop.v.i global.msc
push.s "obj_greatdog_558"@13883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.pet
pushi.e 1
cmp.i.v GT
bf [116]

:[115]
push.s "obj_greatdog_561"@13885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[116]
push.v self.pet
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.s "obj_greatdog_565"@13887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_greatdog_566"@13889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_greatdog_567"@13891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_greatdog_568"@13893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.pet

:[118]
push.v self.pet
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_greatdog_573"@13895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[120]
pushi.e 0
pop.v.i global.msc
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
pushenv [122]

:[121]
pushi.e 0
pop.v.i self.halt

:[122]
popenv [121]

:[123]
pushi.e 1
pop.v.i global.heard

:[124]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [128]

:[125]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [128]

:[126]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [128]

:[127]
call.i instance_destroy(argc=0)
popz.v

:[128]
push.v self.dogignore
pushi.e 3
cmp.i.v GT
bf [130]

:[129]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [end]

:[132]
pushi.e 6666
pop.v.i self.mercymod
pushi.e 3
pushi.e -5
pushi.e 54
pop.v.i [array]global.flag
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[133]
call.i instance_destroy(argc=0)
popz.v

:[end]