.localvar 0 arguments

:[0]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i global.msc
pushi.e 91
pop.v.i global.typer
pushglb.v global.typer
call.i SCR_TEXTTYPE(argc=1)
popz.v
push.s "obj_friendc_event_115"@13221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendc_event_116"@13223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendc_event_117"@13225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 140
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.wrwr
pushi.e -12000
push.v self.wrwr
conv.v.i
pop.v.i [stacktop]self.depth
push.d 1.9
pop.v.d self.con
pushi.e 140
pop.v.i 1576.x
pushi.e 125
pop.v.i 1576.y
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.visible
pushi.e 1135
conv.i.v
push.v 1576.y
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.visible

:[2]
push.v self.con
push.d 1.9
cmp.d.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 140
pop.v.i 1576.x
pushi.e 125
pop.v.i 1576.y
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.visible
pushi.e 1
pop.v.i global.interact

:[7]
push.v self.con
push.d 1.9
cmp.d.v EQ
bf [9]

:[8]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.d 1.8
pop.v.d self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
push.d 2.8
cmp.d.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i self.con

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.visible
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 2
pop.v.i self.d_blk
pushi.e 4
pop.v.i self.con
pushi.e 130
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [23]

:[20]
pushi.e 1
pop.v.i 1576.visible
push.v self.mc
conv.v.i
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 6
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [25]

:[24]
pushi.e 2
pop.v.i global.facing
pushi.e 8
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [27]

:[26]
pushi.e 4
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_friendc_event_181"@13227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_friendc_event_183"@13229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendc_event_184"@13231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_friendc_event_186"@13233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_friendc_event_187"@13235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_friendc_event_189"@13237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_friendc_event_191"@13239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_friendc_event_192"@13241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_friendc_event_194"@13243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 14
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_friendc_event_196"@13245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 16
conv.i.v
call.i scr_asgface(argc=2)
popz.v
push.s "obj_friendc_event_198"@13247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_friendc_event_199"@13249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_friendc_event_200"@13251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_friendc_event_201"@13253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 21
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_friendc_event_203"@13255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_friendc_event_204"@13257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_friendc_event_205"@13259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_friendc_event_206"@13261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_friendc_event_207"@13263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_friendc_event_208"@13265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_friendc_event_209"@13267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_friendc_event_210"@13269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_friendc_event_211"@13271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_friendc_event_212"@13273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_friendc_event_213"@13275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_friendc_event_214"@13277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dd
pushi.e 1
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 10
pop.v.i self.con

:[27]
push.v self.con
pushi.e 10
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
bf [40]

:[31]
pushi.e 1313
pushenv [33]

:[32]
pushi.e 270
pop.v.i self.direction

:[33]
popenv [32]
pushi.e 1314
pushenv [35]

:[34]
pushi.e 270
pop.v.i self.direction

:[35]
popenv [34]
pushi.e 1318
pushenv [37]

:[36]
pushi.e 270
pop.v.i self.direction

:[37]
popenv [36]
pushi.e 1317
pushenv [39]

:[38]
pushi.e 270
pop.v.i self.direction

:[39]
popenv [38]
pushi.e 0
pop.v.i global.interact
pushi.e 2
pushi.e -5
pushi.e 510
pop.v.i [array]global.flag
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i global.filechoice
call.i scr_save(argc=0)
popz.v

:[40]
push.v self.d_blk
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[42]
push.v self.d_blk
pushi.e 2
cmp.i.v EQ
bf [end]

:[43]
push.v self.blk
push.d 0.01
sub.d.v
pop.v.v self.blk
push.v self.blk
pushi.e 0
cmp.i.v LTE
bf [45]

:[44]
pushi.e 0
pop.v.i self.blk
pushi.e 0
pop.v.i self.d_blk

:[45]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.blk
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.blk
pop.v.v global.screen_border_alpha

:[end]