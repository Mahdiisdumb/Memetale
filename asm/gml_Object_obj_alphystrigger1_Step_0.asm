.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1173
conv.i.v
push.v 1293.y
pushi.e 5
add.i.v
push.v 1293.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.alphys
pushi.e 1
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.d
push.v 1293.depth
pushi.e 1
add.i.v
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.depth
push.s "music/lab.ogg"@2855
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.lab
push.s "music/mettsmash.ogg"@2697
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.smash
push.s "music/mtgameshow.ogg"@2856
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.gameshow
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 2
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 2
add.i.v
pop.i.v [array]self.view_xview

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 4
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [10]

:[7]
pushi.e 1293
pushenv [9]

:[8]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]
pushi.e 6
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.d
pushi.e 2
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 8
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [16]

:[13]
pushi.e 1293
pushenv [15]

:[14]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
popenv [14]
pushi.e 10
pop.v.i self.con

:[16]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [19]

:[17]
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
push.v 1576.y
pushi.e 4
sub.i.v
cmp.v.v GTE
bf [19]

:[18]
pushi.e 11
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.image_speed

:[19]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [23]

:[20]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1306
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 13
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [25]

:[24]
push.v self.alphys
conv.v.i
push.v [stacktop]self.lsprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 180
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 3
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 15
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 1339
conv.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
pushi.e 6
sub.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.blc
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 17
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[27]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [31]

:[28]
push.v self.blc
conv.v.i
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
pushi.e 1
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 1732
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 6
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e 47
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_alphystrigger1_166"@9646
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
pushi.e 19
pop.v.i self.con

:[31]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [33]

:[32]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.s "obj_alphystrigger1_175"@9648
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_176"@9650
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
pushi.e 20
pop.v.i self.con
push.v self.alphys
conv.v.i
push.v [stacktop]self.lsprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.334
push.v self.alphys
conv.v.i
pop.v.d [stacktop]self.image_speed

:[36]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [47]

:[37]
push.v self.looktimer
pushi.e 1
add.i.v
pop.v.v self.looktimer
push.v self.looktimer
pushi.e 8
cmp.i.v GT
bf [47]

:[38]
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v self.alphys
conv.v.i
push.v [stacktop]self.lsprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[40]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.v self.alphys
conv.v.i
push.v [stacktop]self.rsprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[42]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.v self.alphys
conv.v.i
push.v [stacktop]self.usprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[44]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
push.v self.alphys
conv.v.i
push.v [stacktop]self.dsprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[46]
pushi.e 0
pop.v.i self.looktimer

:[47]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [49]

:[48]
pushi.e 784
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
pushi.e 21
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [54]

:[53]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.image_speed
push.d 0.0033
sub.d.v
pop.i.v [stacktop]self.image_speed

:[54]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [56]

:[55]
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.alphys
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 23
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [60]

:[57]
pushi.e 25
pop.v.i self.con
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.lab
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.labvolume
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_alphystrigger1_224"@9652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_225"@9654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_226"@9656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_227"@9658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_228"@9660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_229"@9662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_230"@9664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_231"@9666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "AD"@47571
conv.s.v
push.s "Alphys"@47572
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ad
call.i ossafe_ini_close(argc=0)
popz.v
push.s "obj_alphystrigger1_236"@9668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.ad
pushi.e 0
cmp.i.v GT
bf [59]

:[58]
push.s "obj_alphystrigger1_237"@9670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[59]
push.s "obj_alphystrigger1_238"@9672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_239"@9674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_240"@9676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_241"@9677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_242"@9679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_243"@9681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_244"@9683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_245"@9685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_246"@9687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_247"@9689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_248"@9691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_249"@9693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_250"@9695
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_251"@9697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_252"@9699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_253"@9701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_254"@9703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_255"@9705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_256"@9707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_257"@9709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[60]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [62]

:[61]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [66]

:[64]
push.v self.labvolume
push.d 0.03
sub.d.v
pop.v.v self.labvolume
push.v self.labvolume
push.v self.lab
call.i caster_set_volume(argc=2)
popz.v
push.v self.labvolume
pushi.e 0
cmp.i.v LTE
bf [66]

:[65]
pushi.e 26
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.lab
call.i caster_stop(argc=1)
popz.v

:[66]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [68]

:[67]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 1
conv.i.v
push.d 0.25
conv.d.v
push.v self.smash
call.i caster_play(argc=3)
popz.v
push.d 0.8
conv.d.v
pushi.e 2
conv.i.v
push.v self.alphys
call.i scr_bouncer(argc=3)
popz.v
push.d 0.8
conv.d.v
pushi.e 2
conv.i.v
pushi.e 1576
conv.i.v
call.i scr_bouncer(argc=3)
popz.v
pushi.e 28
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[68]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [70]

:[69]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_alphystrigger1_288"@9711
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
pushi.e 30
pop.v.i self.con

:[70]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [72]

:[71]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e 31
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[75]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [77]

:[76]
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 1
conv.i.v
push.d 0.4
conv.d.v
push.v self.smash
call.i caster_play(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v self.alphys
call.i scr_bouncer(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1576
conv.i.v
call.i scr_bouncer(argc=3)
popz.v
pushi.e 33
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[77]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [79]

:[78]
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_alphystrigger1_312"@9713
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
pushi.e 35
pop.v.i self.con

:[79]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [81]

:[80]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 36
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.smashamt

:[84]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [86]

:[85]
pushi.e 1
conv.i.v
push.d 0.5
push.v self.smashamt
add.v.d
push.v self.smash
call.i caster_play(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
push.v self.alphys
call.i scr_bouncer(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1576
conv.i.v
call.i scr_bouncer(argc=3)
popz.v
pushi.e 38
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[86]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [89]

:[87]
pushi.e 37
pop.v.i self.con
push.v self.smashamt
push.d 0.1
add.d.v
pop.v.v self.smashamt
push.v self.smashamt
push.d 0.4
cmp.d.v GT
bf [89]

:[88]
pushi.e 40
pop.v.i self.con

:[89]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [91]

:[90]
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_alphystrigger1_344"@9715
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
pushi.e 41
pop.v.i self.con

:[91]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [93]

:[92]
pushi.e 784
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
pushi.e 42
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [98]

:[97]
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 114
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.wht
pushi.e 44
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[98]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [100]

:[99]
pushi.e 1365
conv.i.v
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 2
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blk
push.v self.wht
conv.v.i
push.v [stacktop]self.depth
pushi.e 2
sub.i.v
push.v self.blk
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1084
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 200
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 200
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 46
pop.v.i self.con

:[100]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [103]

:[101]
push.s "music/mett_cheer.ogg"@2698
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cheer
push.s "music/mett_applause.ogg"@2699
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.clap
push.v self.blk
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.blk
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [103]

:[102]
pushi.e 47
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[103]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [109]

:[104]
push.v self.wht
conv.v.i
pushenv [106]

:[105]
call.i instance_destroy(argc=0)
popz.v

:[106]
popenv [105]
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i 1576.y
pushi.e 120
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.y
push.s "obj_alphystrigger1_393"@9717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_394"@9719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 49
pop.v.i self.con
pushi.e 2
pop.v.i global.facing
push.v self.alphys
conv.v.i
push.v [stacktop]self.usprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1174
conv.i.v
pushi.e 60
conv.i.v
pushi.e 760
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
pop.v.i 1287.visible
pushi.e 1365
conv.i.v
pushi.e -40
conv.i.v
pushi.e 720
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gamesign
pushi.e 1745
push.v self.gamesign
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [108]

:[107]
pushi.e 1746
push.v self.gamesign
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[108]
pushi.e 14
push.v self.gamesign
conv.v.i
pop.v.i [stacktop]self.depth
push.d 0.2
push.v self.gamesign
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.gamesign
conv.v.i
pop.v.i [stacktop]self.visible

:[109]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [111]

:[110]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
pushi.e 50
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[114]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [116]

:[115]
pushi.e 10
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 52
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [120]

:[117]
push.v self.blk
conv.v.i
pushenv [119]

:[118]
call.i instance_destroy(argc=0)
popz.v

:[119]
popenv [118]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1365
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
call.i instance_create(argc=3)
pop.v.v self.shadow
pushi.e 0
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1674
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 15
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.d
pushi.e 10
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 54
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[120]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [122]

:[121]
push.d 0.2
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_alphystrigger1_441"@9721
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
pushi.e 56
pop.v.i self.con

:[122]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [124]

:[123]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [127]

:[126]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.cheer
call.i caster_play(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.gameshow
call.i caster_loop(argc=3)
popz.v
push.d 0.95
push.v self.shadow
conv.v.i
pop.v.d [stacktop]self.image_alpha
pushi.e 1286
conv.i.v
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 60
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dball
pushi.e 13
pop.v.i 1286.depth
pushi.e 57
pop.v.i self.con

:[127]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [134]

:[128]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [130]

:[129]
pushi.e 110
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 10
sub.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 320
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [129]

:[130]
popz.i
push.v self.gamesign
conv.v.i
push.v [stacktop]self.y
push.v self.gamesign
conv.v.i
push.v [stacktop]self.ystart
pushi.e 40
add.i.v
cmp.v.v LT
bf [132]

:[131]
push.v self.gamesign
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 1
add.i.v
pop.i.v [stacktop]self.y

:[132]
push.v self.shadow
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.005
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.shadow
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.7
cmp.d.v LT
bf [134]

:[133]
pushi.e 58
pop.v.i self.con

:[134]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [136]

:[135]
push.s "obj_alphystrigger1_468"@9723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_469"@9725
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
pushi.e 59
pop.v.i self.con

:[136]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [138]

:[137]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [139]

:[138]
push.e 0

:[139]
bf [141]

:[140]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.clap
call.i caster_play(argc=3)
popz.v
push.d 0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 60
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[141]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [143]

:[142]
pushi.e 110
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 10
sub.i.v
push.v 1576.x
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

:[143]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [145]

:[144]
push.d 0.2
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_alphystrigger1_493"@9727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_494"@9729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_495"@9731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_496"@9733
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
pushi.e 63
pop.v.i self.con

:[145]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [147]

:[146]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 10
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 64
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[150]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [152]

:[151]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_alphystrigger1_514"@9735
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
pushi.e 66
pop.v.i self.con

:[152]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [154]

:[153]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [155]

:[154]
push.e 0

:[155]
bf [161]

:[156]
pushi.e 110
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [160]

:[157]
pushi.e 110
pushenv [159]

:[158]
call.i instance_destroy(argc=0)
popz.v

:[159]
popenv [158]

:[160]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i global.interact
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 67
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.border
pushi.e 48
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.talkedto

:[161]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [171]

:[162]
push.v self.mett
conv.v.i
pushenv [164]

:[163]
call.i instance_destroy(argc=0)
popz.v

:[164]
popenv [163]
push.v self.shadow
conv.v.i
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
pushi.e 1286
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
push.v self.gamesign
conv.v.i
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]
push.d 68.1
pop.v.d self.con
pushi.e 1
pop.v.i global.interact
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[171]
push.v self.con
push.d 69.1
cmp.d.v EQ
bf [173]

:[172]
pushi.e 143
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [174]

:[173]
push.e 0

:[174]
bf [176]

:[175]
pushi.e 0
pop.v.i global.mercy
pushi.e 1
pop.v.i global.interact
push.s "music/lab.ogg"@2855
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 70
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[176]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [178]

:[177]
pushi.e 1
pop.v.i global.interact

:[178]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [180]

:[179]
pushi.e 0
pushi.e -5
pushi.e 462
pop.v.i [array]global.flag
push.v self.alphys
conv.v.i
push.v [stacktop]self.lsprite
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.s "obj_alphystrigger1_566"@9736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphystrigger1_567"@9738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
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
pushi.e 72
pop.v.i self.con

:[180]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [182]

:[181]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [183]

:[182]
push.e 0

:[183]
bf [187]

:[184]
pushi.e 1172
conv.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.alphys2
push.v self.alphys
conv.v.i
pushenv [186]

:[185]
call.i instance_destroy(argc=0)
popz.v

:[186]
popenv [185]
pushi.e 73
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[187]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [189]

:[188]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 2
sub.i.v
pop.i.v [array]self.view_xview
pushi.e 1
pop.v.i global.interact

:[189]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [end]

:[190]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 0
pop.v.i global.interact
pushi.e 75
pop.v.i self.con
pushi.e 126
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]