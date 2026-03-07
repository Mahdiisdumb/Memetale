.localvar 0 arguments
.localvar 1 needsave 6343

:[0]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bt [2]

:[1]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [12]

:[4]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [12]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 150
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v
b [11]

:[7]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [9]

:[8]
pushi.e 87
conv.i.v
call.i snd_play(argc=1)
popz.v
b [10]

:[9]
pushi.e 86
conv.i.v
call.i snd_play(argc=1)
popz.v

:[10]
pushi.e 80
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[11]
push.d 0.25
pop.v.d 877.image_speed
pushi.e 999
pop.v.i self.conversation

:[12]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 1
pop.v.i global.interact
pushi.e 1185
pop.v.i 877.sprite_index
push.d 0.33333334
pop.v.d 877.image_speed
pushi.e 0
pop.v.i 877.image_index
pushi.e 240
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 999
pop.v.i self.conversation

:[17]
pushi.e 0
pop.v.i local.needsave
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [43]

:[18]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
pushi.e 9
pop.v.i global.typer
pushi.e 2
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TK"@47563
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.TK
pushi.e 0
conv.i.v
push.s "TS"@47565
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.TS
pushi.e 0
conv.i.v
push.s "FloweyExplain1"@50039
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.FS
call.i ossafe_ini_close(argc=0)
popz.v
push.s "obj_floweytrigger2_158"@13036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [32]

:[19]
push.s "obj_floweytrigger2_162"@13037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_163"@13039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_164"@13041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_165"@13043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_166"@13045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_167"@13047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_168"@13049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_169"@13051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_170"@13053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_171"@13055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.conversation
push.v self.TK
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_floweytrigger2_175"@13057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_176"@13059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_177"@13060
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_178"@13062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_179"@13064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_180"@13066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_181"@13068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.conversation

:[21]
push.v self.TK
pushi.e 2
cmp.i.v GT
bf [23]

:[22]
push.s "obj_floweytrigger2_186"@13070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_187"@13072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.conversation

:[23]
push.v self.TS
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
push.v self.TK
pushi.e 0
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [29]

:[27]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "FloweyExplain1"@50039
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 1
pop.v.i local.needsave
push.s "obj_floweytrigger2_195"@13074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_196"@13076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_197"@13078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_198"@13080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_199"@13082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_200"@13084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.FS
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_floweytrigger2_203"@13086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_204"@13088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_205"@13090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_206"@13092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_207"@13094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_208"@13096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_209"@13098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_210"@13100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_211"@13102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_212"@13104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_213"@13106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_214"@13108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_215"@13110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.conversation

:[29]
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [31]

:[30]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "truename"@47757
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "alter2"@50037
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 1
pop.v.i local.needsave
push.s "obj_floweytrigger2_226"@13112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_227"@13114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_228"@13116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_229"@13118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_230"@13120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_231"@13122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_232"@13124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_233"@13126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_234"@13128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_235"@13130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 4
pop.v.i self.conversation

:[31]
b [42]

:[32]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [42]

:[33]
pushi.e 2
pop.v.i global.faceemotion
push.s "obj_floweytrigger2_245"@13132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_246"@13134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_247"@13135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_248"@13137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_249"@13139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_250"@13140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
push.s "obj_floweytrigger2_253"@13142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_254"@13144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_255"@13146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_256"@13148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_257"@13150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_258"@13152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_259"@13154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.conversation

:[35]
pushglb.v global.kills
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_floweytrigger2_264"@13156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_265"@13158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_266"@13160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_267"@13162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_268"@13164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_269"@13166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_270"@13168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_271"@13170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_272"@13172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_273"@13174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_274"@13176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_275"@13178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.conversation

:[37]
push.v self.TK
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.v self.FS
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "FloweyExplain1"@50039
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 1
pop.v.i local.needsave
push.s "obj_floweytrigger2_283"@13180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_284"@13182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_285"@13184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_286"@13186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_287"@13188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_288"@13190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_289"@13191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_290"@13192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_291"@13193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_292"@13194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_293"@13195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_294"@13196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_295"@13197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_296"@13198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_297"@13199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_298"@13200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_floweytrigger2_299"@13201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.conversation

:[42]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[43]
pushloc.v local.needsave
conv.v.b
bf [end]

:[44]
call.i ossafe_savedata_save(argc=0)
popz.v

:[end]