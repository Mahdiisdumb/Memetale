.localvar 0 arguments

:[0]
push.v self.image_yscale
push.d 0.9
cmp.d.v LT
bf [2]

:[1]
push.d 0.01
pop.v.d self.scalevalue

:[2]
push.v self.image_yscale
push.d 1.1
cmp.d.v GT
bf [4]

:[3]
push.d -0.01
pop.v.d self.scalevalue

:[4]
push.v self.image_yscale
push.v self.scalevalue
add.v.v
pop.v.v self.image_yscale
push.v self.y
pushi.e 102
push.v self.scalevalue
mul.v.i
sub.v.v
pop.v.v self.y
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.attacked

:[6]
call.i scr_blconmatch(argc=0)
popz.v
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 60
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
push.d 0.01
pop.v.d self.scalevalue
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
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

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
pushi.e 120
pop.v.i global.turntimer
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [32]

:[31]
push.v self.mycommand
pushi.e 50
cmp.i.v LTE
b [33]

:[32]
push.e 0

:[33]
bf [39]

:[34]
pushi.e 15
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
pushglb.v global.firingrate
pushi.e 2
mul.i.v
pop.v.v global.firingrate

:[36]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
push.d 1.5
mul.d.v
pop.v.v global.firingrate

:[38]
pushi.e 714
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
pop.v.i [stacktop]self.bullettype
b [44]

:[39]
pushi.e 30
pop.v.i global.firingrate
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
pushglb.v global.firingrate
pushi.e 2
mul.i.v
pop.v.v global.firingrate

:[41]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
pushglb.v global.firingrate
push.d 1.5
mul.d.v
pop.v.v global.firingrate

:[43]
pushi.e 714
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
pop.v.i [stacktop]self.bullettype

:[44]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_moldsmal_391"@18295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_moldsmal_392"@18297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [50]

:[49]
push.s "obj_moldsmal_393"@18299
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
push.s "obj_moldsmal_394"@18301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 15
cmp.i.v LT
bf [54]

:[53]
push.s "obj_moldsmal_395"@18303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
pushi.e 1
pop.v.i self.attacked

:[55]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [73]

:[56]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [73]

:[57]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [73]

:[58]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [64]

:[59]
pushi.e 0
pop.v.i global.msc
push.s "obj_moldsmal_412"@18305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pushi.e 6
cmp.i.v GT
bf [61]

:[60]
push.s "obj_moldsmal_413"@18307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
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
pushenv [63]

:[62]
pushi.e 0
pop.v.i self.halt

:[63]
popenv [62]

:[64]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [68]

:[65]
pushi.e 1
pushi.e -5
pushi.e 132
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
push.s "obj_moldsmal_422"@18309
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
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.halt

:[67]
popenv [66]
pushi.e 101
pop.v.i self.mercymod

:[68]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [72]

:[69]
pushi.e 1
pushi.e -5
pushi.e 132
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
push.s "obj_moldsmal_434"@18311
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
pushenv [71]

:[70]
pushi.e 0
pop.v.i self.halt

:[71]
popenv [70]
pushi.e 101
pop.v.i self.mercymod

:[72]
pushi.e 1
pop.v.i global.heard

:[73]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[74]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[75]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[end]