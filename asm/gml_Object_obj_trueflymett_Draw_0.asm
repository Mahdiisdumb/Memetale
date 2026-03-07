.localvar 0 arguments

:[0]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pop.v.v self.y
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1788
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 11
add.i.v
pushi.e 0
conv.i.v
pushi.e 1809
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 350
add.i.v
pop.v.v self.x
pushi.e -6
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.con

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 280
add.i.v
cmp.v.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4
pop.v.i self.con
pushi.e 10
pop.v.i self.hspeed

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [11]

:[9]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 360
add.i.v
cmp.v.v GT
bf [11]

:[10]
pushi.e 0
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
pushi.e 1
pop.v.i self.setmode

:[11]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [34]

:[12]
push.v self.modetime
pushi.e 1
push.v self.insanity
push.d 2.7
div.d.v
add.v.i
add.v.v
pop.v.v self.modetime
push.v self.modetime
pushi.e 20
cmp.i.v GT
bf [14]

:[13]
push.v self.modetime
pushi.e 170
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [20]

:[16]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 300
add.i.v
cmp.v.v GT
bf [18]

:[17]
pushi.e -5
push.v self.insanity
pushi.e 2
mul.i.v
sub.v.i
pop.v.v self.hspeed

:[18]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
cmp.v.v LT
bf [20]

:[19]
pushi.e 5
push.v self.insanity
pushi.e 2
mul.i.v
add.v.i
pop.v.v self.hspeed

:[20]
push.v self.modetime
pushi.e 170
cmp.i.v GTE
bf [29]

:[21]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 150
add.i.v
cmp.v.v LTE
bf [23]

:[22]
pushi.e -6
pop.v.i self.hspeed

:[23]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 150
add.i.v
cmp.v.v GTE
bf [25]

:[24]
pushi.e 6
pop.v.i self.hspeed

:[25]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 350
add.i.v
cmp.v.v GT
bf [27]

:[26]
pushi.e 2
pop.v.i self.setmode

:[27]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
cmp.v.v LT
bf [29]

:[28]
pushi.e 2
pop.v.i self.setmode

:[29]
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pop.v.v self.y
push.v self.siner
push.d 1.5
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.sx
push.v self.siner
push.d 1.2
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
pop.v.v self.sy
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.sy
add.v.v
pushi.e 5
add.i.v
push.v self.x
pushi.e 30
sub.i.v
push.v self.sx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1791
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 11
add.i.v
pushi.e 0
conv.i.v
pushi.e 1809
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1790
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.eggtimer
pushi.e 1
add.i.v
pop.v.v self.eggtimer
push.v self.eggtimer
pushi.e 4
push.v self.insanity
sub.v.i
cmp.v.v GTE
bf [31]

:[30]
push.v 1187.eligible
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1183
conv.i.v
push.v self.y
push.v self.sy
add.v.v
pushi.e 5
add.i.v
pushi.e 22
add.i.v
push.v self.x
pushi.e 30
sub.i.v
push.v self.sx
add.v.v
pushi.e 5
add.i.v
pushi.e 13
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.egg
pushi.e 0
pop.v.i self.eggtimer

:[34]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [57]

:[35]
push.v self.modetime
pushi.e 1
push.v self.insanity
push.d 2.7
div.d.v
add.v.i
add.v.v
pop.v.v self.modetime
push.v self.modetime
pushi.e 20
cmp.i.v GT
bf [37]

:[36]
push.v self.modetime
pushi.e 170
cmp.i.v LT
b [38]

:[37]
push.e 0

:[38]
bf [43]

:[39]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 300
add.i.v
cmp.v.v GT
bf [41]

:[40]
pushi.e -3
pop.v.i self.hspeed

:[41]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
cmp.v.v LT
bf [43]

:[42]
pushi.e 3
pop.v.i self.hspeed

:[43]
push.v self.modetime
pushi.e 170
cmp.i.v GTE
bf [52]

:[44]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 150
add.i.v
cmp.v.v LTE
bf [46]

:[45]
pushi.e -8
pop.v.i self.hspeed

:[46]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 150
add.i.v
cmp.v.v GTE
bf [48]

:[47]
pushi.e 8
pop.v.i self.hspeed

:[48]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 350
add.i.v
cmp.v.v GT
bf [50]

:[49]
pushi.e 3
pop.v.i self.setmode

:[50]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
cmp.v.v LT
bf [52]

:[51]
pushi.e 3
pop.v.i self.setmode

:[52]
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.sugartimer
pushi.e 1
add.i.v
pop.v.v self.sugartimer
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1788
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.x
pushi.e 11
sub.i.v
push.v self.sugartimer
pushi.e 4
conv.i.d
div.d.v
pushi.e 1789
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 11
add.i.v
pushi.e 0
conv.i.v
pushi.e 1809
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.sugartimer
pushi.e 20
push.v self.insanity
pushi.e 3
mul.i.v
sub.v.i
cmp.v.v GTE
bf [54]

:[53]
push.v 1187.eligible
pushi.e 1
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.sugartimer

:[57]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [80]

:[58]
push.v self.modetime
pushi.e 1
push.v self.insanity
push.d 2.7
div.d.v
add.v.i
add.v.v
pop.v.v self.modetime
push.v self.modetime
pushi.e 20
cmp.i.v GT
bf [60]

:[59]
push.v self.modetime
pushi.e 170
cmp.i.v LT
b [61]

:[60]
push.e 0

:[61]
bf [66]

:[62]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 300
add.i.v
cmp.v.v GT
bf [64]

:[63]
pushi.e -6
push.v self.insanity
sub.v.i
pop.v.v self.hspeed

:[64]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
cmp.v.v LT
bf [66]

:[65]
pushi.e 6
push.v self.insanity
add.v.i
pop.v.v self.hspeed

:[66]
push.v self.modetime
pushi.e 170
cmp.i.v GTE
bf [75]

:[67]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 150
add.i.v
cmp.v.v LTE
bf [69]

:[68]
pushi.e -8
pop.v.i self.hspeed

:[69]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 150
add.i.v
cmp.v.v GTE
bf [71]

:[70]
pushi.e 8
pop.v.i self.hspeed

:[71]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 350
add.i.v
cmp.v.v GT
bf [73]

:[72]
pushi.e 1
pop.v.i self.setmode

:[73]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
cmp.v.v LT
bf [75]

:[74]
pushi.e 1
pop.v.i self.setmode

:[75]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 100
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
sub.v.i
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 31
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1784
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1785
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 13
sub.i.v
push.v self.x
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
pushi.e 1809
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 10
push.v self.insanity
pushi.e 2
mul.i.v
sub.v.i
cmp.v.v GTE
bf [77]

:[76]
push.v 1187.eligible
pushi.e 1
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 1181
conv.i.v
push.v self.y
pushi.e 37
add.i.v
push.v self.x
pushi.e 16
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.milktimer

:[80]
push.v self.mode
pushi.e 4
cmp.i.v EQ
bf [82]

:[81]
pushi.e 0
pop.v.i self.speed
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1788
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
pushi.e 11
add.i.v
pushi.e 0
conv.i.v
pushi.e 1809
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[82]
push.v self.setmode
pushi.e 1
cmp.i.v EQ
bf [86]

:[83]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 350
add.i.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 20
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.mode
pushi.e 0
pop.v.i self.modetime
pushi.e 0
pop.v.i self.modecon
pushi.e -5
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.setmode
push.v self.insanity
pushi.e 3
cmp.i.v LTE
bf [85]

:[84]
push.v self.insanity
pushi.e 1
add.i.v
pop.v.v self.insanity

:[85]
pushi.e 0
pop.v.i self.eggtimer

:[86]
push.v self.setmode
pushi.e 2
cmp.i.v EQ
bf [88]

:[87]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 350
add.i.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 20
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.mode
pushi.e 0
pop.v.i self.modetime
pushi.e 0
pop.v.i self.modecon
pushi.e -5
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.setmode
pushi.e 0
pop.v.i self.sugartimer

:[88]
push.v self.setmode
pushi.e 3
cmp.i.v EQ
bf [end]

:[89]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 420
add.i.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 20
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.siner
pushi.e 3
pop.v.i self.mode
pushi.e 0
pop.v.i self.modetime
pushi.e 0
pop.v.i self.modecon
pushi.e -5
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.setmode
pushi.e 0
pop.v.i self.milktimer

:[end]