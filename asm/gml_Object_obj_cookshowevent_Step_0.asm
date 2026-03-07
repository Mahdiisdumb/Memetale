.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
push.s "obj_cookshowevent_89"@11141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_90"@11142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_91"@11144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_cookshowevent_92"@11146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_cookshowevent_93"@11148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 2
pop.v.i self.con
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.s "music/hotel.ogg"@2858
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.bossa
pushi.e 3
pop.v.i self.con
pushi.e 1185
conv.i.v
pushi.e 320
conv.i.v
pushi.e 20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff1
pushi.e 5
push.v self.ff1
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.i 500000
push.v self.ff1
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1185
conv.i.v
pushi.e 320
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff2
pushi.e 6
push.v self.ff2
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.i 500000
push.v self.ff2
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1189
conv.i.v
pushi.e 60
push.v self.yoffset1
add.v.i
pushi.e 104
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.eggs
pushi.e 1796
push.v self.eggs
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1193
conv.i.v
pushi.e 74
push.v self.yoffset1
add.v.i
pushi.e 136
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.milk
pushi.e 1795
push.v self.milk
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1188
conv.i.v
pushi.e 60
push.v self.yoffset1
add.v.i
pushi.e 172
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sugar
pushi.e 1174
conv.i.v
pushi.e 158
push.v self.yoffset1
add.v.i
pushi.e 192
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.d
push.i 999900
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1755
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1196
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.chefhat
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i global.facing
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_cookshowevent_135"@11149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 0
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 7
pop.v.i self.con

:[11]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [13]

:[12]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bossa
call.i caster_loop(argc=3)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e -1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 27
pop.v.i global.typer
pushi.e 1747
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i global.facechoice
push.s "obj_cookshowevent_156"@11151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_157"@11153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 10
pop.v.i self.con

:[18]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [25]

:[22]
pushi.e 1200
conv.i.v
pushi.e 180
push.v self.yoffset1
add.v.i
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.g
conv.v.i
pushenv [24]

:[23]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[24]
popenv [23]
pushi.e 11
pop.v.i self.con
pushi.e 160
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [27]

:[26]
pushi.e 13
pop.v.i self.con
push.s "obj_cookshowevent_174"@11155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_175"@11157
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_176"@11159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_cookshowevent_177"@11161
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_cookshowevent_178"@11163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.s "music/mett_applause.ogg"@2699
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.applause

:[27]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [29]

:[28]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 1756
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.applause
call.i caster_play(argc=3)
popz.v
pushi.e 14
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [34]

:[33]
pushi.e 110
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 2
sub.i.v
push.v 1576.x
pushi.e 5
sub.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.conf
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.conf
conv.v.i
pop.v.v [stacktop]self.hspeed

:[34]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [36]

:[35]
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1747
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.s "obj_cookshowevent_202"@11165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_203"@11167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 16
pop.v.i self.con

:[36]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [38]

:[37]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [43]

:[40]
pushi.e 1175
conv.i.v
push.v self.mett
conv.v.i
push.v [stacktop]self.y
push.v self.mett
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.mett2
push.v self.mett
conv.v.i
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]
push.v self.mett2
pop.v.v self.mett
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
push.i 900000
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 17
pop.v.i self.con
pushi.e 300
pop.v.i self.y
pushi.e 0
pop.v.i global.interact

:[43]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1755
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 21
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[45]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i global.facing
pushi.e 23
pop.v.i self.con
pushi.e 1365
conv.i.v
pushi.e 140
push.v self.yoffset1
add.v.i
push.v self.mett
conv.v.i
push.v [stacktop]self.x
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.chainsaw
pushi.e 1
push.v self.chainsaw
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.mett
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.chainsaw
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 1807
push.v self.chainsaw
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[47]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [49]

:[48]
push.v self.chainsaw
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.y

:[49]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [51]

:[50]
pushi.e 25
pop.v.i self.con
push.s "music/bad.ogg"@2612
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.bad
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[51]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_cookshowevent_253"@11169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 27
pop.v.i self.con

:[53]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [55]

:[54]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 24
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bad
call.i caster_loop(argc=3)
popz.v
push.d 0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d -0.2
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d -0.2
push.v self.chainsaw
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 28
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[58]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [60]

:[59]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.chainsaw
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.siner
push.d 1.5
mul.d.v
call.i sin(argc=1)
add.v.v
pop.i.v [stacktop]self.x
push.v self.chainsaw
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.siner
push.d 1.5
mul.d.v
call.i cos(argc=1)
add.v.v
pop.i.v [stacktop]self.y

:[60]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [62]

:[61]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.chainsaw
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.bad
call.i caster_free(argc=1)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/mtgameshow.ogg"@2856
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mettsong
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[62]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [64]

:[63]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
push.s "obj_cookshowevent_295"@11170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_296"@11172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_297"@11174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_cookshowevent_298"@11175
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_cookshowevent_299"@11177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_cookshowevent_300"@11179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_cookshowevent_301"@11181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_cookshowevent_302"@11183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_cookshowevent_303"@11184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_cookshowevent_304"@11186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_cookshowevent_305"@11188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_cookshowevent_306"@11190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_cookshowevent_307"@11192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_cookshowevent_308"@11193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_cookshowevent_309"@11195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_cookshowevent_310"@11196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_cookshowevent_311"@11198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_cookshowevent_312"@11200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_cookshowevent_313"@11202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 32
pop.v.i self.con

:[64]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [66]

:[65]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 1747
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mettsong
call.i caster_loop(argc=3)
popz.v
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_cookshowevent_326"@11204
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_327"@11206
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_328"@11208
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_cookshowevent_329"@11210
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 33
pop.v.i self.con

:[69]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [75]

:[70]
push.v self.chainsaw
call.i instance_exists(argc=1)
conv.v.b
bf [75]

:[71]
pushi.e 4
push.v self.chainsaw
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.chainsaw
conv.v.i
push.v [stacktop]self.y
push.v self.chainsaw
conv.v.i
push.v [stacktop]self.ystart
cmp.v.v GTE
bf [75]

:[72]
push.v self.chainsaw
conv.v.i
pushenv [74]

:[73]
call.i instance_destroy(argc=0)
popz.v

:[74]
popenv [73]

:[75]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [77]

:[76]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [81]

:[79]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 4
add.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 318
cmp.i.v GT
bf [81]

:[80]
pushi.e 34
pop.v.i self.con

:[81]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [85]

:[82]
pushi.e 320
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
push.v self.ff2
conv.v.i
pushenv [84]

:[83]
call.i instance_destroy(argc=0)
popz.v

:[84]
popenv [83]
pushi.e 37
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[85]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [87]

:[86]
pushi.e 39
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[87]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [90]

:[88]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GT
bf [90]

:[89]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 16
sub.i.v
pop.i.v [array]self.view_xview

:[90]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_cookshowevent_376"@11212
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 41
pop.v.i self.con

:[92]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [94]

:[93]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
pushi.e 134
pop.v.i global.plot
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 42
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[97]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [99]

:[98]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 51
pop.v.i self.con

:[99]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [102]

:[100]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
add.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 320
cmp.i.v GTE
bf [102]

:[101]
pushi.e 320
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 52
pop.v.i self.con

:[102]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [106]

:[103]
pushi.e 1198
pushenv [105]

:[104]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[105]
popenv [104]
pushi.e 53
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[106]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [112]

:[107]
pushi.e 1175
pushenv [109]

:[108]
call.i instance_destroy(argc=0)
popz.v

:[109]
popenv [108]
pushi.e 1174
pushenv [111]

:[110]
call.i instance_destroy(argc=0)
popz.v

:[111]
popenv [110]
pushi.e 1175
conv.i.v
pushi.e 340
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
pushi.e 280
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 55
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[112]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [114]

:[113]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 27
pop.v.i global.typer
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_cookshowevent_434"@11214
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_435"@11216
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_436"@11218
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_cookshowevent_437"@11220
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 57
pop.v.i self.con

:[114]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [116]

:[115]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [121]

:[118]
pushi.e 134
pop.v.i global.plot
pushi.e 1174
conv.i.v
push.v self.mett
conv.v.i
push.v [stacktop]self.y
push.v self.mett
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.mett2
push.v self.mett
conv.v.i
push.v [stacktop]self.depth
push.v self.mett2
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.mett
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.mett2
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.mett2
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.mett2
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1175
pushenv [120]

:[119]
call.i instance_destroy(argc=0)
popz.v

:[120]
popenv [119]
push.v self.mett2
pop.v.v self.mett
pushi.e 58
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[121]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [123]

:[122]
pushi.e -6
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 60
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[123]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [125]

:[124]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
push.s "obj_cookshowevent_472"@11221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_473"@11222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_474"@11224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_cookshowevent_475"@11225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_cookshowevent_476"@11227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_cookshowevent_477"@11229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_cookshowevent_478"@11231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_cookshowevent_479"@11233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
push.d 61.1
pop.v.d self.con
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v

:[125]
push.v self.con
push.d 61.1
cmp.d.v EQ
bf [127]

:[126]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
pushi.e 0
pop.v.i global.facing
pushi.e 1201
conv.i.v
push.v 1576.y
pushi.e 10
add.i.v
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.jetpack
pushi.e 1576
push.v self.jetpack
conv.v.i
pop.v.i [stacktop]self.clip
push.d 60.2
pop.v.d self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[130]
push.v self.con
push.d 61.2
cmp.d.v EQ
bf [132]

:[131]
pushi.e 62
pop.v.i self.con

:[132]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [134]

:[133]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [137]

:[136]
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 0
pop.v.i 1576.visible
pushi.e 1365
conv.i.v
push.v 1576.y
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.chara
pushi.e 9000
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.chara
push.v self.jetpack
conv.v.i
pop.v.v [stacktop]self.clip
pushi.e 1132
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 63
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[137]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [139]

:[138]
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_cookshowevent_515"@11235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_516"@11237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_517"@11239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 65
pop.v.i self.con

:[139]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [141]

:[140]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
push.s "music/hotel_battle.ogg"@2865
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.race
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.race
call.i caster_loop(argc=3)
pop.v.v global.currentsong
pushi.e 66
pop.v.i self.con

:[144]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [151]

:[145]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 5
sub.i.v
pop.i.v [array]self.view_yview
push.v self.chara
conv.v.i
push.v [stacktop]self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 205
add.i.v
cmp.v.v GTE
bf [147]

:[146]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 205
add.i.v
push.v self.chara
conv.v.i
pop.v.v [stacktop]self.y

:[147]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 90
cmp.i.v LTE
bf [151]

:[148]
pushi.e 90
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 205
add.i.v
push.v self.chara
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 67
pop.v.i self.con
pushi.e 3
pop.v.i 1198.fakev
pushi.e 1
pop.v.i 1198.mode
pushi.e 1187
conv.i.v
push.v self.chara
conv.v.i
push.v [stacktop]self.y
push.v self.chara
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.chara2
push.v self.chara2
push.v self.jetpack
conv.v.i
pop.v.v [stacktop]self.clip
push.v self.chara
conv.v.i
pushenv [150]

:[149]
call.i instance_destroy(argc=0)
popz.v

:[150]
popenv [149]
push.v self.chara2
pop.v.v self.chara

:[151]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [157]

:[152]
push.v self.chara
conv.v.i
push.v [stacktop]self.x
pop.v.v 1576.x
push.v self.chara
conv.v.i
push.v [stacktop]self.y
pop.v.v 1576.y
push.v self.jetpack
conv.v.i
pushenv [154]

:[153]
call.i instance_destroy(argc=0)
popz.v

:[154]
popenv [153]
push.v self.chara
conv.v.i
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
pushi.e 1
pop.v.i 1576.visible
pushi.e 0
pop.v.i global.facing
pushi.e 71
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[157]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [161]

:[158]
push.s "obj_cookshowevent_565"@11240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_566"@11241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_567"@11243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_cookshowevent_568"@11245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_cookshowevent_569"@11247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_cookshowevent_570"@11249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_cookshowevent_571"@11250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_cookshowevent_572"@11251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 377
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
push.s "obj_cookshowevent_575"@11252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_cookshowevent_576"@11254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_cookshowevent_577"@11255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_cookshowevent_578"@11257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_cookshowevent_579"@11258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_cookshowevent_580"@11259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_cookshowevent_581"@11260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[160]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 73
pop.v.i self.con

:[161]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [163]

:[162]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
pushi.e 1
pop.v.i self.dn
pushi.e 74
pop.v.i self.con
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 140
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_hborder

:[166]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [end]

:[167]
pushi.e 1341
conv.i.v
pushi.e 360
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.flowey
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 135
pop.v.i global.plot
pushi.e 1185
pushenv [169]

:[168]
call.i instance_destroy(argc=0)
popz.v

:[169]
popenv [168]
pushi.e 75
pop.v.i self.con
call.i scr_tempsave(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]