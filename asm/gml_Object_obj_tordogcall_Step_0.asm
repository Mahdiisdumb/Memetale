.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.dogtimer
pushi.e 1
add.i.v
pop.v.v self.dogtimer

:[2]
pushi.e 40
pop.v.i self.factor
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.dogtimer
pushi.e 150
push.v self.factor
mul.v.i
cmp.v.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_tordogcall_64"@27133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tordogcall_65"@27134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_tordogcall_66"@27136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_tordogcall_67"@27138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_tordogcall_68"@27140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_tordogcall_69"@27142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_tordogcall_70"@27143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_tordogcall_71"@27144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[7]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.dogtimer
pushi.e 300
push.v self.factor
mul.v.i
cmp.v.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_tordogcall_84"@27146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tordogcall_85"@27147
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_tordogcall_86"@27149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_tordogcall_87"@27151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_tordogcall_88"@27153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_tordogcall_89"@27155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_tordogcall_90"@27157
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_tordogcall_91"@27159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_tordogcall_92"@27161
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_tordogcall_93"@27163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_tordogcall_94"@27164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_tordogcall_95"@27165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[12]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.dogtimer
pushi.e 450
push.v self.factor
mul.v.i
cmp.v.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_tordogcall_109"@27166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tordogcall_110"@27167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_tordogcall_111"@27169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_tordogcall_112"@27170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_tordogcall_113"@27172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_tordogcall_114"@27174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_tordogcall_115"@27176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_tordogcall_116"@27178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_tordogcall_117"@27180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_tordogcall_118"@27181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_tordogcall_119"@27182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 37
pop.v.i [array]global.flag
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.d
pushi.e 1
pop.v.i self.d_noise

:[17]
push.v self.d_noise
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [20]

:[19]
push.e 0

:[20]
bf [31]

:[21]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [23]

:[22]
push.v self.d
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 1
pop.v.i self.d
pushi.e 41
conv.i.v
call.i snd_play(argc=1)
popz.v

:[26]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
bf [28]

:[27]
push.v self.d
pushi.e 1
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 2
pop.v.i self.d
pushi.e 41
conv.i.v
call.i snd_play(argc=1)
popz.v

:[31]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.v self.dogtimer
pushi.e 600
push.v self.factor
mul.v.i
cmp.v.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_tordogcall_150"@27183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tordogcall_151"@27184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_tordogcall_152"@27186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_tordogcall_153"@27188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_tordogcall_154"@27189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_tordogcall_155"@27191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_tordogcall_156"@27193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_tordogcall_157"@27195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_tordogcall_158"@27197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_tordogcall_159"@27199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_tordogcall_160"@27201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_tordogcall_161"@27202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_tordogcall_162"@27203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 37
pop.v.i [array]global.flag
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[36]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
push.v self.dogtimer
pushi.e 750
push.v self.factor
mul.v.i
cmp.v.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_tordogcall_176"@27204
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tordogcall_177"@27205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_tordogcall_178"@27206
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_tordogcall_179"@27208
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_tordogcall_180"@27210
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_tordogcall_181"@27211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_tordogcall_182"@27213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_tordogcall_183"@27215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_tordogcall_184"@27217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_tordogcall_185"@27219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_tordogcall_186"@27221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_tordogcall_187"@27222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_tordogcall_188"@27223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 37
pop.v.i [array]global.flag
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[41]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.v self.dogtimer
pushi.e 900
push.v self.factor
mul.v.i
cmp.v.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_tordogcall_203"@27224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tordogcall_204"@27225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_tordogcall_205"@27226
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_tordogcall_206"@27228
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_tordogcall_207"@27230
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_tordogcall_208"@27231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_tordogcall_209"@27232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_tordogcall_210"@27234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_tordogcall_211"@27236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_tordogcall_212"@27238
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_tordogcall_213"@27240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_tordogcall_214"@27241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_tordogcall_215"@27242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 37
pop.v.i [array]global.flag
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[46]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.v self.dogtimer
pushi.e 1050
push.v self.factor
mul.v.i
cmp.v.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_tordogcall_230"@27243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tordogcall_231"@27244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_tordogcall_232"@27245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_tordogcall_233"@27246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 37
pop.v.i [array]global.flag
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 910
push.v self.factor
mul.v.i
pop.v.v self.dogtimer

:[51]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[52]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[53]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[end]