.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [37]

:[1]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 30
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.image_index

:[3]
push.v self.counter
pushi.e 60
cmp.i.v EQ
bf [5]

:[4]
pushi.e 2
pop.v.i self.image_index

:[5]
push.v self.counter
pushi.e 90
cmp.i.v EQ
bf [7]

:[6]
pushi.e 3
pop.v.i self.image_index

:[7]
push.v self.counter
pushi.e 120
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
pop.v.i self.image_index

:[9]
push.v self.counter
pushi.e 180
cmp.i.v EQ
bf [11]

:[10]
pushi.e 4
pop.v.i self.image_index

:[11]
push.v self.counter
pushi.e 190
cmp.i.v EQ
bf [13]

:[12]
pushi.e 5
pop.v.i self.image_index

:[13]
push.v self.counter
pushi.e 200
cmp.i.v EQ
bf [15]

:[14]
pushi.e 6
pop.v.i self.image_index

:[15]
push.v self.counter
pushi.e 210
cmp.i.v EQ
bf [17]

:[16]
pushi.e 7
pop.v.i self.image_index

:[17]
push.v self.counter
pushi.e 250
cmp.i.v EQ
bf [19]

:[18]
pushi.e 9
pop.v.i self.image_index

:[19]
push.v self.counter
pushi.e 258
cmp.i.v EQ
bf [21]

:[20]
pushi.e 8
pop.v.i self.image_index

:[21]
push.v self.counter
pushi.e 266
cmp.i.v EQ
bf [23]

:[22]
pushi.e 9
pop.v.i self.image_index

:[23]
push.v self.counter
pushi.e 274
cmp.i.v EQ
bf [25]

:[24]
pushi.e 8
pop.v.i self.image_index

:[25]
push.v self.counter
pushi.e 282
cmp.i.v EQ
bf [27]

:[26]
pushi.e 9
pop.v.i self.image_index

:[27]
push.v self.counter
pushi.e 290
cmp.i.v EQ
bf [29]

:[28]
pushi.e 8
pop.v.i self.image_index

:[29]
push.v self.counter
pushi.e 298
cmp.i.v EQ
bf [31]

:[30]
pushi.e 9
pop.v.i self.image_index

:[31]
push.v self.counter
pushi.e 306
cmp.i.v EQ
bf [33]

:[32]
pushi.e 8
pop.v.i self.image_index

:[33]
push.v self.counter
pushi.e 380
cmp.i.v EQ
bf [37]

:[34]
push.d 1.1
pop.v.d self.con
pushi.e 85
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_asrielappear_110"@10152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielappear_111"@10154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.y
push.v self.x
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [36]

:[35]
pushi.e 27
pop.v.i 189.sprite_index
b [37]

:[36]
pushi.e 26
pop.v.i 189.sprite_index

:[37]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [39]

:[38]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.d 1.2
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[42]
push.v self.con
push.d 2.2
cmp.d.v EQ
bf [44]

:[43]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 2404
pop.v.i self.sprite_index
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 2
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.image_index
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.counter
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[47]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [56]

:[48]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 15
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
pop.v.i self.image_index

:[50]
push.v self.counter
pushi.e 30
cmp.i.v EQ
bf [52]

:[51]
pushi.e 2
pop.v.i self.image_index

:[52]
push.v self.counter
pushi.e 45
cmp.i.v EQ
bf [54]

:[53]
pushi.e 3
pop.v.i self.image_index

:[54]
push.v self.counter
pushi.e 90
cmp.i.v EQ
bf [56]

:[55]
pushi.e 5
pop.v.i self.con

:[56]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [61]

:[57]
push.s "obj_asrielappear_147"@10156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielappear_148"@10158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielappear_149"@10160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.y
push.v self.x
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [59]

:[58]
pushi.e 27
pop.v.i 189.sprite_index
b [60]

:[59]
pushi.e 26
pop.v.i 189.sprite_index

:[60]
pushi.e 6
pop.v.i self.con

:[61]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [63]

:[62]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 7
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[66]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [68]

:[67]
push.s "music/create.ogg"@2708
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cr
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.cr
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.flasher
pushi.e 9
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[68]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [70]

:[69]
pushi.e 2384
pop.v.i self.sprite_index
pushi.e 320
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pop.v.v self.x
pushi.e 20
pop.v.i self.y
pushi.e 0
pop.v.i self.ss
pushi.e 11
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[70]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [72]

:[71]
pushi.e 13
pop.v.i self.con
pushi.e 1687
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fw
push.v self.fw
conv.v.i
push.v [stacktop]self.string0
call.i strlen(argc=1)
push.v self.fw
conv.v.i
push.v [stacktop]self.typespeed
mul.v.v
pushi.e 92
add.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[72]
push.v self.con
pushi.e 10
cmp.i.v GTE
bf [74]

:[73]
push.v self.ss
pushi.e 1
add.i.v
pop.v.v self.ss
push.v self.y
push.v self.ss
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.v
pop.v.v self.y

:[74]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [end]

:[75]
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 255
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.seriousbattle
pushi.e 306
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]