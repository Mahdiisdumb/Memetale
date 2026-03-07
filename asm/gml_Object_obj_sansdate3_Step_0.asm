.localvar 0 arguments

:[0]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [6]

:[1]
pushi.e 21
pop.v.i self.con
pushi.e 3
pop.v.i global.facing
pushi.e 1453
conv.i.v
push.v 1576.y
push.v 1576.x
pushi.e 86
sub.i.v
call.i scr_marker(argc=3)
pop.v.v self.sans
pushi.e 800
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1576
pushenv [3]

:[2]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[3]
popenv [2]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.idealx
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 40
sub.i.v
pop.i.v [array]self.view_xview
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact

:[5]
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 17
pop.v.i global.typer
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/sansdate.ogg"@2861
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 21
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 30
pop.v.i self.con
push.s "obj_sansdate3_116"@24132
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

:[8]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [10]

:[9]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.s "obj_sansdate3_124"@24134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansdate3_125"@24136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansdate3_126"@24138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansdate3_127"@24140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansdate3_128"@24142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansdate3_129"@24144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansdate3_130"@24146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sansdate3_131"@24148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansdate3_132"@24150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 31
pop.v.i self.con

:[13]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 32
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 33
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
bf [23]

:[22]
pushi.e 1453
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_sansdate3_149"@24151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansdate3_150"@24153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansdate3_151"@24155
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
pushi.e 34
pop.v.i self.con

:[23]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [25]

:[24]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 34.5
pop.v.d self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
push.d 35.5
cmp.d.v EQ
bf [30]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1453
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_sansdate3_168"@24156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansdate3_169"@24158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansdate3_170"@24160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansdate3_171"@24162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansdate3_172"@24164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansdate3_173"@24166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansdate3_174"@24168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sansdate3_175"@24170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansdate3_176"@24172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sansdate3_177"@24174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_sansdate3_178"@24176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_sansdate3_179"@24178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_sansdate3_180"@24180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_sansdate3_181"@24182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_sansdate3_182"@24184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_sansdate3_183"@24186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_sansdate3_184"@24188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_sansdate3_185"@24190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_sansdate3_186"@24192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_sansdate3_187"@24194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_sansdate3_188"@24196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_sansdate3_189"@24198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_sansdate3_190"@24200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_sansdate3_191"@24202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_sansdate3_192"@24204
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_sansdate3_193"@24206
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_sansdate3_194"@24208
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_sansdate3_195"@24210
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_sansdate3_196"@24212
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_sansdate3_197"@24214
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_sansdate3_198"@24216
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_sansdate3_199"@24218
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_sansdate3_200"@24220
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_sansdate3_201"@24222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_sansdate3_202"@24224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 36
pop.v.i self.con

:[33]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [35]

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 37
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[38]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [40]

:[39]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1453
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_sansdate3_221"@24225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansdate3_222"@24227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansdate3_223"@24229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansdate3_224"@24231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansdate3_225"@24233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansdate3_226"@24235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansdate3_227"@24237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sansdate3_228"@24239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansdate3_229"@24241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sansdate3_230"@24243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_sansdate3_231"@24245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_sansdate3_232"@24247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 39
pop.v.i self.con

:[43]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [45]

:[44]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 40
pop.v.i self.con
pushi.e 83
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.vol
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.vol2

:[48]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [52]

:[49]
push.v self.vol
pushi.e 0
cmp.i.v GT
bf [51]

:[50]
push.v self.vol
push.d 0.01
sub.d.v
pop.v.v self.vol

:[51]
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[52]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [54]

:[53]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 1453
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_sansdate3_259"@24249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansdate3_260"@24251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansdate3_261"@24253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansdate3_262"@24255
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
pushi.e 42
pop.v.i self.con

:[57]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [59]

:[58]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 43
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[62]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [64]

:[63]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 4
pop.v.i global.faceemotion
pushi.e 21
pop.v.i global.typer
push.s "obj_sansdate3_279"@24257
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
pushi.e 45
pop.v.i self.con

:[67]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [69]

:[68]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 46
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[72]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [76]

:[73]
push.v self.vol
push.v self.vol2
cmp.v.v LT
bf [75]

:[74]
push.v self.vol
push.d 0.01
add.d.v
pop.v.v self.vol

:[75]
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[76]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [78]

:[77]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [83]

:[80]
pushi.e 1453
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i global.faceemotion
pushi.e 17
pop.v.i global.typer
push.s "obj_sansdate3_304"@24258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansdate3_305"@24260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansdate3_306"@24262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansdate3_307"@24264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansdate3_308"@24266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansdate3_309"@24268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansdate3_310"@24270
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Gameover"@5090
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ddd
push.s "obj_sansdate3_313"@24272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansdate3_314"@24274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.ddd
pushi.e 0
cmp.i.v GT
bf [82]

:[81]
push.s "obj_sansdate3_317"@24276
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansdate3_318"@24278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[82]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 48
pop.v.i self.con

:[83]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [85]

:[84]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 49
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[88]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1453
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_sansdate3_336"@24280
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
pushi.e 51
pop.v.i self.con

:[90]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [92]

:[91]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 51.1
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[95]
push.v self.con
push.d 51.1
cmp.d.v EQ
bf [97]

:[96]
push.d 0.2
push.v self.sans
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.sans
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.y

:[97]
push.v self.con
push.d 52.1
cmp.d.v EQ
bf [99]

:[98]
pushi.e 0
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 51.2
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[99]
push.v self.con
push.d 52.2
cmp.d.v EQ
bf [101]

:[100]
pushi.e 1453
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 51.3
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[101]
push.v self.con
push.d 52.3
cmp.d.v EQ
bf [103]

:[102]
pushi.e 1443
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 52
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[103]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [105]

:[104]
pushi.e 2
pop.v.i global.faceemotion
push.s "obj_sansdate3_380"@24282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansdate3_381"@24284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansdate3_382"@24286
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
pushi.e 54
pop.v.i self.con

:[105]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [107]

:[106]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
pushi.e 1457
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.sans
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -3
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 55
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[110]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [112]

:[111]
pushi.e 57
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[112]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [114]

:[113]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 1
add.i.v
pop.i.v [array]self.view_xview

:[114]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [end]

:[115]
push.v self.idealx
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
pushi.e 0
pop.v.i global.facing
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 0
pop.v.i global.interact
pushi.e 59
pop.v.i self.con
pushi.e 2
pushi.e -5
pushi.e 413
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]