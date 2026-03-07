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
pushi.e 70
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
bf [11]

:[6]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [8]

:[7]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[11]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
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

:[13]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [19]

:[14]
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
pushenv [16]

:[15]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[16]
popenv [15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [18]

:[17]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
push.v self.normalsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [19]

:[18]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[19]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [23]

:[20]
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
pushenv [22]

:[21]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[22]
popenv [21]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[23]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [46]

:[24]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [46]

:[25]
pushi.e 110
pop.v.i global.turntimer
pushi.e 4
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
bf [27]

:[26]
pushi.e 2
pop.v.i self.mycommand

:[27]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [29]

:[28]
pushi.e 13
pop.v.i global.firingrate
pushi.e 650
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
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[29]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [31]

:[30]
pushi.e 13
pop.v.i global.firingrate
pushi.e 655
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
pushi.e 0
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[31]
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
bf [33]

:[32]
push.s "* Doge is pacing anxiously."@48104
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[33]
push.v self.mycommand
pushi.e 30
cmp.i.v GTE
bf [35]

:[34]
push.s "* Doge paws at an imaginary&  door."@48105
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[35]
push.v self.mycommand
pushi.e 70
cmp.i.v GTE
bf [37]

:[36]
push.s "* Doge is looking at you and&  whining."@48106
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[37]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [39]

:[38]
push.s "* Doge is wondering where she&  put her leash."@48107
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[39]
push.v self.mercymod
pushi.e 20
cmp.i.v GTE
bf [41]

:[40]
push.s "* Doge is now primed for petting."@48108
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[41]
push.v self.mercymod
pushi.e 100
cmp.i.v GTE
bf [43]

:[42]
push.s "* Doge looks satisfied."@48109
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[43]
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
bf [45]

:[44]
push.s "* Doge needs a vet."@48110
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[45]
pushi.e 1
pop.v.i self.attacked

:[46]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [83]

:[47]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [83]

:[48]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [83]

:[49]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [53]

:[50]
pushi.e 0
pop.v.i global.msc
push.s "* DOGE - ATK 7 DEF 5&* Pronounced \"dohj.\" Soft j^1.&* Seems like she wants a walk./^"@48111
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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
pushenv [52]

:[51]
pushi.e 0
pop.v.i self.halt

:[52]
popenv [51]

:[53]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [57]

:[54]
pushi.e 0
pop.v.i global.msc
push.s "* You tried to bathe Doge^2,&  but she's perfectly clean.../^"@48112
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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
pushi.e 2
cmp.i.v EQ
bf [65]

:[58]
push.v self.mercymod
pushi.e 10
cmp.i.v LTE
bf [62]

:[59]
pushi.e 0
pop.v.i global.msc
push.s "* You go on a short walk with&  the Doge./^"@48113
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.halt

:[61]
popenv [60]
pushi.e 20
pop.v.i self.mercymod
b [65]

:[62]
pushi.e 0
pop.v.i global.msc
push.s "* The Doge seems all tuckered&  out./^"@48114
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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
pushenv [64]

:[63]
pushi.e 0
pop.v.i self.halt

:[64]
popenv [63]

:[65]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [70]

:[66]
pushi.e 0
pop.v.i global.msc
push.s "* You called Doge over.&* Doge came close./^"@48115
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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
pushenv [68]

:[67]
pushi.e 0
pop.v.i self.halt

:[68]
popenv [67]
push.v self.mercymod
pushi.e 0
cmp.i.v EQ
bf [70]

:[69]
pushi.e 10
pop.v.i self.mercymod

:[70]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [74]

:[71]
pushi.e 0
pop.v.i global.msc
push.s "* Dry a dry doge?&* Your mind boggles at this&  impossibility./^"@48116
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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
pushenv [73]

:[72]
pushi.e 0
pop.v.i self.halt

:[73]
popenv [72]

:[74]
push.v self.whatiheard
pushi.e 5
cmp.i.v EQ
bf [82]

:[75]
push.v self.mercymod
pushi.e 20
cmp.i.v GTE
bf [79]

:[76]
pushi.e 0
pop.v.i global.msc
push.s "* You pet the Doge.&* What a good Doge./^"@48117
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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
pushi.e 100
pop.v.i self.mercymod
b [82]

:[79]
pushi.e 0
pop.v.i global.msc
push.s "* Doge seems too dangerous&  to pet..^1.&* For now./^"@48118
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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
pushenv [81]

:[80]
pushi.e 0
pop.v.i self.halt

:[81]
popenv [80]

:[82]
pushi.e 1
pop.v.i global.heard

:[83]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [end]

:[84]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [end]

:[85]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[86]
call.i instance_destroy(argc=0)
popz.v

:[end]