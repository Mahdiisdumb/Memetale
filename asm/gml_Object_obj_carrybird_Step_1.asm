.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.carry
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.d 0.05
conv.d.v
call.i scr_musfadepause(argc=1)
popz.v

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.carry
pushi.e 1
pop.v.i global.phasing

:[7]
push.v self.carry
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.interact

:[9]
push.v self.carry
pushi.e 3
cmp.i.v EQ
bf [13]

:[10]
pushi.e 0
pop.v.i self.voli
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.d 1.1
conv.d.v
push.d 0.2
conv.d.v
push.v self.birdsong
call.i caster_loop(argc=3)
popz.v

:[12]
pushi.e 1687
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
push.v 1576.x
push.v self.x
sub.v.v
pop.v.v self.hdist
push.v 1576.y
pushi.e 10
sub.i.v
push.v self.y
sub.v.v
pop.v.v self.vdist
push.v self.hdist
pushi.e 30
conv.i.d
div.d.v
pop.v.v self.hspeed
push.v self.vdist
pushi.e 30
conv.i.d
div.d.v
pop.v.v self.vspeed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.carry

:[13]
push.v self.carry
pushi.e 4
cmp.i.v EQ
bf [16]

:[14]
push.v self.voli
push.d 0.02
add.d.v
pop.v.v self.voli
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.voli
push.v self.birdsong
call.i caster_set_volume(argc=2)
popz.v

:[16]
push.v self.carry
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
push.v 1576.x
pop.v.v self.x
push.v 1576.y
pushi.e 10
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.sinoid
pushi.e 6
pop.v.i self.carry
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.carry
pushi.e 7
cmp.i.v EQ
bf [20]

:[19]
push.d -0.5
pop.v.d self.vspeed
pushi.e 8
pop.v.i self.carry
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.carry
pushi.e 9
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.clamp_r
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i self.carry
pushi.e 2
pop.v.i self.sinoid

:[22]
push.v self.carry
pushi.e 11
cmp.i.v EQ
bf [26]

:[23]
pushi.e 0
pop.v.i self.vspeed
push.d -0.4
pop.v.d self.hspeed
push.v self.right
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.d 0.4
pop.v.d self.hspeed

:[25]
pushi.e 12
pop.v.i self.carry
pushi.e 360
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.right
pushi.e 0
cmp.i.v EQ
bf [33]

:[27]
push.v self.carry
pushi.e 12
cmp.i.v EQ
bf [30]

:[28]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [30]

:[29]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 5
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.alarm
pushi.e 1
add.i.v
pop.i.v [array]self.alarm

:[33]
push.v self.right
pushi.e 1
cmp.i.v EQ
bf [40]

:[34]
push.v self.carry
pushi.e 12
cmp.i.v EQ
bf [37]

:[35]
push.v self.x
pushi.e 240
cmp.i.v LT
bf [37]

:[36]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 5
cmp.i.v LT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.alarm
pushi.e 1
add.i.v
pop.i.v [array]self.alarm

:[40]
push.v self.carry
pushi.e 13
cmp.i.v EQ
bf [42]

:[41]
push.d 0.5
pop.v.d self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 14
pop.v.i self.carry

:[42]
push.v self.carry
pushi.e 14
cmp.i.v EQ
bf [45]

:[43]
push.v self.y
pushi.e 90
cmp.i.v LT
bf [45]

:[44]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 5
cmp.i.v LT
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.alarm
pushi.e 1
add.i.v
pop.i.v [array]self.alarm

:[48]
push.v self.carry
pushi.e 14
cmp.i.v EQ
bf [51]

:[49]
push.v self.y
pushi.e 90
cmp.i.v GT
bf [51]

:[50]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.alarm
pushi.e 1
sub.i.v
pop.i.v [array]self.alarm

:[54]
push.v self.carry
pushi.e 14
cmp.i.v EQ
bf [59]

:[55]
push.v self.voli
pushi.e 0
cmp.i.v GT
bf [57]

:[56]
push.v self.voli
push.d 0.008
sub.d.v
pop.v.v self.voli

:[57]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
push.v self.voli
push.v self.birdsong
call.i caster_set_volume(argc=2)
popz.v

:[59]
push.v self.carry
pushi.e 15
cmp.i.v EQ
bf [63]

:[60]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
push.v self.birdsong
call.i caster_stop(argc=1)
popz.v

:[62]
pushi.e 0
pop.v.i self.sinoid
pushi.e 0
pop.v.i self.clamp_r
pushi.e 16
pop.v.i self.carry
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.carry
pushi.e 17
cmp.i.v EQ
bf [67]

:[64]
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.hspeed
push.v self.right
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e -1
pop.v.i self.hspeed

:[66]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 18
pop.v.i self.carry
push.d 0.05
conv.d.v
call.i scr_musfaderesume(argc=1)
popz.v

:[67]
push.v self.carry
pushi.e 19
cmp.i.v EQ
bf [69]

:[68]
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.vspeed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 20
pop.v.i self.carry

:[69]
push.v self.carry
pushi.e 21
cmp.i.v EQ
bf [76]

:[70]
pushi.e 1576
pushenv [72]

:[71]
pushi.e 0
pop.v.i self.uncan

:[72]
popenv [71]
pushi.e 0
pop.v.i self.vspeed
push.v self.x
call.i round(argc=1)
pop.v.v self.x
push.v self.y
call.i round(argc=1)
pop.v.v self.y
pushi.e 1685
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.carry
push.v self.right
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1
pop.v.i self.right
b [75]

:[74]
pushi.e 0
pop.v.i self.right

:[75]
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i global.interact

:[76]
push.v self.sinoid
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.v self.x
push.v self.x
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.y
call.i cos(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[78]
push.v self.sinoid
pushi.e 2
cmp.i.v EQ
bf [80]

:[79]
push.v self.x
pushi.e 1
conv.i.v
call.i random(argc=1)
push.d 0.5
sub.d.v
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 1
conv.i.v
call.i random(argc=1)
push.d 0.5
sub.d.v
add.v.v
pop.v.v self.y

:[80]
push.v self.clamp_r
pushi.e 1
cmp.i.v EQ
bf [end]

:[81]
push.v self.x
call.i round(argc=1)
pop.v.v 1576.x
push.v self.y
pushi.e 15
add.i.v
call.i round(argc=1)
pop.v.v 1576.y

:[end]