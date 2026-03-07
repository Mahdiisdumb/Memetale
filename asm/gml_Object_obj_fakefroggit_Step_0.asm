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

:[15]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [21]

:[16]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [18]

:[17]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[21]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
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

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [29]

:[24]
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
pushenv [26]

:[25]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[26]
popenv [25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [28]

:[27]
pushi.e 216
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 215
conv.i.v
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
b [29]

:[28]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[29]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [33]

:[30]
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
pushenv [32]

:[31]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[32]
popenv [31]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[33]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [48]

:[34]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [48]

:[35]
pushi.e 100
pop.v.i global.turntimer
pushi.e 20
pop.v.i global.firingrate
pushi.e 714
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [37]

:[36]
push.s "obj_fakefroggit_479"@12718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [39]

:[38]
push.s "obj_fakefroggit_480"@12720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [41]

:[40]
push.s "obj_fakefroggit_481"@12722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [43]

:[42]
push.s "obj_fakefroggit_482"@12724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
push.v self.mercymod
pushi.e 5
cmp.i.v GT
bf [45]

:[44]
push.s "obj_fakefroggit_483"@12726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[45]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 5
cmp.i.v LT
bf [47]

:[46]
push.s "obj_fakefroggit_484"@12728
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
pushi.e 1
pop.v.i self.attacked

:[48]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [64]

:[49]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [64]

:[50]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [64]

:[51]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [55]

:[52]
pushi.e 0
pop.v.i global.msc
push.s "obj_fakefroggit_500"@12730
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
pushenv [54]

:[53]
pushi.e 0
pop.v.i self.halt

:[54]
popenv [53]

:[55]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [59]

:[56]
pushi.e 0
pop.v.i global.msc
push.s "obj_fakefroggit_508"@12732
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
pushenv [58]

:[57]
pushi.e 0
pop.v.i self.halt

:[58]
popenv [57]
pushi.e 30
pop.v.i self.mercymod

:[59]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [63]

:[60]
pushi.e 0
pop.v.i global.msc
push.s "obj_fakefroggit_518"@12734
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
pushenv [62]

:[61]
pushi.e 0
pop.v.i self.halt

:[62]
popenv [61]
pushi.e 30
pop.v.i self.mercymod

:[63]
pushi.e 1
pop.v.i global.heard

:[64]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [68]

:[65]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [68]

:[66]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [68]

:[67]
call.i instance_destroy(argc=0)
popz.v

:[68]
push.v self.x
push.v self.sprite_width
neg.v
cmp.v.v LT
bf [end]

:[69]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster

:[end]