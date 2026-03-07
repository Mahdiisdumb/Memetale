.localvar 0 arguments

:[0]
pushi.e 33
pop.v.i global.typer
pushi.e 1
pop.v.i self.blcontype
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.s "obj_spiderb_220"@26291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.talktime
pushi.e 0
cmp.i.v GT
bf [20]

:[1]
push.v self.talktime
pushi.e 9
cmp.i.v GTE
bf [3]

:[2]
push.s "obj_spiderb_224"@26292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
push.v self.talktime
pushi.e 8
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_spiderb_225"@26294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.talktime
pushi.e 7
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_spiderb_226"@26296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.talktime
pushi.e 6
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_spiderb_227"@26298
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.talktime
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_spiderb_228"@26300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.talktime
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_spiderb_229"@26302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.talktime
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_spiderb_230"@26304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.talktime
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_spiderb_231"@26306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.talktime
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_spiderb_232"@26308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.talktime
pushi.e 1
add.i.v
pop.v.v self.talktime

:[20]
push.s "obj_spiderb_236"@26309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.turnamt
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_spiderb_240"@26311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.v self.turnamt
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_spiderb_245"@26313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.turnamt
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_spiderb_250"@26315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.turnamt
pushi.e 3
cmp.i.v EQ
bf [29]

:[27]
push.s "obj_spiderb_255"@26317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_spiderb_256"@26319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
push.v self.turnamt
pushi.e 4
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_spiderb_261"@26321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spiderb_262"@26323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[31]
push.v self.turnamt
pushi.e 5
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_spiderb_267"@26325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
push.v self.turnamt
pushi.e 6
cmp.i.v EQ
bf [36]

:[34]
push.s "obj_spiderb_272"@26327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_spiderb_273"@26329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
push.v self.turnamt
pushi.e 7
cmp.i.v EQ
bf [39]

:[37]
push.s "obj_spiderb_278"@26331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_spiderb_279"@26333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.turnamt
pushi.e 8
cmp.i.v EQ
bf [42]

:[40]
push.s "obj_spiderb_284"@26335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_spiderb_285"@26337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.turnamt
pushi.e 9
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_spiderb_291"@26339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.turnamt
pushi.e 10
cmp.i.v EQ
bf [47]

:[45]
push.s "obj_spiderb_296"@26341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_spiderb_297"@26343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
push.v self.turnamt
pushi.e 11
cmp.i.v EQ
bf [51]

:[48]
push.s "obj_spiderb_302"@26345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_spiderb_303"@26347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.s "obj_spiderb_304"@26349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[51]
push.v self.turnamt
pushi.e 12
cmp.i.v EQ
bf [54]

:[52]
push.s "obj_spiderb_309"@26351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_spiderb_310"@26353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.turnamt
pushi.e 13
cmp.i.v EQ
bf [57]

:[55]
push.s "obj_spiderb_315"@26355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_spiderb_316"@26357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.turnamt
pushi.e 14
cmp.i.v EQ
bf [60]

:[58]
push.s "obj_spiderb_321"@26359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spiderb_322"@26361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_spiderb_323"@26363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.turnamt
pushi.e 15
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_spiderb_328"@26365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_spiderb_336"@26367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.blcontype
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushi.e 187
conv.i.v
push.v self.ystart
pushi.e 35
sub.i.v
push.v self.xstart
pushi.e 105
add.i.v
pushi.e 60
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon

:[66]
push.v self.blcontype
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 188
conv.i.v
push.v self.ystart
pushi.e 10
sub.i.v
push.v self.xstart
pushi.e 110
add.i.v
pushi.e 60
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon

:[68]
push.v self.blcontype
pushi.e 0
cmp.i.v EQ
bf [70]

:[69]
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[70]
push.v self.blcontype
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[72]
pushi.e 21
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y
pushi.e 1
pop.v.i self.blconactive
push.v self.purpletime
pushi.e 1
cmp.i.v EQ
bf [end]

:[73]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]