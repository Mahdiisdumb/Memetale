.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [3]

:[1]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bt [3]

:[2]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [4]

:[3]
push.e 1

:[4]
bf [10]

:[5]
push.v self.con
pushi.e 7
cmp.i.v GT
bf [7]

:[6]
push.v self.con
pushi.e 30
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 30
pop.v.i self.con

:[10]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
push.i 100000
pop.v.i self.depth
pushi.e 0
pop.v.i self.limbx
pushi.e 0
pop.v.i self.limby
pushi.e 1
pop.v.i global.phasing
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.siner
pushi.e 6
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.x
pushi.e 16
add.i.v
pop.v.v self.xx
push.v self.y
pushi.e 11
add.i.v
pop.v.v self.yy
push.v 1576.x
pop.v.v self.getx
push.v 1576.y
pop.v.v self.gety
push.v self.xx
push.v self.getx
sub.v.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.tox
push.v self.yy
push.v self.gety
sub.v.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.toy
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.ivol
push.v self.ivol
pop.v.v self.vol

:[12]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
push.v self.vol
push.d 0.05
sub.d.v
pop.v.v self.vol
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v 1576.image_index
push.d 0.25
add.d.v
pop.v.v 1576.image_index
push.v 1576.x
push.v self.tox
add.v.v
pop.v.v 1576.x
push.v 1576.y
push.v self.toy
add.v.v
pop.v.v 1576.y

:[14]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 0
pop.v.i 1576.image_index
push.v 1576.x
call.i floor(argc=1)
pop.v.v 1576.x
push.v 1576.y
call.i floor(argc=1)
pop.v.v 1576.y
pushi.e 8
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [18]

:[17]
pushi.e 10
pop.v.i self.con
pushi.e 1
pop.v.i self.win
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [20]

:[19]
pushi.e 12
pop.v.i self.con
pushi.e 340
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [22]

:[21]
push.v self.limbx
push.d 0.1
add.d.v
pop.v.v self.limbx
push.v self.limbx
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.limby

:[22]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [24]

:[23]
push.d 13.1
pop.v.d self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
push.d 14.1
cmp.d.v EQ
bf [26]

:[25]
pushi.e 14
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [28]

:[27]
push.v self.limby
pushi.e 1
add.i.v
pop.v.v self.limby

:[28]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [30]

:[29]
pushi.e 16
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [32]

:[31]
pushi.e 18
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.tuck
push.v self.limby
pushi.e 3
sub.i.v
pop.v.v self.limby

:[34]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i self.siner
pushi.e 20
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [38]

:[37]
pushi.e 22
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[38]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [40]

:[39]
push.v self.limbx
pushi.e 1
add.i.v
pop.v.v self.limbx
push.v self.limby
push.d 0.8
sub.d.v
pop.v.v self.limby

:[40]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [42]

:[41]
pushi.e 24
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[42]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [44]

:[43]
pushi.e 26
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
pushi.e 26
cmp.i.v EQ
bt [47]

:[45]
push.v self.con
pushi.e 27
cmp.i.v EQ
bt [47]

:[46]
push.v self.con
pushi.e 28
cmp.i.v EQ
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.limby
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
div.d.v
add.v.v
pop.v.v self.limby

:[50]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [52]

:[51]
pushi.e 0
pop.v.i self.win
pushi.e 28
pop.v.i self.con

:[52]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [54]

:[53]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
push.i 100000
pop.v.i self.depth
pushi.e 0
pop.v.i self.win
pushi.e 2
pop.v.i self.tuck
pushi.e 3
pop.v.i global.facing
push.d 0.25
pop.v.d 1576.image_speed
pushi.e -3
pop.v.i 1576.hspeed
pushi.e 13
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 31
pop.v.i self.con

:[54]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [59]

:[55]
push.v self.vol
push.v self.ivol
cmp.v.v LT
bf [57]

:[56]
push.v self.vol
push.d 0.08
add.d.v
pop.v.v self.vol
b [58]

:[57]
push.v self.ivol
pop.v.v self.vol

:[58]
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[59]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [63]

:[60]
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 1576
pushenv [62]

:[61]
pushi.e 0
pop.v.i self.uncan

:[62]
popenv [61]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i self.con

:[63]
push.v self.bedy
pushi.e 30
cmp.i.v LT
bf [65]

:[64]
pushi.e 100
pop.v.i self.depth
pushi.e 1
conv.i.v
push.v 1576.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v 1576.y
push.v 1576.x
pushi.e 0
conv.i.v
push.v 1576.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[65]
push.v self.tuck
pushi.e 1
cmp.i.v EQ
bf [68]

:[66]
push.v self.bedy
pushi.e 4
sub.i.v
pop.v.v self.bedy
push.v self.bedy
pushi.e 4
cmp.i.v LTE
bf [68]

:[67]
pushi.e 4
pop.v.i self.bedy

:[68]
push.v self.tuck
pushi.e 2
cmp.i.v EQ
bf [71]

:[69]
pushi.e 0
pop.v.i self.win
push.v self.bedy
pushi.e 4
add.i.v
pop.v.v self.bedy
push.v self.bedy
pushi.e 30
cmp.i.v GTE
bf [71]

:[70]
pushi.e 30
pop.v.i self.bedy
push.i 100000
pop.v.i self.depth
pushi.e 1
conv.i.v
push.v 1576.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v 1576.y
push.v 1576.x
pushi.e 0
conv.i.v
push.v 1576.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.tuck

:[71]
push.v self.win
pushi.e 1
cmp.i.v EQ
bf [75]

:[72]
push.v self.walpha
pushi.e 1
cmp.i.v LT
bf [74]

:[73]
push.v self.walpha
push.d 0.02
add.d.v
pop.v.v self.walpha

:[74]
b [77]

:[75]
push.v self.walpha
pushi.e 0
cmp.i.v GT
bf [77]

:[76]
push.v self.walpha
push.d 0.1
sub.d.v
pop.v.v self.walpha

:[77]
push.v self.y
pushi.e 13
add.i.v
push.v self.bedy
add.v.v
push.v self.x
pushi.e 2
add.i.v
pushi.e 39
push.v self.bedy
sub.v.i
pushi.e 46
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2256
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.walpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 15
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2258
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.walpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.limby
add.v.v
push.v self.x
pushi.e 14
sub.i.v
pushi.e 20
conv.i.v
push.v self.limbx
pushi.e 0
conv.i.v
pushi.e 50
push.v self.limbx
sub.v.i
pushi.e 0
conv.i.v
pushi.e 2259
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]