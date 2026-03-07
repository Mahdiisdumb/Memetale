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
call.i SCR_BORDERSETUP(argc=5)
popz.v
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[1]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
b [9]

:[3]
push.d 0.2
pop.v.d self.image_speed
push.v 784.stringpos
push.v 784.originalstring
call.i strlen(argc=1)
cmp.v.v GTE
bf [9]

:[4]
push.v self.conversation
push.d 9.2
cmp.d.v EQ
bf [6]

:[5]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 10
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
push.d 9.25
pop.v.d self.conversation

:[9]
pushi.e 203
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [46]

:[10]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [46]

:[11]
push.v self.conversation
pushi.e 17
cmp.i.v EQ
bf [13]

:[12]
push.v self.image_angle
pushi.e 5
add.i.v
pop.v.v self.image_angle
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 155
pop.v.i self.direction
pushi.e 20
pop.v.i self.speed
pushi.e 10
pop.v.i self.gravity

:[13]
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [17]

:[14]
pushi.e 196
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
push.v self.blcon
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 1
pop.v.i 612.attackyou
pushi.e 1
pop.v.i 749.movement
pushi.e 15
pop.v.i self.conversation
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 150
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[17]
push.v self.conversation
pushi.e 12
cmp.i.v EQ
bf [21]

:[18]
pushi.e 4
pop.v.i global.border
push.v self.blcon
conv.v.i
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 197
pop.v.i self.sprite_index
pushi.e 70
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 13
pop.v.i self.conversation
pushi.e 0
pop.v.i 749.movement
pushi.e 609
conv.i.v
push.v 762.y
pushi.e 40
add.i.v
push.v 760.x
push.v 761.x
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i instance_create(argc=3)
popz.v

:[21]
push.v self.conversation
pushi.e 10
cmp.i.v EQ
bf [23]

:[22]
push.v self.floweysong
call.i caster_stop(argc=1)
popz.v
pushi.e 193
pop.v.i self.sprite_index
pushi.e 60
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 11
pop.v.i self.conversation

:[23]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [25]

:[24]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 190
pop.v.i self.sprite_index
push.d 0.9
conv.d.v
push.v self.floweysong
call.i caster_set_pitch(argc=2)
popz.v
push.d 9.1
pop.v.d self.conversation

:[25]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [32]

:[26]
push.v self.blcon
conv.v.i
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 184
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 5
cmp.i.v NEQ
bf [31]

:[30]
push.v self.i
pushi.e 611
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.ddd
push.v self.ddd
conv.v.i
push.v [stacktop]self.blonicx
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.x
push.v self.ddd
conv.v.i
push.v [stacktop]self.blonicy
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 1
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.attackyou
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [29]

:[31]
pushi.e 8
pop.v.i self.conversation

:[32]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [34]

:[33]
push.d 0.95
conv.d.v
push.v self.floweysong
call.i caster_set_pitch(argc=2)
popz.v
pushi.e 189
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[34]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [38]

:[35]
push.v self.blcon
conv.v.i
pushenv [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
popenv [36]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[38]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 184
pop.v.i self.sprite_index
pushi.e 1
pop.v.i 611.attackyou
pushi.e 668
pop.v.i global.msc
pushi.e 784
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwriter
pushi.e 3
pop.v.i self.conversation

:[40]
push.v self.conversation
push.d 1.5
cmp.d.v EQ
bf [42]

:[41]
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 667
pop.v.i global.msc
pushi.e 784
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwriter
pushi.e 2
pop.v.i self.conversation
pushi.e 187
pop.v.i self.sprite_index
pushi.e 611
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 611
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 611
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 611
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 611
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[42]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [46]

:[43]
pushi.e 186
pop.v.i self.sprite_index
push.d 1.5
pop.v.d self.conversation
push.v self.blcon
conv.v.i
pushenv [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [44]
pushi.e 203
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i instance_create(argc=3)
popz.v

:[46]
push.v self.conversation
push.d 9.5
cmp.d.v EQ
bf [50]

:[47]
pushi.e 80
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i 784.halt
push.v self.blcon
conv.v.i
pushenv [49]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[49]
popenv [48]
push.d 9.6
pop.v.d self.conversation
pushi.e 1
pop.v.i self.pitchlower

:[50]
push.v self.conversation
push.d 9.6
cmp.d.v EQ
bf [53]

:[51]
push.v self.pitchlower
push.d 0.02
sub.d.v
pop.v.v self.pitchlower
push.v self.pitchlower
push.d -0.5
cmp.d.v GT
bf [53]

:[52]
push.d 0.65
push.v self.pitchlower
pushi.e 4
conv.i.d
div.d.v
add.v.d
push.v self.floweysong
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.5
push.v self.pitchlower
pushi.e 2
conv.i.d
div.d.v
add.v.d
push.v self.floweysong
call.i caster_set_volume(argc=2)
popz.v

:[53]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e 188
pop.v.i self.sprite_index

:[55]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
pushi.e 184
pop.v.i self.sprite_index

:[57]
push.v self.conversation
pushi.e 13
cmp.i.v EQ
bf [64]

:[58]
push.v 749.x
push.v 759.x
cmp.v.v LT
bf [60]

:[59]
push.v 759.x
pop.v.v 749.x

:[60]
push.v 749.x
push.v 761.x
cmp.v.v GT
bf [62]

:[61]
push.v 761.x
pop.v.v 749.x

:[62]
push.v 749.y
push.v 760.y
cmp.v.v LT
bf [64]

:[63]
push.v 760.y
pop.v.v 749.y

:[64]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[65]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [end]

:[66]
call.i scr_textskip(argc=0)
popz.v

:[end]