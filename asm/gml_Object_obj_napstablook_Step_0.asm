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
call.i scr_blconmatch(argc=0)
popz.v
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [9]

:[3]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [9]

:[4]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e 75
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[6]
push.v self.mercymod
pushi.e -49
cmp.i.v EQ
bf [8]

:[7]
pushi.e 400
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[8]
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[9]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [16]

:[10]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [13]

:[11]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [13]

:[12]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[16]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
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

:[18]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [24]

:[19]
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
pushenv [21]

:[20]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[21]
popenv [20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [23]

:[22]
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
b [24]

:[23]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [28]

:[25]
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
pushenv [27]

:[26]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[27]
popenv [26]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[28]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [55]

:[29]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [55]

:[30]
pushi.e 160
pop.v.i global.turntimer
push.v self.mercymod
pushi.e -100
cmp.i.v NEQ
bf [41]

:[31]
pushglb.v global.turn
pushi.e 1
cmp.i.v NEQ
bf [39]

:[32]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [34]

:[33]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 140
pop.v.i global.turntimer
pushi.e 4000
conv.i.d
push.v self.mercymod
neg.v
div.v.d
pop.v.v global.firingrate
pushi.e 708
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
b [38]

:[37]
pushi.e 170
pop.v.i global.turntimer
pushi.e 3600
conv.i.d
push.v self.mercymod
neg.v
div.v.d
pop.v.v global.firingrate
pushi.e 709
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[38]
b [40]

:[39]
pushi.e 140
pop.v.i global.turntimer
pushi.e 711
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[40]
b [42]

:[41]
pushi.e 260
pop.v.i global.turntimer
pushi.e 8
pop.v.i global.firingrate
pushi.e 623
conv.i.v
push.v 211.y
pushi.e 30
sub.i.v
push.v 211.x
pushi.e 34
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 710
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[42]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [44]

:[43]
push.s "obj_napstablook_549"@18785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_napstablook_550"@18787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_napstablook_551"@18789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_napstablook_552"@18791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.mercymod
pushi.e -400
cmp.i.v GT
bf [52]

:[51]
push.s "obj_napstablook_553"@18793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.mercymod
pushi.e -290
cmp.i.v GT
bf [54]

:[53]
push.s "obj_napstablook_554"@18795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
pushi.e 1
pop.v.i self.attacked

:[55]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [57]

:[56]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [61]

:[59]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [92]

:[62]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [92]

:[63]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [92]

:[64]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [70]

:[65]
pushi.e 0
pop.v.i global.msc
push.s "obj_napstablook_576"@18797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_napstablook_579"@18799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
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
pushenv [69]

:[68]
pushi.e 0
pop.v.i self.halt

:[69]
popenv [68]

:[70]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [73]

:[71]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
push.v self.mercymod
pushi.e -50
cmp.i.v EQ
bf [73]

:[72]
pushi.e -49
pop.v.i self.mercymod
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[73]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [77]

:[74]
pushi.e 0
pop.v.i global.msc
push.s "obj_napstablook_603"@18801
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
pushenv [76]

:[75]
pushi.e 0
pop.v.i self.halt

:[76]
popenv [75]

:[77]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [91]

:[78]
pushi.e 0
pop.v.i global.msc
push.v self.mercymod
pushi.e -50
cmp.i.v EQ
bf [80]

:[79]
pushi.e -49
pop.v.i self.mercymod
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [91]

:[80]
push.v self.mercymod
pushi.e -400
cmp.i.v LT
bf [82]

:[81]
push.s "obj_napstablook_621"@18803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.mercymod
pushi.e -400
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_napstablook_622"@18805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.v self.mercymod
pushi.e -300
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_napstablook_623"@18807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
push.v self.mercymod
pushi.e -200
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_napstablook_624"@18809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
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
push.v self.mercymod
pushi.e 100
add.i.v
pop.v.v self.mercymod

:[91]
pushi.e 1
pop.v.i global.heard

:[92]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[93]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[94]
pushi.e 1
pop.v.i self.mercer
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[95]
call.i instance_destroy(argc=0)
popz.v

:[end]