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
bf [5]

:[3]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
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

:[5]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [12]

:[6]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [9]

:[7]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [9]

:[8]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[12]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
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

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [22]

:[15]
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
pushenv [17]

:[16]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[17]
popenv [16]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [21]

:[18]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 204
pop.v.i self.sprite_index
push.v self.mercymod
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
pushi.e 206
pop.v.i self.sprite_index

:[20]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [22]

:[21]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [26]

:[23]
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
pushenv [25]

:[24]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[25]
popenv [24]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[26]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [50]

:[27]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [50]

:[28]
pushi.e 110
pop.v.i global.turntimer
pushi.e 6
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
bf [30]

:[29]
pushi.e 99
pop.v.i self.mycommand

:[30]
push.v self.mercymod
pushi.e 0
cmp.i.v LT
bf [36]

:[31]
push.v self.mycommand
pushi.e 5
cmp.i.v LT
bf [33]

:[32]
pushi.e 15
pop.v.i global.firingrate
pushi.e 714
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
pop.v.i [stacktop]self.bullettype

:[33]
push.v self.mycommand
pushi.e 5
cmp.i.v GTE
bf [35]

:[34]
pushi.e 7
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 4
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[35]
b [37]

:[36]
pushi.e 628
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[37]
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
bf [39]

:[38]
push.s "obj_migosp_441"@18080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [41]

:[40]
push.s "obj_migosp_442"@18082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [43]

:[42]
push.s "obj_migosp_443"@18084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [45]

:[44]
push.s "obj_migosp_444"@18086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[45]
push.v self.mercymod
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
push.s "obj_migosp_445"@18088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LT
bf [49]

:[48]
push.s "obj_migosp_446"@18090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
pushi.e 1
pop.v.i self.attacked

:[50]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [60]

:[51]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [60]

:[52]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [60]

:[53]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [57]

:[54]
pushi.e 0
pop.v.i global.msc
push.s "obj_migosp_468"@18092
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
pushenv [56]

:[55]
pushi.e 0
pop.v.i self.halt

:[56]
popenv [55]

:[57]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
pushi.e -5
pushi.e 135
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[59]
pushi.e 1
pop.v.i global.heard

:[60]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[61]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[62]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[63]
call.i instance_destroy(argc=0)
popz.v

:[end]