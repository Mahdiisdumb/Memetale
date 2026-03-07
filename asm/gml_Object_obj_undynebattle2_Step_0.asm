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

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
push.v self.con
pushi.e 20
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [31]

:[28]
push.v self.dmgwriter
conv.v.i
pushenv [30]

:[29]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[30]
popenv [29]
push.d 20.1
pop.v.d self.con
pushi.e 0
pop.v.i global.myfight
pushi.e 99
pop.v.i global.mnfight

:[31]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [35]

:[32]
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
pushenv [34]

:[33]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[34]
popenv [33]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[35]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [40]

:[36]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [39]

:[37]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [39]

:[38]
push.s "obj_undynebattle2_488"@28686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
pushi.e 1
pop.v.i self.attacked
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i self.whatiheard

:[40]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [52]

:[41]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [52]

:[42]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [52]

:[43]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [47]

:[44]
pushi.e 0
pop.v.i global.msc
push.s "obj_undynebattle2_520"@28688
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
pushenv [46]

:[45]
pushi.e 0
pop.v.i self.halt

:[46]
popenv [45]
pushi.e 9
pop.v.i self.whatiheard

:[47]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [51]

:[48]
pushi.e 80
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
push.s "obj_undynebattle2_530"@28690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.encourage
push.v self.criticize
pushi.e 1
add.i.v
pop.v.v self.criticize
pushi.e 0
pop.v.i self.hug
pushi.e -200
pop.v.i self.mercymod
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
pushenv [50]

:[49]
pushi.e 0
pop.v.i self.halt

:[50]
popenv [49]

:[51]
pushi.e 1
pop.v.i global.heard

:[52]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e -200
pop.v.i 744.x
pushi.e 1
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[54]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 0
pop.v.i global.myfight
pushi.e 99
pop.v.i global.mnfight
pushi.e -200
pop.v.i 744.x

:[56]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.d 4.1
pop.v.d self.con

:[58]
push.v self.con
push.d 4.1
cmp.d.v EQ
bf [60]

:[59]
pushi.e 39
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_undynebattle2_578"@28692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynebattle2_579"@28694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynebattle2_580"@28696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynebattle2_581"@28698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynebattle2_582"@28700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynebattle2_583"@28702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynebattle2_584"@28704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e -200
pop.v.i 744.x
push.d 4.2
pop.v.d self.con

:[60]
push.v self.con
push.d 4.2
cmp.d.v EQ
bf [62]

:[61]
call.i scr_textskip(argc=0)
popz.v

:[62]
push.v self.con
push.d 4.2
cmp.d.v EQ
bf [64]

:[63]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 8
pop.v.i global.faceemotion
push.s "obj_undynebattle2_599"@28705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 5
pop.v.i self.con

:[67]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [69]

:[68]
pushi.e 1087
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.wht
push.i -99999
push.v self.wht
conv.v.i
pop.v.i [stacktop]self.depth
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
pushi.e 16
pop.v.i self.con

:[69]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [72]

:[70]
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
bf [72]

:[71]
pushi.e 17
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[72]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [76]

:[73]
push.v self.wht
conv.v.i
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]
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

:[76]
push.v self.con
push.d 20.1
cmp.d.v EQ
bf [78]

:[77]
push.d 20.2
pop.v.d self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[78]
push.v self.con
push.d 21.2
cmp.d.v EQ
bf [80]

:[79]
pushi.e 0
pop.v.i global.msc
pushi.e 39
pop.v.i global.typer
push.s "obj_undynebattle2_645"@28707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynebattle2_646"@28709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynebattle2_647"@28711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynebattle2_648"@28713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynebattle2_649"@28714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynebattle2_650"@28716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 23
pop.v.i self.con

:[80]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [82]

:[81]
call.i scr_textskip(argc=0)
popz.v

:[82]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [84]

:[83]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [88]

:[86]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.off
push.v self.mypart1
conv.v.i
push.v [stacktop]self.noanim
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
pushi.e 24
pop.v.i self.con

:[88]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [90]

:[89]
pushi.e 0
pop.v.i global.msc
pushi.e 39
pop.v.i global.typer
push.s "obj_undynebattle2_670"@28718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynebattle2_671"@28720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynebattle2_672"@28722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynebattle2_673"@28724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynebattle2_674"@28726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynebattle2_678"@28728
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynebattle2_679"@28730
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynebattle2_680"@28731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynebattle2_681"@28733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynebattle2_682"@28735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynebattle2_683"@28737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynebattle2_684"@28739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynebattle2_685"@28741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynebattle2_686"@28743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynebattle2_687"@28745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynebattle2_688"@28747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_undynebattle2_689"@28749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_undynebattle2_690"@28751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_undynebattle2_691"@28753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_undynebattle2_692"@28755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_undynebattle2_693"@28757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_undynebattle2_694"@28759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_undynebattle2_695"@28761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.v self.blcony
push.v self.blconx
pushi.e 70
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 25
pop.v.i self.con

:[90]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [92]

:[91]
call.i scr_textskip(argc=0)
popz.v

:[92]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [94]

:[93]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
pushi.e 26
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[97]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [99]

:[98]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 28
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[99]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [101]

:[100]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "UD"@47569
conv.s.v
push.s "Undyne"@6863
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.udhd
push.v self.udhd
pushi.e 1
add.i.v
push.s "UD"@47569
conv.s.v
push.s "Undyne"@6863
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.mercy
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pushi.e -5
pushi.e 389
pop.v.i [array]global.flag
pushi.e 117
conv.i.v
call.i room_goto(argc=1)
popz.v

:[101]
push.v self.con
pushi.e 80
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
bf [106]

:[105]
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i global.damage
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[106]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [110]

:[107]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [110]

:[108]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [112]

:[111]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
bf [end]

:[114]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[115]
call.i instance_destroy(argc=0)
popz.v

:[end]