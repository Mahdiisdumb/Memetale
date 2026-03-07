.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
push.v self.dooropen
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.image_index
pushi.e 1365
conv.i.v
pushi.e 86
conv.i.v
pushi.e 34
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tor
pushi.e 2571
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1000
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.depth
push.d 0.5
conv.d.v
push.i 8388608
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.bl
push.d 0.4
conv.d.v
push.i 16777215
conv.i.v
push.v self.bl
call.i merge_color(argc=3)
pop.v.v self.bl2
push.v self.bl2
push.v self.tor
conv.v.i
pop.v.v [stacktop]self.image_blend
pushi.e 1365
conv.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 24
add.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 18
add.i.v
call.i instance_create(argc=3)
pop.v.v self.pie
pushi.e 1250
push.v self.pie
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.bl2
push.v self.pie
conv.v.i
pop.v.v [stacktop]self.image_blend
pushi.e 1
push.v self.pie
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 999
push.v self.pie
conv.v.i
pop.v.i [stacktop]self.depth

:[2]
push.v self.timer
pushi.e 150
cmp.i.v EQ
bf [4]

:[3]
push.d 0.1
push.v self.tor
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.pie
conv.v.i
pop.v.i [stacktop]self.hspeed

:[4]
push.v self.timer
pushi.e 240
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.pie
conv.v.i
pop.v.i [stacktop]self.hspeed

:[6]
push.v self.timer
pushi.e 290
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2572
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 28
add.i.v
push.v self.pie
conv.v.i
pop.v.v [stacktop]self.x
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 40
add.i.v
push.v self.pie
conv.v.i
pop.v.v [stacktop]self.y

:[8]
push.v self.timer
pushi.e 330
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1195
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[10]
push.v self.timer
pushi.e 390
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.tor
conv.v.i
pop.v.d [stacktop]self.image_speed

:[12]
push.v self.timer
pushi.e 410
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_index

:[14]
push.v self.timer
pushi.e 460
cmp.i.v EQ
bf [16]

:[15]
pushi.e -1
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.tor
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1196
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[16]
push.v self.timer
pushi.e 530
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_index

:[18]
push.v self.timer
pushi.e 560
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1195
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[20]
push.v self.timer
pushi.e 640
cmp.i.v EQ
bf [22]

:[21]
push.v self.death
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.doorclose
call.i caster_play(argc=3)
popz.v
push.v self.crickets
call.i caster_stop(argc=1)
popz.v
pushi.e -9000
pop.v.i self.depth

:[25]
push.v self.timer
pushi.e 760
cmp.i.v EQ
bf [27]

:[26]
push.v self.death
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 286
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
push.v self.timer
pushi.e 640
cmp.i.v EQ
bf [32]

:[31]
push.v self.death
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.doorclose
call.i caster_play(argc=3)
popz.v
push.v self.crickets
call.i caster_stop(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_index

:[35]
push.v self.timer
pushi.e 760
cmp.i.v EQ
bf [37]

:[36]
push.v self.death
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 676
conv.i.v
pushi.e 101
conv.i.v
pushi.e 228
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.charaface
pushi.e 656
conv.i.v
pushi.e 109
conv.i.v
pushi.e 234
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.eyeflash
pushi.e -2
push.v self.eyeflash
conv.v.i
pop.v.i [stacktop]self.depth
push.d 0.25
push.v self.eyeflash
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 331
conv.i.v
call.i caster_play(argc=3)
popz.v

:[40]
push.v self.death
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.v self.timer
pushi.e 760
cmp.i.v GTE
b [43]

:[42]
push.e 0

:[43]
bf [49]

:[44]
push.v self.eyeflash
call.i instance_exists(argc=1)
conv.v.b
bf [49]

:[45]
push.v self.eyeflash
conv.v.i
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v GTE
bf [49]

:[46]
push.v self.eyeflash
conv.v.i
pushenv [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [47]

:[49]
push.v self.death
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.v self.timer
pushi.e 850
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e -9999
pop.v.i self.depth
push.d 0.75
conv.d.v
pushi.e 1
conv.i.v
pushi.e 353
conv.i.v
call.i caster_play(argc=3)
popz.v

:[54]
push.v self.death
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.v self.timer
pushi.e 1150
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [end]

:[58]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 286
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]