.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i global.msc
pushi.e 104
pop.v.i global.typer
push.s "obj_truechara_94"@28223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_truechara_95"@28225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 320
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

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
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ch_sfx1
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [11]

:[8]
pushi.e 0
pop.v.i global.msc
pushi.e 104
pop.v.i global.typer
push.s "obj_truechara_111"@28227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_truechara_112"@28229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_truechara_113"@28231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_truechara_114"@28233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_truechara_115"@28235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_truechara_116"@28237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_truechara_117"@28239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_truechara_118"@28241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_truechara_119"@28242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_truechara_120"@28244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_truechara_121"@28246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_truechara_122"@28248
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_truechara_123"@28250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_truechara_124"@28252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_truechara_125"@28254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_truechara_126"@28256
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_truechara_127"@28258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_truechara_128"@28260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_truechara_129"@28262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_truechara_130"@28264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_truechara_131"@28266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_truechara_132"@28268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "system_information_963"@3403
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.s "obj_truechara_136"@28269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_truechara_137"@28271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_truechara_138"@28273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_truechara_139"@28275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_truechara_140"@28277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_truechara_141"@28279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_truechara_142"@28281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_truechara_143"@28282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_truechara_144"@28283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_truechara_145"@28284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_truechara_146"@28285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_truechara_147"@28286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_truechara_148"@28288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_truechara_149"@28290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_truechara_150"@28292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_truechara_151"@28294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_truechara_152"@28296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_truechara_153"@28297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_truechara_154"@28299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_truechara_155"@28301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_truechara_156"@28303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_truechara_157"@28305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_truechara_158"@28307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_truechara_159"@28309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_truechara_160"@28311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_truechara_161"@28313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_truechara_162"@28315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg

:[10]
pushi.e 784
conv.i.v
pushi.e 320
conv.i.v
push.v self.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.con

:[11]
push.v self.con
pushi.e 5
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
pushi.e 6
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [18]

:[17]
pushi.e 8
pop.v.i self.con
pushi.e 1
pop.v.i self.choicer

:[18]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i global.msc
pushi.e 104
pop.v.i global.typer
push.s "obj_truechara_186"@28317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_truechara_187"@28319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 22
pop.v.i self.con
pushi.e 784
conv.i.v
pushi.e 320
conv.i.v
push.v self.writerx
call.i instance_create(argc=3)
popz.v

:[20]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [22]

:[21]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [23]

:[22]
push.e 0

:[23]
bf [26]

:[24]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 678
pop.v.i self.sprite_index

:[26]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [28]

:[27]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 60
pop.v.i self.con

:[31]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [35]

:[32]
pushi.e 0
pop.v.i global.msc
pushi.e 104
pop.v.i global.typer
push.s "obj_truechara_209"@28321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_truechara_210"@28323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_truechara_211"@28325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_truechara_212"@28327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_truechara_213"@28329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "system_information_963"@3403
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [34]

:[33]
push.s "obj_truechara_217"@28330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_truechara_218"@28332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_truechara_219"@28334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_truechara_220"@28336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_truechara_221"@28338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[34]
pushi.e 31
pop.v.i self.con
pushi.e 784
conv.i.v
pushi.e 320
conv.i.v
push.v self.writerx
call.i instance_create(argc=3)
popz.v

:[35]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [37]

:[36]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [38]

:[37]
push.e 0

:[38]
bf [41]

:[39]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
pushi.e 678
pop.v.i self.sprite_index

:[41]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [43]

:[42]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 40
pop.v.i self.con

:[46]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [49]

:[47]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
push.v self.ch_sfx2
call.i caster_play(argc=3)
popz.v
pushi.e 679
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 41
pop.v.i self.con
pushi.e 1
pop.v.i self.flashred
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.wx
pushi.e 0
pop.v.i self.wy
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 0
conv.i.v
call.i window_set_fullscreen(argc=1)
popz.v
push.s " "@18
conv.s.v
call.i window_set_caption(argc=1)
popz.v
call.i window_center(argc=0)
popz.v
call.i window_get_x(argc=0)
pop.v.v self.wx
call.i window_get_y(argc=0)
pop.v.v self.wy

:[49]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [52]

:[50]
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y
push.v self.image_xscale
push.d 0.08
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.08
add.d.v
pop.v.v self.image_yscale
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.v self.wy
push.v self.redsiner
pushi.e 4
conv.i.d
div.d.v
pushi.e 4
add.i.v
call.i random(argc=1)
add.v.v
push.v self.redsiner
pushi.e 4
conv.i.d
div.d.v
pushi.e 4
add.i.v
call.i random(argc=1)
sub.v.v
push.v self.wx
push.v self.redsiner
pushi.e 4
conv.i.d
div.d.v
pushi.e 4
add.i.v
call.i random(argc=1)
add.v.v
push.v self.redsiner
pushi.e 4
conv.i.d
div.d.v
pushi.e 4
add.i.v
call.i random(argc=1)
sub.v.v
call.i window_set_position(argc=2)
popz.v

:[52]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [56]

:[53]
pushi.e 60
pop.v.i self.con
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
call.i window_center(argc=0)
popz.v

:[55]
pushi.e 0
pop.v.i self.flashred

:[56]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [58]

:[57]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 781
pop.v.i self.sprite_index
pushi.e 5
pop.v.i self.image_xscale
pushi.e 5
pop.v.i self.image_yscale
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.y
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x
push.d 0.1
pop.v.d self.image_speed
pushi.e 61
pop.v.i self.con

:[58]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [61]

:[59]
push.v self.image_index
push.d 5.5
cmp.d.v GTE
bf [61]

:[60]
pushi.e 0
pop.v.i self.visible
pushi.e 62
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[61]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [end]

:[62]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 496
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 64
pop.v.i self.con

:[end]