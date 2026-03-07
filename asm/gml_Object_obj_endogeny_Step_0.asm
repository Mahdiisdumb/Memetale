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
pushi.e 20
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
bf [70]

:[35]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [67]

:[36]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 200
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
pushi.e 546
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
b [46]

:[42]
pushi.e 545
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [46]

:[43]
push.v self.gen
conv.v.i
pushenv [45]

:[44]
pushi.e 4
pop.v.i self.con
pushi.e 7
pop.v.i self.image_index

:[45]
popenv [44]

:[46]
pushi.e 1
pop.v.i self.turns
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_endogeny_360"@12557
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
push.s "obj_endogeny_361"@12559
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
push.s "obj_endogeny_362"@12561
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
push.s "obj_endogeny_363"@12563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.pet
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_endogeny_366"@12565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.pet
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_endogeny_367"@12567
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.pet
pushi.e 3
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_endogeny_368"@12569
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.pet
pushi.e 4
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_endogeny_369"@12571
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "monstername_57b"@6894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername

:[62]
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
bf [64]

:[63]
push.s "obj_endogeny_370"@12573
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_endogeny_371"@12574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "monstername_57b"@6894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername

:[66]
pushi.e 1
pop.v.i self.attacked

:[67]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [69]

:[68]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[69]
pushi.e -1
pop.v.i self.whatiheard

:[70]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [121]

:[71]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [121]

:[72]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [121]

:[73]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [79]

:[74]
pushi.e 0
pop.v.i global.msc
push.s "obj_endogeny_403"@12576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mercymod
push.i 999999
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_endogeny_404"@12578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[76]
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
pushi.e 9
pop.v.i self.whatiheard

:[79]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [87]

:[80]
pushi.e 0
pop.v.i global.msc
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_endogeny_416"@12580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.close
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_endogeny_420"@12582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endogeny_421"@12584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.d 0.1
push.v self.mypart1
conv.v.i
pop.v.d [stacktop]self.mouthspeed
push.d 0.9
conv.d.v
pushglb.v global.batmusic
call.i caster_set_pitch(argc=2)
popz.v
pushi.e 1
pop.v.i self.close

:[84]
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
pushenv [86]

:[85]
pushi.e 0
pop.v.i self.halt

:[86]
popenv [85]

:[87]
push.v self.whatiheard
pushi.e 2
cmp.i.v EQ
bf [91]

:[88]
pushi.e 0
pop.v.i global.msc
push.s "obj_endogeny_435"@12586
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
pushenv [90]

:[89]
pushi.e 0
pop.v.i self.halt

:[90]
popenv [89]

:[91]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [110]

:[92]
pushi.e 0
pop.v.i global.msc
push.s "obj_endogeny_446"@12588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.pet
pushi.e 4
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_endogeny_449"@12590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
push.v self.pet
pushi.e 3
cmp.i.v EQ
bf [96]

:[95]
pushi.e 4
pop.v.i self.pet
push.s "obj_endogeny_455"@12592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.d 0.3
conv.d.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
push.d 0.8
conv.d.v
pushglb.v global.batmusic
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
push.v self.dogsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.spared
push.v 155.tempspd
pop.v.v global.sp
push.i 999999
pop.v.i self.mercymod
pushi.e 1
pushi.e -5
pushi.e 156
pop.v.i [array]global.flag

:[96]
push.v self.pet
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_endogeny_466"@12594
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.d 1.2
conv.d.v
pushglb.v global.batmusic
call.i caster_set_pitch(argc=2)
popz.v
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.mouthspeed
pushi.e 4
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.shaker
pushi.e 3
pop.v.i self.pet

:[98]
push.v self.pet
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_endogeny_475"@12596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endogeny_476"@12598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[100]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
push.v self.pet
pushi.e 0
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
push.s "obj_endogeny_480"@12600
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endogeny_481"@12602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endogeny_482"@12604
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endogeny_483"@12606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.d 0.2
push.v self.mypart1
conv.v.i
pop.v.d [stacktop]self.mouthspeed
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.shaker
pushi.e 1
conv.i.v
pushglb.v global.batmusic
call.i caster_set_pitch(argc=2)
popz.v
pushi.e 1
pop.v.i self.pet

:[105]
push.v self.close
pushi.e 0
cmp.i.v EQ
bf [107]

:[106]
push.s "obj_endogeny_491"@12608
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
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [120]

:[111]
pushi.e 0
pop.v.i global.msc
push.s "obj_endogeny_500"@12610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.pet
pushi.e 1
cmp.i.v GT
bf [113]

:[112]
push.s "obj_endogeny_503"@12612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[113]
push.v self.pet
pushi.e 1
cmp.i.v EQ
bf [115]

:[114]
push.s "obj_endogeny_507"@12614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endogeny_508"@12616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endogeny_509"@12618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endogeny_510"@12620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.pet
push.d 0.5
push.v self.mypart1
conv.v.i
pop.v.d [stacktop]self.mouthspeed
pushi.e 2
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.shaker
push.d 1.1
conv.d.v
pushglb.v global.batmusic
call.i caster_set_pitch(argc=2)
popz.v

:[115]
push.v self.pet
pushi.e 0
cmp.i.v EQ
bf [117]

:[116]
push.s "obj_endogeny_518"@12622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[117]
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
pushenv [119]

:[118]
pushi.e 0
pop.v.i self.halt

:[119]
popenv [118]

:[120]
pushi.e 1
pop.v.i global.heard

:[121]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [125]

:[122]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [125]

:[123]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [125]

:[124]
call.i instance_destroy(argc=0)
popz.v

:[125]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [127]

:[126]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [end]

:[129]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[end]