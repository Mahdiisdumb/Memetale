.localvar 0 arguments

:[0]
push.v self.skiptext
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i scr_textskip(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 4
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
push.s "music/fallendown2.ogg"@2775
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.fallendown
pushi.e 1685
conv.i.v
pushi.e 96
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tor
pushi.e -10
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 2
pop.v.i self.con

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[5]
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 256
cmp.i.v LTE
bf [7]

:[6]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.fallendown
call.i caster_loop(argc=3)
popz.v
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 248
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 3
pop.v.i self.con
pushi.e 15
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
pop.v.i global.msc
pushi.e 8
pop.v.i global.typer
pushi.e 4
pop.v.i global.faceemotion
push.s "obj_friendscene_182"@13279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_183"@13281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_184"@13283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_185"@13285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_186"@13287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_friendscene_187"@13289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_friendscene_188"@13291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_friendscene_189"@13293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_friendscene_190"@13295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_friendscene_191"@13297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_friendscene_192"@13299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_friendscene_193"@13301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_friendscene_194"@13303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_friendscene_195"@13305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_friendscene_196"@13307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_friendscene_197"@13309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 135
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 5
pop.v.i self.con

:[9]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 6
pop.v.i self.con
pushi.e 1680
conv.i.v
pushi.e 60
conv.i.v
pushi.e -340
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asg
pushi.e 8
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 8
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed

:[14]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [17]

:[15]
push.v self.asg
conv.v.i
push.v [stacktop]self.x
pushi.e -130
cmp.i.v GT
bf [17]

:[16]
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 7
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 63
pop.v.i global.typer
push.s "obj_friendscene_226"@13311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.asg
conv.v.i
push.v [stacktop]self.y
push.v self.asg
conv.v.i
push.v [stacktop]self.x
pushi.e 300
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
pop.v.i 189.sprite_index
pushi.e 9
pop.v.i self.con

:[19]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [21]

:[20]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 8
pop.v.i global.typer
push.s "obj_friendscene_236"@13313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_237"@13315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_238"@13317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_239"@13319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_240"@13321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_friendscene_241"@13323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_friendscene_242"@13325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 40
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 239
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 39
pop.v.i 189.sprite_index
pushi.e 10
pop.v.i self.con

:[24]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [26]

:[25]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [27]

:[26]
push.e 0

:[27]
bf [34]

:[28]
push.v 784.stringno
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 2
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face

:[30]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 3
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face

:[32]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
bf [34]

:[33]
pushi.e 4
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face

:[34]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [36]

:[35]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 5
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 11
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[39]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [41]

:[40]
pushi.e 5
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 63
pop.v.i global.typer
push.s "obj_friendscene_271"@13326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_272"@13328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_273"@13330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_274"@13332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_275"@13334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.asg
conv.v.i
push.v [stacktop]self.y
push.v self.asg
conv.v.i
push.v [stacktop]self.x
pushi.e 300
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 13
pop.v.i self.con

:[41]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [43]

:[42]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [44]

:[43]
push.e 0

:[44]
bf [47]

:[45]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [47]

:[46]
pushi.e 6
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face

:[47]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [49]

:[48]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 6
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 14
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [54]

:[53]
pushi.e 8
pop.v.i global.typer
push.s "obj_friendscene_301"@13336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_302"@13338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 40
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index
pushi.e 16
pop.v.i self.con

:[54]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [56]

:[55]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [57]

:[56]
push.e 0

:[57]
bf [62]

:[58]
push.v 784.stringno
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
pushi.e 10
pop.v.i global.faceemotion

:[60]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushi.e 11
pop.v.i global.faceemotion
pushi.e 7
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face

:[62]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [64]

:[63]
pushi.e 189
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
push.d 16.1
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
push.d 17.1
cmp.d.v EQ
bf [69]

:[68]
pushi.e 3
pop.v.i global.faceemotion
pushi.e 1682
conv.i.v
pushi.e 340
conv.i.v
pushi.e 700
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.und
pushi.e -12
push.v self.und
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 18
pop.v.i self.con

:[69]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [76]

:[70]
pushi.e 756
pushenv [72]

:[71]
pushi.e 300
pop.v.i self.depth
push.v self.image_alpha
push.d 0.08
sub.d.v
pop.v.v self.image_alpha

:[72]
popenv [71]
pushi.e 481
pushenv [74]

:[73]
pushi.e 300
pop.v.i self.depth
push.v self.image_alpha
push.d 0.08
sub.d.v
pop.v.v self.image_alpha

:[74]
popenv [73]
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 510
cmp.i.v LTE
bf [76]

:[75]
pushi.e 500
push.v self.und
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 19
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [78]

:[77]
pushi.e 0
pop.v.i global.msc
pushi.e 81
pop.v.i global.typer
push.s "obj_friendscene_353"@13340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_354"@13342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_355"@13344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_356"@13346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_357"@13347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.und
conv.v.i
push.v [stacktop]self.y
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 260
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 39
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 21
pop.v.i self.con

:[78]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [80]

:[79]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [81]

:[80]
push.e 0

:[81]
bf [86]

:[82]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
pushi.e 9
pop.v.i global.faceemotion

:[84]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [86]

:[85]
pushi.e 17
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[86]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [88]

:[87]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [91]

:[90]
pushi.e 22
pop.v.i self.con
pushi.e 8
pop.v.i global.typer
push.s "obj_friendscene_376"@13349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_377"@13351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_378"@13353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 40
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index

:[91]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [93]

:[92]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 23
pop.v.i self.con
pushi.e 81
pop.v.i global.typer
pushi.e 10
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_388"@13355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_389"@13357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.und
conv.v.i
push.v [stacktop]self.y
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 130
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index

:[96]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [98]

:[97]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [111]

:[100]
pushi.e 10
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
pop.v.i global.faceemotion
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 170
cmp.i.v GT
bf [102]

:[101]
push.v self.und
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
sub.i.v
pop.i.v [stacktop]self.x
b [103]

:[102]
pushi.e 160
push.v self.und
conv.v.i
pop.v.i [stacktop]self.x

:[103]
push.v self.und
conv.v.i
push.v [stacktop]self.y
pushi.e 78
cmp.i.v GT
bf [105]

:[104]
push.v self.und
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 13
sub.i.v
pop.i.v [stacktop]self.y
b [106]

:[105]
pushi.e 68
push.v self.und
conv.v.i
pop.v.i [stacktop]self.y

:[106]
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 160
cmp.i.v EQ
bf [108]

:[107]
push.v self.und
conv.v.i
push.v [stacktop]self.y
pushi.e 68
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 25
pop.v.i self.con

:[111]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [113]

:[112]
pushi.e 16
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 81
pop.v.i global.typer
push.s "obj_friendscene_413"@13359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_414"@13361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.und
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 80
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
pop.v.i 189.sprite_index
pushi.e 26
pop.v.i self.con

:[113]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [115]

:[114]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [116]

:[115]
push.e 0

:[116]
bf [119]

:[117]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
pushi.e 4
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 8
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face

:[119]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [121]

:[120]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 9
pop.v.i global.faceemotion
pushi.e 27
pop.v.i self.con
pushi.e 1678
conv.i.v
pushi.e 348
conv.i.v
pushi.e 660
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.al
pushi.e -12
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 28
pop.v.i self.con

:[124]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [127]

:[125]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 470
cmp.i.v LTE
bf [127]

:[126]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 460
push.v self.al
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 29
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[127]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [129]

:[128]
pushi.e 18
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 74
pop.v.i global.typer
push.s "obj_friendscene_450"@13363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_451"@13365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_452"@13366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_453"@13367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 120
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 31
pop.v.i self.con

:[129]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [131]

:[130]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [132]

:[131]
push.e 0

:[132]
bf [137]

:[133]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [135]

:[134]
pushi.e 4
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face

:[135]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [137]

:[136]
pushi.e 16
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face

:[137]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [139]

:[138]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
pushi.e 32
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[142]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [144]

:[143]
pushi.e 8
pop.v.i global.typer
push.s "obj_friendscene_477"@13369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_478"@13371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index
pushi.e 34
pop.v.i self.con

:[144]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [146]

:[145]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [147]

:[146]
push.e 0

:[147]
bf [149]

:[148]
pushi.e 74
pop.v.i global.typer
push.s "obj_friendscene_487"@13373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_488"@13374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_489"@13376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 120
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 35
pop.v.i self.con

:[149]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [151]

:[150]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [152]

:[151]
push.e 0

:[152]
bf [157]

:[153]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [155]

:[154]
pushi.e 17
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face

:[155]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [157]

:[156]
pushi.e 4
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face

:[157]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [159]

:[158]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [172]

:[161]
pushi.e 18
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
pop.v.i global.faceemotion
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 230
cmp.i.v GT
bf [163]

:[162]
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.x
b [164]

:[163]
pushi.e 220
push.v self.al
conv.v.i
pop.v.i [stacktop]self.x

:[164]
push.v self.al
conv.v.i
push.v [stacktop]self.y
pushi.e 114
cmp.i.v GT
bf [166]

:[165]
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 12
sub.i.v
pop.i.v [stacktop]self.y
b [167]

:[166]
pushi.e 104
push.v self.al
conv.v.i
pop.v.i [stacktop]self.y

:[167]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 220
cmp.i.v EQ
bf [169]

:[168]
push.v self.al
conv.v.i
push.v [stacktop]self.y
pushi.e 104
cmp.i.v EQ
b [170]

:[169]
push.e 0

:[170]
bf [172]

:[171]
pushi.e 18
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 36
pop.v.i self.con

:[172]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [174]

:[173]
pushi.e 9
pop.v.i global.faceemotion
pushi.e 1677
conv.i.v
pushi.e 300
conv.i.v
pushi.e 660
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pap
pushi.e -16
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 37
pop.v.i self.con

:[174]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [177]

:[175]
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 478
cmp.i.v LTE
bf [177]

:[176]
pushi.e 0
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 468
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 38
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[177]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [179]

:[178]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [180]

:[179]
push.e 0

:[180]
bf [182]

:[181]
pushi.e 0
pop.v.i global.msc
pushi.e 22
pop.v.i global.typer
push.s "obj_friendscene_546"@13378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_547"@13380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_548"@13382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_549"@13384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.pap
conv.v.i
push.v [stacktop]self.y
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 260
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingxend
pushi.e 39
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 40
pop.v.i self.con

:[182]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [184]

:[183]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [185]

:[184]
push.e 0

:[185]
bf [190]

:[186]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
pushi.e 1
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face

:[188]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [190]

:[189]
pushi.e 0
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face

:[190]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [192]

:[191]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
pushi.e 2
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 8
pop.v.i global.typer
push.s "obj_friendscene_572"@13386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index
pushi.e 41
pop.v.i self.con

:[195]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [197]

:[196]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [198]

:[197]
push.e 0

:[198]
bf [200]

:[199]
pushi.e 2
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 22
pop.v.i global.typer
push.s "obj_friendscene_582"@13388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_583"@13390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_584"@13392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_585"@13394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.pap
conv.v.i
push.v [stacktop]self.y
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 260
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingxend
pushi.e -1000
pop.v.i 189.depth
pushi.e 39
pop.v.i 189.sprite_index
pushi.e -2000
pop.v.i 784.depth
pushi.e 42
pop.v.i self.con

:[200]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [202]

:[201]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [203]

:[202]
push.e 0

:[203]
bf [210]

:[204]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [206]

:[205]
pushi.e 7
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face

:[206]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [208]

:[207]
pushi.e 5
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face

:[208]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [210]

:[209]
pushi.e 6
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face

:[210]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [212]

:[211]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [213]

:[212]
push.e 0

:[213]
bf [215]

:[214]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1679
conv.i.v
pushi.e 408
conv.i.v
pushi.e -108
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sans
pushi.e 5
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 43
pop.v.i self.con

:[215]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [218]

:[216]
push.v self.sans
conv.v.i
push.v [stacktop]self.x
pushi.e 16
cmp.i.v GTE
bf [218]

:[217]
pushi.e 20
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 44
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[218]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [220]

:[219]
pushi.e 7
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 3
pop.v.i global.faceemotion
pushi.e 80
pop.v.i global.typer
push.s "obj_friendscene_631"@13396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.sans
conv.v.i
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.sans
conv.v.i
push.v [stacktop]self.x
pushi.e 108
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 3
sub.i.v
pop.i.v [stacktop]self.writingx
pushi.e 26
pop.v.i 189.sprite_index
pushi.e 46
pop.v.i self.con
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth

:[220]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [222]

:[221]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [223]

:[222]
push.e 0

:[223]
bf [225]

:[224]
pushi.e 2
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 8
pop.v.i global.typer
push.s "obj_friendscene_644"@13398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 47
pop.v.i self.con

:[225]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [227]

:[226]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [228]

:[227]
push.e 0

:[228]
bf [242]

:[229]
pushi.e 7
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 6
pop.v.i global.faceemotion
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 560
cmp.i.v LT
bf [231]

:[230]
push.v self.pap
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 3
add.i.v
pop.i.v [stacktop]self.x

:[231]
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 365
cmp.i.v GT
bf [233]

:[232]
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.x
b [234]

:[233]
pushi.e 360
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.x

:[234]
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 360
cmp.i.v LT
bf [236]

:[235]
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 12
add.i.v
pop.i.v [stacktop]self.y
b [237]

:[236]
pushi.e 352
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.y

:[237]
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 360
cmp.i.v EQ
bf [239]

:[238]
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 352
cmp.i.v EQ
b [240]

:[239]
push.e 0

:[240]
bf [242]

:[241]
pushi.e 48
pop.v.i self.con

:[242]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [244]

:[243]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [245]

:[244]
push.e 0

:[245]
bf [247]

:[246]
pushi.e 13
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 9
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 3
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 7
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 8
pop.v.i global.typer
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_friendscene_678"@13400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_679"@13402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 49
pop.v.i self.con

:[247]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [249]

:[248]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [250]

:[249]
push.e 0

:[250]
bf [254]

:[251]
pushi.e 80
pop.v.i global.typer
pushi.e 8
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_691"@13404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 360
conv.i.v
pushi.e 120
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [253]

:[252]
pushi.e 26
pop.v.i 189.sprite_index
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 3
sub.i.v
pop.i.v [stacktop]self.writingx

:[253]
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 50
pop.v.i self.con

:[254]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [256]

:[255]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [257]

:[256]
push.e 0

:[257]
bf [259]

:[258]
pushi.e 10
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 4
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 19
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 8
pop.v.i global.typer
push.s "obj_friendscene_705"@13406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_706"@13408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 51
pop.v.i self.con

:[259]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [261]

:[260]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [262]

:[261]
push.e 0

:[262]
bf [264]

:[263]
push.s "obj_friendscene_717"@13410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_718"@13412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 9
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 80
pop.v.i global.typer
pushi.e 360
conv.i.v
pushi.e 120
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 3
sub.i.v
pop.i.v [stacktop]self.writingx
pushi.e 26
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 52
pop.v.i self.con

:[264]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [266]

:[265]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [267]

:[266]
push.e 0

:[267]
bf [269]

:[268]
pushi.e 7
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 8
pop.v.i global.typer
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_friendscene_733"@13414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 29
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 53
pop.v.i self.con

:[269]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [271]

:[270]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [272]

:[271]
push.e 0

:[272]
bf [280]

:[273]
pushi.e 14
pop.v.i global.faceemotion
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 500
cmp.i.v GT
bf [275]

:[274]
push.v self.pap
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 5
sub.i.v
pop.i.v [stacktop]self.x

:[275]
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 128
cmp.i.v GT
bf [277]

:[276]
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 20
sub.i.v
pop.i.v [stacktop]self.x
b [278]

:[277]
pushi.e 108
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.x

:[278]
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 108
cmp.i.v EQ
bf [280]

:[279]
pushi.e 54
pop.v.i self.con

:[280]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [282]

:[281]
pushi.e 0
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_760"@13416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_761"@13418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_762"@13420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 8
pop.v.i global.typer
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 135
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 55
pop.v.i self.con

:[282]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [284]

:[283]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [285]

:[284]
push.e 0

:[285]
bf [288]

:[286]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [288]

:[287]
pushi.e 3
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face

:[288]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [290]

:[289]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [291]

:[290]
push.e 0

:[291]
bf [293]

:[292]
pushi.e 22
pop.v.i global.typer
pushi.e 3
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_779"@13422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_780"@13424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_781"@13426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.pap
conv.v.i
push.v [stacktop]self.y
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 240
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingxend
pushi.e 39
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 56
pop.v.i self.con

:[293]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [295]

:[294]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [296]

:[295]
push.e 0

:[296]
bf [298]

:[297]
pushi.e 8
pop.v.i global.typer
pushi.e 0
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_795"@13428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_796"@13430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 135
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 57
pop.v.i self.con

:[298]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [300]

:[299]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [301]

:[300]
push.e 0

:[301]
bf [303]

:[302]
pushi.e 7
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 22
pop.v.i global.typer
push.s "obj_friendscene_808"@13432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.pap
conv.v.i
push.v [stacktop]self.y
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 240
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingxend
pushi.e 39
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 58
pop.v.i self.con

:[303]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [305]

:[304]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [306]

:[305]
push.e 0

:[306]
bf [308]

:[307]
push.s "obj_friendscene_819"@13434
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_820"@13436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 8
pop.v.i global.typer
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 135
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 59
pop.v.i self.con

:[308]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [310]

:[309]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [311]

:[310]
push.e 0

:[311]
bf [314]

:[312]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [314]

:[313]
pushi.e 8
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face

:[314]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [316]

:[315]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [317]

:[316]
push.e 0

:[317]
bf [319]

:[318]
pushi.e 60
pop.v.i self.con
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 8
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 12
pop.v.i global.faceemotion

:[319]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [321]

:[320]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [322]

:[321]
push.e 0

:[322]
bf [324]

:[323]
pushi.e 4
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 22
pop.v.i global.typer
push.s "obj_friendscene_846"@13438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_847"@13440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.pap
conv.v.i
push.v [stacktop]self.y
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 240
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingxend
pushi.e 39
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 62
pop.v.i self.con

:[324]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [326]

:[325]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [327]

:[326]
push.e 0

:[327]
bf [329]

:[328]
pushi.e 18
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 4
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 7
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 81
pop.v.i global.typer
push.s "obj_friendscene_863"@13442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_864"@13444
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 85
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 63
pop.v.i self.con

:[329]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [331]

:[330]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [332]

:[331]
push.e 0

:[332]
bf [335]

:[333]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [335]

:[334]
pushi.e 11
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[335]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [337]

:[336]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [338]

:[337]
push.e 0

:[338]
bf [340]

:[339]
pushi.e 74
pop.v.i global.typer
pushi.e 18
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 9
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 8
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_880"@13446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_881"@13448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_882"@13450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_883"@13452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_884"@13454
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_friendscene_885"@13455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_friendscene_886"@13457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 145
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 64
pop.v.i self.con

:[340]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [342]

:[341]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [343]

:[342]
push.e 0

:[343]
bf [352]

:[344]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [346]

:[345]
pushi.e 10
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face

:[346]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [348]

:[347]
pushi.e 12
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[348]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
bf [350]

:[349]
pushi.e 15
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 13
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[350]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [352]

:[351]
pushi.e 18
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 11
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[352]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [354]

:[353]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [355]

:[354]
push.e 0

:[355]
bf [357]

:[356]
pushi.e 81
pop.v.i global.typer
pushi.e 18
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_910"@13459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_911"@13461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.und
conv.v.i
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 85
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
pop.v.i 189.sprite_index
pushi.e 65
pop.v.i self.con

:[357]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [359]

:[358]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [360]

:[359]
push.e 0

:[360]
bf [363]

:[361]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [363]

:[362]
pushi.e 11
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[363]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [365]

:[364]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [366]

:[365]
push.e 0

:[366]
bf [368]

:[367]
pushi.e 1
pop.v.i self.leg
pushi.e 0
pop.v.i self.leg_r
pushbltn.v self.room_width
pushi.e 200
add.i.v
pop.v.v self.legx
pushi.e 15
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 13
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 2
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 4
pop.v.i global.faceemotion
pushi.e 9
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 66
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[368]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [370]

:[369]
pushi.e 51
pop.v.i global.typer
push.s "obj_friendscene_945"@13463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_946"@13465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_947"@13467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 20
conv.i.v
pushbltn.v self.room_width
pushi.e 255
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 39
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 68
pop.v.i self.con

:[370]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [372]

:[371]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [373]

:[372]
push.e 0

:[373]
bf [375]

:[374]
pushi.e 2
pop.v.i self.leg
pushi.e 13
pop.v.i global.faceemotion
pushi.e 7
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 81
pop.v.i global.typer
pushi.e 6
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_962"@13469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_963"@13471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_964"@13473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_965"@13474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_966"@13476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 85
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 69
pop.v.i self.con

:[375]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [377]

:[376]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [378]

:[377]
push.e 0

:[378]
bf [385]

:[379]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [381]

:[380]
pushi.e 10
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[381]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [383]

:[382]
pushi.e 18
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[383]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [385]

:[384]
pushi.e 3
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[385]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [387]

:[386]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [388]

:[387]
push.e 0

:[388]
bf [390]

:[389]
pushi.e 74
pop.v.i global.typer
pushi.e 4
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_982"@13477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_983"@13478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_984"@13480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_985"@13482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 145
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
pop.v.i 189.sprite_index
pushi.e 70
pop.v.i self.con

:[390]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [392]

:[391]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [393]

:[392]
push.e 0

:[393]
bf [398]

:[394]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [396]

:[395]
pushi.e 3
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 13
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[396]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [398]

:[397]
pushi.e 11
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face

:[398]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [400]

:[399]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [401]

:[400]
push.e 0

:[401]
bf [403]

:[402]
pushi.e 18
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 19
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 81
pop.v.i global.typer
push.s "obj_friendscene_1003"@13484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1004"@13486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_1005"@13488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 85
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 71
pop.v.i self.con

:[403]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [405]

:[404]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [406]

:[405]
push.e 0

:[406]
bf [411]

:[407]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [409]

:[408]
pushi.e 17
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[409]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [411]

:[410]
pushi.e 14
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face

:[411]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [413]

:[412]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [414]

:[413]
push.e 0

:[414]
bf [416]

:[415]
pushi.e 72
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
push.v self.und
conv.v.i
pop.v.i [stacktop]self.smooch
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.smooch

:[416]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [426]

:[417]
pushi.e 2
push.v self.und
conv.v.i
pop.v.i [stacktop]self.smooch
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.smooch
pushi.e 3
pop.v.i global.faceemotion
pushi.e 9
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 21
add.i.v
pop.i.v [stacktop]self.x
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 12
add.i.v
pop.i.v [stacktop]self.x
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 212
cmp.i.v GT
bf [419]

:[418]
pushi.e 218
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.x

:[419]
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 26
sub.i.v
pop.i.v [stacktop]self.y
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 108
cmp.i.v LT
bf [421]

:[420]
pushi.e 96
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.y

:[421]
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 218
cmp.i.v EQ
bf [423]

:[422]
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 96
cmp.i.v EQ
b [424]

:[423]
push.e 0

:[424]
bf [426]

:[425]
pushi.e 74
pop.v.i self.con

:[426]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [428]

:[427]
pushi.e 8
pop.v.i global.typer
push.s "obj_friendscene_1047"@13490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1048"@13492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 80
sub.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 125
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
pop.v.i 189.sprite_index
pushi.e 75
pop.v.i self.con

:[428]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [430]

:[429]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [431]

:[430]
push.e 0

:[431]
bf [433]

:[432]
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.smooch
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.s_i
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.smooch
pushi.e 76
pop.v.i self.con
pushi.e 74
pop.v.i global.typer
pushi.e 18
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 14
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_friendscene_1066"@13494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 90
sub.i.v
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index

:[433]
push.v self.con
pushi.e 76
cmp.i.v EQ
bf [435]

:[434]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [436]

:[435]
push.e 0

:[436]
bf [438]

:[437]
pushi.e 0
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 1
pop.v.i self.sidecon
pushi.e 8
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_friendscene_1082"@13496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1083"@13498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_1084"@13500
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_1085"@13502
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_1086"@13504
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 170
add.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 35
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 34
pop.v.i 189.sprite_index
pushi.e -1000
pop.v.i 189.depth
pushi.e -2000
pop.v.i 784.depth
pushi.e 77
pop.v.i self.con

:[438]
push.v self.con
pushi.e 77
cmp.i.v EQ
bf [441]

:[439]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [441]

:[440]
push.v self.sidecon
pushi.e 2
cmp.i.v EQ
b [442]

:[441]
push.e 0

:[442]
bf [444]

:[443]
pushi.e 78
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[444]
push.v self.con
pushi.e 79
cmp.i.v EQ
bf [446]

:[445]
pushi.e 74
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.skiptext
pushi.e 15
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_1108"@13506
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1109"@13508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_1110"@13510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_1111"@13512
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_1112"@13514
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 90
sub.i.v
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 80
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index
pushi.e 80
pop.v.i self.con

:[446]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [448]

:[447]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [449]

:[448]
push.e 0

:[449]
bf [451]

:[450]
pushi.e 7
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 22
pop.v.i global.typer
push.s "obj_friendscene_1122"@13516
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 100
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 128
sub.i.v
pop.i.v [stacktop]self.writingxend
pushi.e 29
pop.v.i 189.sprite_index
pushi.e 81
pop.v.i self.con

:[451]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [453]

:[452]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [454]

:[453]
push.e 0

:[454]
bf [456]

:[455]
pushi.e 0
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 83
pop.v.i global.typer
push.s "obj_friendscene_1132"@13518
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.fallendown
call.i caster_free(argc=1)
popz.v
pushi.e 8
conv.i.v
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 100
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 125
sub.i.v
pop.i.v [stacktop]self.writingxend
pushi.e 29
pop.v.i 189.sprite_index
pushi.e 82
pop.v.i self.con

:[456]
push.v self.con
pushi.e 82
cmp.i.v EQ
bf [458]

:[457]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [459]

:[458]
push.e 0

:[459]
bf [461]

:[460]
pushi.e 9
push.v self.al
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 82
pop.v.i global.typer
push.s "obj_friendscene_1146"@13520
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.faceemotion
push.v self.tor
conv.v.i
push.v [stacktop]self.y
pushi.e 90
sub.i.v
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 80
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index
pushi.e 83
pop.v.i self.con

:[461]
push.v self.con
pushi.e 83
cmp.i.v EQ
bf [463]

:[462]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [464]

:[463]
push.e 0

:[464]
bf [466]

:[465]
pushi.e 84
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[466]
push.v self.con
pushi.e 85
cmp.i.v EQ
bf [468]

:[467]
pushi.e 0
pop.v.i self.i
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1674
conv.i.v
pushi.e 160
conv.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.gigavine
pushi.e 86
pop.v.i self.con
pushi.e 75
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[468]
push.v self.con
pushi.e 87
cmp.i.v EQ
bf [470]

:[469]
pushi.e 4
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 1
pop.v.i self.gowhite
pushi.e 88
pop.v.i self.con
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[470]
push.v self.con
pushi.e 89
cmp.i.v EQ
bf [472]

:[471]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1673
conv.i.v
pushi.e 296
conv.i.v
pushi.e 276
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.flowey
pushi.e 90
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[472]
push.v self.con
pushi.e 91
cmp.i.v EQ
bf [474]

:[473]
pushi.e 1
pop.v.i self.skiptext
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
push.v self.fmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 6
pop.v.i global.typer
push.s "obj_friendscene_1194"@13522
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1195"@13524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_1196"@13526
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_1197"@13528
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_friendscene_1198"@13530
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_friendscene_1199"@13532
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_friendscene_1200"@13534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_friendscene_1201"@13536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_friendscene_1202"@13538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_friendscene_1203"@13540
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_friendscene_1204"@13542
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_friendscene_1205"@13544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_friendscene_1206"@13546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_friendscene_1207"@13548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_friendscene_1208"@13550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_friendscene_1209"@13552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_friendscene_1210"@13554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_friendscene_1211"@13556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_friendscene_1212"@13558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_friendscene_1213"@13560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_friendscene_1214"@13562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_friendscene_1215"@13564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_friendscene_1216"@13566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_friendscene_1217"@13568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_friendscene_1218"@13570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_friendscene_1219"@13572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_friendscene_1220"@13574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_friendscene_1221"@13576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_friendscene_1222"@13578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_friendscene_1223"@13580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_friendscene_1224"@13582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_friendscene_1225"@13584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_friendscene_1226"@13586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_friendscene_1227"@13588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_friendscene_1228"@13590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.flowey
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.flowey
conv.v.i
push.v [stacktop]self.x
pushi.e 105
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 92
pop.v.i self.con

:[474]
push.v self.con
pushi.e 92
cmp.i.v EQ
bf [476]

:[475]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [477]

:[476]
push.e 0

:[477]
bf [479]

:[478]
pushi.e 6
push.v self.flowey
conv.v.i
pop.v.i [stacktop]self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 93
pop.v.i self.con

:[479]
push.v self.con
pushi.e 94
cmp.i.v EQ
bf [481]

:[480]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.border_d
pushi.e 320
pop.v.i self.tx
pushi.e 300
pop.v.i self.ty
push.d 94.1
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[481]
push.v self.con
push.d 95.1
cmp.d.v EQ
bf [483]

:[482]
pushi.e 1672
conv.i.v
push.v self.ty
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 95
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[483]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [485]

:[484]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 7
pop.v.i global.typer
push.s "obj_friendscene_1266"@13592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.flowey
conv.v.i
push.v [stacktop]self.y
pushi.e 110
sub.i.v
push.v self.flowey
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index
pushi.e 97
pop.v.i self.con

:[485]
push.v self.con
pushi.e 97
cmp.i.v EQ
bf [487]

:[486]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [488]

:[487]
push.e 0

:[488]
bf [492]

:[489]
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.gen
conv.v.i
pushenv [491]

:[490]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[491]
popenv [490]
pushi.e 98
pop.v.i self.con
pushi.e 35
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.done
pushi.e 1
push.v self.flowey
conv.v.i
pop.v.i [stacktop]self.laugh

:[492]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [500]

:[493]
pushi.e 52
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.done
pushi.e 1
add.i.v
pop.v.v self.done
push.v self.gen
conv.v.i
pushenv [495]

:[494]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[495]
popenv [494]
push.v self.gen
conv.v.i
pushenv [497]

:[496]
call.i instance_destroy(argc=0)
popz.v

:[497]
popenv [496]
pushi.e 1672
conv.i.v
push.v self.ty
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.done
pushi.e 1
cmp.i.v EQ
bf [499]

:[498]
pushi.e 98
pop.v.i self.con
pushi.e 35
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [500]

:[499]
pushi.e 100
pop.v.i self.con
pushi.e 35
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[500]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [506]

:[501]
pushi.e 52
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.gen
conv.v.i
pushenv [503]

:[502]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[503]
popenv [502]
push.v self.gen
conv.v.i
pushenv [505]

:[504]
call.i instance_destroy(argc=0)
popz.v

:[505]
popenv [504]
pushi.e 1672
conv.i.v
push.v self.ty
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e 2
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.spec
pushi.e 130
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.radius
pushi.e 102
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[506]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [510]

:[507]
push.v self.gen
conv.v.i
pushenv [509]

:[508]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[509]
popenv [508]
pushi.e 104
pop.v.i self.con
pushi.e 105
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[510]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [512]

:[511]
pushi.e 2
push.v self.flowey
conv.v.i
pop.v.i [stacktop]self.laugh
pushi.e 106
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[512]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [517]

:[513]
pushi.e 1686
pushenv [516]

:[514]
push.v self.mf
pushi.e 0
cmp.i.v GTE
bf [516]

:[515]
push.v self.mf
push.d 0.015
sub.d.v
pop.v.v self.mf

:[516]
popenv [514]

:[517]
push.v self.con
pushi.e 107
cmp.i.v EQ
bf [519]

:[518]
pushi.e 0
push.v self.flowey
conv.v.i
pop.v.i [stacktop]self.laugh
pushi.e 4
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.typer
push.s "obj_friendscene_1357"@13594
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.flowey
conv.v.i
push.v [stacktop]self.y
pushi.e 110
sub.i.v
push.v self.flowey
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index
pushi.e 108
pop.v.i self.con

:[519]
push.v self.con
pushi.e 108
cmp.i.v EQ
bf [521]

:[520]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [522]

:[521]
push.e 0

:[522]
bf [524]

:[523]
pushi.e 109
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[524]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [526]

:[525]
push.s "music/dontgiveup.ogg"@2776
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dontgiveup
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
push.v self.dontgiveup
call.i caster_loop(argc=3)
popz.v
pushi.e 1
push.v self.tor2
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 84
pop.v.i global.typer
push.s "obj_friendscene_1375"@13596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1376"@13598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_1377"@13600
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.tor2
conv.v.i
push.v [stacktop]self.y
pushi.e 170
add.i.v
push.v self.tor2
conv.v.i
push.v [stacktop]self.x
pushi.e 5
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 34
pop.v.i 189.sprite_index
pushi.e -2000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -3000
pop.v.i 784.depth
pushi.e 111
pop.v.i self.con

:[526]
push.v self.con
pushi.e 111
cmp.i.v EQ
bf [528]

:[527]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [529]

:[528]
push.e 0

:[529]
bf [532]

:[530]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [532]

:[531]
pushi.e 2
push.v self.tor2
conv.v.i
pop.v.i [stacktop]self.face

:[532]
push.v self.con
pushi.e 111
cmp.i.v EQ
bf [534]

:[533]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [535]

:[534]
push.e 0

:[535]
bf [537]

:[536]
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushi.e 112
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[537]
push.v self.con
pushi.e 113
cmp.i.v EQ
bf [541]

:[538]
pushi.e 12
pop.v.i global.faceemotion
pushi.e 1672
conv.i.v
push.v self.ty
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
conv.v.i
pushenv [540]

:[539]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.spec

:[540]
popenv [539]
pushi.e 114
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[541]
push.v self.con
pushi.e 115
cmp.i.v EQ
bf [545]

:[542]
pushi.e 1672
conv.i.v
push.v self.ty
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
conv.v.i
pushenv [544]

:[543]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.spec

:[544]
popenv [543]
pushi.e 116
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[545]
push.v self.con
pushi.e 117
cmp.i.v EQ
bf [547]

:[546]
pushi.e 4
pop.v.i global.faceemotion
pushi.e 1
push.v self.pap2
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 22
pop.v.i global.typer
push.s "obj_friendscene_1434"@13602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1435"@13604
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_1436"@13606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.pap2
conv.v.i
push.v [stacktop]self.y
pushi.e 270
add.i.v
push.v self.pap2
conv.v.i
push.v [stacktop]self.x
pushi.e 45
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 60
sub.i.v
pop.i.v [stacktop]self.writingxend
pushi.e 34
pop.v.i 189.sprite_index
pushi.e 118
pop.v.i self.con

:[547]
push.v self.con
pushi.e 118
cmp.i.v EQ
bf [549]

:[548]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [550]

:[549]
push.e 0

:[550]
bf [552]

:[551]
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushi.e 1
push.v self.und2
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 81
pop.v.i global.typer
push.s "obj_friendscene_1449"@13608
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1450"@13610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.und2
conv.v.i
push.v [stacktop]self.y
pushi.e 200
add.i.v
push.v self.und2
conv.v.i
push.v [stacktop]self.x
pushi.e 45
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 34
pop.v.i 189.sprite_index
pushi.e 119
pop.v.i self.con

:[552]
push.v self.con
pushi.e 119
cmp.i.v EQ
bf [554]

:[553]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [555]

:[554]
push.e 0

:[555]
bf [557]

:[556]
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushi.e 1
push.v self.sans2
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 80
pop.v.i global.typer
push.s "obj_friendscene_1463"@13612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1464"@13614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.sans2
conv.v.i
push.v [stacktop]self.y
pushi.e 130
add.i.v
push.v self.sans2
conv.v.i
push.v [stacktop]self.x
pushi.e 25
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 34
pop.v.i 189.sprite_index
pushi.e -10
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 120
pop.v.i self.con

:[557]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [559]

:[558]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [560]

:[559]
push.e 0

:[560]
bf [562]

:[561]
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushi.e 121
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[562]
push.v self.con
pushi.e 122
cmp.i.v EQ
bf [566]

:[563]
pushi.e 12
pop.v.i global.faceemotion
pushi.e 1672
conv.i.v
push.v self.ty
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
conv.v.i
pushenv [565]

:[564]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.spec

:[565]
popenv [564]
pushi.e 123
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[566]
push.v self.con
pushi.e 124
cmp.i.v EQ
bf [570]

:[567]
pushi.e 1672
conv.i.v
push.v self.ty
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
conv.v.i
pushenv [569]

:[568]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 6
pop.v.i self.spec

:[569]
popenv [568]
pushi.e 125
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[570]
push.v self.con
pushi.e 126
cmp.i.v EQ
bf [572]

:[571]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [573]

:[572]
push.e 0

:[573]
bf [575]

:[574]
pushi.e 14
pop.v.i global.faceemotion
pushi.e 1
push.v self.al2
conv.v.i
pop.v.i [stacktop]self.face
pushi.e 74
pop.v.i global.typer
push.s "obj_friendscene_1514"@13616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1515"@13618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.al2
conv.v.i
push.v [stacktop]self.y
pushi.e 190
add.i.v
push.v self.al2
conv.v.i
push.v [stacktop]self.x
pushi.e 75
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 34
pop.v.i 189.sprite_index
pushi.e -10
pop.v.i 189.depth
pushi.e 127
pop.v.i self.con

:[575]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [577]

:[576]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [578]

:[577]
push.e 0

:[578]
bf [581]

:[579]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [581]

:[580]
pushi.e 2
push.v self.al2
conv.v.i
pop.v.i [stacktop]self.face

:[581]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [583]

:[582]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [584]

:[583]
push.e 0

:[584]
bf [586]

:[585]
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushi.e 63
pop.v.i global.typer
pushi.e 2
push.v self.asg2
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_friendscene_1532"@13620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1533"@13622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.asg2
conv.v.i
push.v [stacktop]self.y
pushi.e 250
add.i.v
pushi.e -10
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 34
pop.v.i 189.sprite_index
pushi.e 128
pop.v.i self.con

:[586]
push.v self.con
pushi.e 128
cmp.i.v EQ
bf [588]

:[587]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [589]

:[588]
push.e 0

:[589]
bf [591]

:[590]
pushi.e 16
pop.v.i global.faceemotion
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushi.e 129
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[591]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [595]

:[592]
push.v self.flowey
conv.v.i
pushenv [594]

:[593]
pushi.e 1
pop.v.i self.neut
pushi.e 1
pop.v.i self.spec
pushi.e 6
pop.v.i self.con

:[594]
popenv [593]
pushi.e 1667
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.biig
pushi.e 131
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[595]
push.v self.con
pushi.e 132
cmp.i.v EQ
bf [597]

:[596]
pushi.e 17
pop.v.i global.faceemotion
pushi.e 133
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[597]
push.v self.con
pushi.e 134
cmp.i.v EQ
bf [601]

:[598]
push.v self.flowey
conv.v.i
pushenv [600]

:[599]
pushi.e 2
pop.v.i self.spec
pushi.e 6
pop.v.i self.con

:[600]
popenv [599]
pushi.e 135
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[601]
push.v self.con
pushi.e 136
cmp.i.v EQ
bf [603]

:[602]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [604]

:[603]
push.e 0

:[604]
bf [606]

:[605]
pushi.e 78
pop.v.i global.typer
pushi.e 0
pop.v.i self.skiptext
pushi.e 18
pop.v.i global.faceemotion
push.s "obj_friendscene_1589"@13624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_friendscene_1590"@13626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_friendscene_1591"@13628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_friendscene_1592"@13630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.flowey
conv.v.i
push.v [stacktop]self.y
pushi.e 110
sub.i.v
push.v self.flowey
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index
pushi.e -2000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -3000
pop.v.i 784.depth
pushi.e 137
pop.v.i self.con

:[606]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [608]

:[607]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [609]

:[608]
push.e 0

:[609]
bf [614]

:[610]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [612]

:[611]
pushi.e 19
pop.v.i global.faceemotion

:[612]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [614]

:[613]
pushi.e 20
pop.v.i global.faceemotion

:[614]
push.v self.con
pushi.e 137
cmp.i.v EQ
bf [616]

:[615]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [617]

:[616]
push.e 0

:[617]
bf [625]

:[618]
push.v self.dontgiveup
call.i caster_free(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
push.v self.flowey
conv.v.i
pop.v.i [stacktop]self.laugh
pushi.e 138
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1686
pushenv [620]

:[619]
pushi.e 0
pop.v.i self.mf
pushi.e 1
pop.v.i self.freeze

:[620]
popenv [619]
pushi.e 1674
pushenv [622]

:[621]
pushi.e 0
pop.v.i self.shimmy

:[622]
popenv [621]
push.v self.biig
conv.v.i
pushenv [624]

:[623]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[624]
popenv [623]
pushi.e 1
pop.v.i self.trickblack

:[625]
push.v self.con
pushi.e 139
cmp.i.v EQ
bf [627]

:[626]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [628]

:[627]
push.e 0

:[628]
bf [630]

:[629]
pushi.e 77
pop.v.i global.typer
push.s "music/f_destroyed3.ogg"@2761
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.hellsfx
push.s "obj_friendscene_1635"@13632
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.flowey
conv.v.i
push.v [stacktop]self.y
pushi.e 110
sub.i.v
push.v self.flowey
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i 189.sprite_index
push.v self.depth
pushi.e 10
sub.i.v
pop.v.v 189.depth
push.v self.depth
pushi.e 20
sub.i.v
pop.v.v 784.depth
pushi.e 140
pop.v.i self.con

:[630]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [632]

:[631]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [633]

:[632]
push.e 0

:[633]
bf [641]

:[634]
push.d 0.6
conv.d.v
push.d 0.5
conv.d.v
push.v self.hellsfx
call.i caster_loop(argc=3)
popz.v
push.d 0.8
pop.v.d self.pit
push.d 0.6
pop.v.d self.vol
pushi.e 1
push.v self.flowey
conv.v.i
pop.v.i [stacktop]self.laugh
pushi.e 1686
pushenv [636]

:[635]
pushi.e 0
pop.v.i self.freeze
pushi.e 1
pop.v.i self.shock
pushi.e -999
pop.v.i self.s_timer

:[636]
popenv [635]
pushi.e 1674
pushenv [638]

:[637]
pushi.e 1
pop.v.i self.shimmy

:[638]
popenv [637]
pushi.e 0
pop.v.i self.wht
pushi.e 0
pop.v.i self.trickblack
pushi.e 1
pop.v.i self.lastwhite
pushi.e 141
pop.v.i self.con
pushi.e 0
pop.v.i self.white
push.i -100000
pop.v.i self.depth
pushi.e 7
pop.v.i global.typer
push.s "obj_friendscene_1665"@13634
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.flowey
conv.v.i
push.v [stacktop]self.y
pushi.e 110
sub.i.v
push.v self.flowey
conv.v.i
push.v [stacktop]self.x
pushi.e 65
sub.i.v
call.i scr_blcon_x(argc=2)
popz.v
push.v self.depth
pushi.e 2
add.i.v
push.v self.blcon
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 784.depth
push.v self.biig
conv.v.i
pushenv [640]

:[639]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[640]
popenv [639]
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[641]
push.v self.con
pushi.e 141
cmp.i.v EQ
bf [645]

:[642]
push.v self.pit
push.d 0.007
add.d.v
pop.v.v self.pit
push.v self.vol
push.d 0.005
add.d.v
pop.v.v self.vol
push.v self.pit
push.v self.hellsfx
call.i caster_set_pitch(argc=2)
popz.v
push.v self.vol
push.v self.hellsfx
call.i caster_set_volume(argc=2)
popz.v
pushi.e 1686
pushenv [644]

:[643]
push.v self.mf
push.d 0.02
add.d.v
pop.v.v self.mf

:[644]
popenv [643]

:[645]
push.v self.sidecon
pushi.e 1
cmp.i.v EQ
bf [657]

:[646]
push.v self.sans
conv.v.i
push.v [stacktop]self.y
pushi.e 140
cmp.i.v LT
bt [648]

:[647]
push.v self.sans
conv.v.i
push.v [stacktop]self.y
pushi.e 240
cmp.i.v GT
b [649]

:[648]
push.e 1

:[649]
bf [651]

:[650]
push.v self.sans
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 12
add.i.v
pop.i.v [stacktop]self.y
b [652]

:[651]
pushi.e 2
pop.v.i self.sidecon
pushi.e 152
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.y

:[652]
push.v self.sans
conv.v.i
push.v [stacktop]self.y
pushi.e 680
cmp.i.v GT
bf [654]

:[653]
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushi.e 120
add.i.v
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -200
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.y
push.v self.tor
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.depth

:[654]
push.v self.pap
conv.v.i
push.v [stacktop]self.y
pushi.e 50
cmp.i.v GT
bf [656]

:[655]
push.v self.al
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.pap
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.pap
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 18
sub.i.v
pop.i.v [stacktop]self.y
push.v self.pap
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
add.i.v
pop.i.v [stacktop]self.x
b [657]

:[656]
pushi.e 40
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.y

:[657]
push.v self.border_d
pushi.e 1
cmp.i.v EQ
bf [659]

:[658]
pushi.e 310
pop.v.i self.cx
pushi.e 330
pop.v.i self.cx2
pushi.e 290
pop.v.i self.cy
pushi.e 310
pop.v.i self.cy2
pushi.e 1
pop.v.i 744.visible
push.v self.cx
pushi.e 2
add.i.v
pop.v.v 744.x
push.v self.cy
pushi.e 2
add.i.v
pop.v.v 744.y

:[659]
push.v self.ting_s
pushi.e 1
cmp.i.v EQ
bf [661]

:[660]
pushi.e 28
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.ting_s

:[661]
push.v self.lastwhite
pushi.e 1
cmp.i.v EQ
bf [663]

:[662]
push.v self.wht
push.d 1.4
cmp.d.v GT
b [664]

:[663]
push.e 0

:[664]
bf [end]

:[665]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 330
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]