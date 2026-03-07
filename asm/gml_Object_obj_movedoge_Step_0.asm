.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [8]

:[1]
push.s "obj_movedoge_392"@18536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.excited
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_movedoge_393"@18538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [5]

:[4]
push.s "obj_movedoge_394"@18540
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.mercymod
pushi.e 300
cmp.i.v GT
bf [7]

:[6]
push.s "obj_movedoge_395"@18542
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushi.e 0
pop.v.i self.attacked

:[8]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [18]

:[9]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
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
bf [12]

:[11]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[12]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [15]

:[13]
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
bf [15]

:[14]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[15]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [18]

:[16]
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
bf [18]

:[17]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[18]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [21]

:[19]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
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

:[21]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [28]

:[22]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [25]

:[23]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [25]

:[24]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[28]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
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

:[30]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [36]

:[31]
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
pushenv [33]

:[32]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[33]
popenv [32]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [35]

:[34]
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
push.v self.part3
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart3
push.v self.part4
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart4
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
b [36]

:[35]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[36]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [40]

:[37]
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
pushenv [39]

:[38]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[39]
popenv [38]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[40]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [53]

:[41]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [53]

:[42]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 120
pop.v.i global.turntimer
pushi.e 15
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
pushglb.v global.firingrate
push.d 2.4
mul.d.v
pop.v.v global.firingrate

:[44]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushglb.v global.firingrate
push.d 1.7
mul.d.v
pop.v.v global.firingrate

:[46]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [48]

:[47]
push.v self.mycommand
push.d 99.9
cmp.d.v LTE
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 13
pop.v.i global.firingrate
pushi.e 657
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 45
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 8
pop.v.i global.border
b [52]

:[51]
push.v global.firingrate
pushi.e 10
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

:[52]
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e 1
pop.v.i self.attacked

:[53]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [69]

:[54]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [69]

:[55]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [69]

:[56]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [60]

:[57]
pushi.e 0
pop.v.i global.msc
push.s "obj_movedoge_502"@18544
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
pushenv [59]

:[58]
pushi.e 0
pop.v.i self.halt

:[59]
popenv [58]

:[60]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [68]

:[61]
pushi.e 0
pop.v.i global.msc
push.s "obj_movedoge_511"@18546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.excited
pushi.e 0
cmp.i.v EQ
bf [65]

:[62]
push.s "obj_movedoge_514"@18548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_movedoge_515"@18549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 139
pop.v.i [array]global.flag
pushi.e 1000
pop.v.i self.mercymod
push.v self.pets
pushi.e 4
cmp.i.v LT
bf [64]

:[63]
push.v self.pets
pushi.e 1
add.i.v
pop.v.v self.pets
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.excited
pushi.e 999
push.v self.mypart1
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
b [65]

:[64]
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.excited
pushi.e 3
push.v self.mypart1
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.excited

:[65]
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

:[68]
pushi.e 1
pop.v.i global.heard

:[69]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [73]

:[70]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [73]

:[71]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [73]

:[72]
call.i instance_destroy(argc=0)
popz.v

:[73]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [75]

:[74]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [end]

:[77]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[78]
call.i instance_destroy(argc=0)
popz.v

:[end]