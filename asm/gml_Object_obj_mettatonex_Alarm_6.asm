.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 784
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 0
pop.v.i self.textsize
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
push.s "obj_mettatonex_167"@17350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.textsize
push.s "obj_mettatonex_190"@17352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.textsize
push.s "obj_mettatonex_196"@17354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.textsize
push.s "obj_mettatonex_202"@17356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.textsize
push.s "obj_mettatonex_208"@17358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [19]

:[11]
pushi.e 1
pop.v.i self.textsize
push.s "obj_mettatonex_214"@17360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_215"@17362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [13]

:[12]
push.s "obj_mettatonex_215_console"@17364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[13]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [15]

:[14]
call.i extension_stubfunc_real(argc=0)
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.s "obj_mettatonex_215_console_kbd"@48722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[18]
push.s "obj_mettatonex_216"@17366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[19]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.textsize
push.s "obj_mettatonex_222"@17368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_223"@17370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 20
pop.v.i 409.dancewait

:[21]
push.v self.turns
pushi.e 7
cmp.i.v EQ
bf [23]

:[22]
pushi.e 18
pop.v.i 409.dancewait
pushi.e 0
pop.v.i self.textsize
push.s "obj_mettatonex_231"@17372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
push.v self.turns
pushi.e 8
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.textsize
push.s "obj_mettatonex_237"@17374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 15
pop.v.i 409.dancewait

:[25]
push.v self.turns
pushi.e 9
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i self.textsize
push.s "obj_mettatonex_244"@17376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 12
pop.v.i 409.dancewait

:[27]
push.v self.turns
pushi.e 10
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_mettatonex_253"@17378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 9
pop.v.i 409.dancewait

:[29]
push.v self.turns
pushi.e 11
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_mettatonex_259"@17380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
pop.v.i 409.dancewait

:[31]
push.v self.turns
pushi.e 12
cmp.i.v EQ
bf [33]

:[32]
pushi.e 3
pop.v.i 409.dancewait
pushi.e 1
pop.v.i self.textsize
push.s "obj_mettatonex_267"@17382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
push.v self.turns
pushi.e 13
cmp.i.v EQ
bf [35]

:[34]
pushi.e 60
pop.v.i 409.dancewait
pushi.e 1
pop.v.i self.textsize
push.s "obj_mettatonex_274"@17384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_275"@17386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[35]
push.v self.turns
pushi.e 14
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i self.textsize
pushi.e 80
pop.v.i 409.dancewait
pushi.e 1
pop.v.i 409.face_set
pushi.e 8
pop.v.i global.faceemotion
push.s "obj_mettatonex_285"@17388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_286"@17390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[37]
push.v self.turns
pushi.e 15
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1
pop.v.i 409.face_set
pushi.e 8
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.textsize
pushi.e 120
pop.v.i 409.dancewait
push.s "obj_mettatonex_297"@17392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.turns
pushi.e 16
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
pop.v.i 409.face_set
pushi.e 8
pop.v.i global.faceemotion
pushi.e 180
pop.v.i 409.dancewait
push.s "obj_mettatonex_307"@17394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
push.v self.turns
pushi.e 17
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1
pop.v.i 409.face_set
pushi.e 8
pop.v.i global.faceemotion
pushi.e 240
pop.v.i 409.dancewait
push.s "obj_mettatonex_317"@17396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
push.v self.turns
pushi.e 18
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
pop.v.i self.textsize
pushi.e -1
pop.v.i 409.dance
pushi.e 1
pop.v.i 409.face_set
pushi.e 5
pop.v.i global.faceemotion
push.s "obj_mettatonex_329"@17398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_330"@17400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonex_331"@17402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[45]
push.v self.turns
pushi.e 19
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i self.textsize
pushi.e 1
pop.v.i 409.face_set
pushi.e 5
pop.v.i global.faceemotion
pushi.e -1
pop.v.i 409.dance
push.s "obj_mettatonex_353"@17404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_354"@17406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonex_355"@17408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonex_356"@17410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[47]
push.v self.turns
pushi.e 20
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.i self.textsize
pushi.e 1
pop.v.i 409.face_set
pushi.e 7
pop.v.i global.faceemotion
pushi.e -1
pop.v.i 409.dance
push.s "obj_mettatonex_368"@17412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonex_369"@17414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonex_370"@17416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[49]
pushi.e 51
pop.v.i global.typer
push.v self.textsize
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushi.e 187
conv.i.v
push.v self.y
push.v self.x
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
b [52]

:[51]
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[52]
pushi.e 24
pop.v.i global.border
push.v self.turns
pushi.e 14
cmp.i.v EQ
bt [55]

:[53]
push.v self.turns
pushi.e 15
cmp.i.v EQ
bt [55]

:[54]
push.v self.turns
pushi.e 23
cmp.i.v EQ
b [56]

:[55]
push.e 1

:[56]
bf [58]

:[57]
pushi.e 27
pop.v.i global.border

:[58]
push.v self.turns
pushi.e 10
cmp.i.v EQ
bt [62]

:[59]
push.v self.turns
pushi.e 11
cmp.i.v EQ
bt [62]

:[60]
push.v self.turns
pushi.e 18
cmp.i.v EQ
bt [62]

:[61]
push.v self.turns
pushi.e 24
cmp.i.v EQ
b [63]

:[62]
push.e 1

:[63]
bf [65]

:[64]
pushi.e 26
pop.v.i global.border

:[65]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [69]

:[66]
push.v self.mypart1
conv.v.i
pushenv [68]

:[67]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[68]
popenv [67]

:[69]
push.v self.turns
pushi.e 13
cmp.i.v EQ
bf [73]

:[70]
push.v self.mypart1
conv.v.i
pushenv [72]

:[71]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[72]
popenv [71]

:[73]
push.v self.turns
pushi.e 19
cmp.i.v EQ
bf [77]

:[74]
push.v self.mypart1
conv.v.i
pushenv [76]

:[75]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[76]
popenv [75]

:[77]
push.v self.turns
pushi.e 20
cmp.i.v EQ
bf [81]

:[78]
push.v self.mypart1
conv.v.i
pushenv [80]

:[79]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[80]
popenv [79]

:[81]
push.v self.turns
pushi.e 25
cmp.i.v EQ
bf [85]

:[82]
push.v self.mypart1
conv.v.i
pushenv [84]

:[83]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[84]
popenv [83]

:[85]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [87]

:[86]
pushi.e 0
pop.v.i global.border

:[87]
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
pushi.e 2
pop.v.i self.talked

:[end]