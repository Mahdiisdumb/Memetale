.localvar 0 arguments

:[0]
push.v self.con
pushi.e 4
cmp.i.v GTE
bf [2]

:[1]
pushi.e 756
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v 756.image_alpha
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v 756.image_alpha
push.d 0.02
sub.d.v
pop.v.v 756.image_alpha

:[6]
push.v self.con
pushi.e 12
cmp.i.v GTE
bf [8]

:[7]
pushi.e 758
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [14]

:[10]
pushi.e 0
pop.v.i 155.drawbinfo
pushi.e 184
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
push.v 758.image_alpha
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v 758.image_alpha
push.d 0.02
sub.d.v
pop.v.v 758.image_alpha

:[14]
push.v self.asgore
pushi.e 1
cmp.i.v EQ
bf [22]

:[15]
push.v self.remove
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.asgorey
push.v self.asgorex
pushi.e 0
conv.i.v
pushi.e 652
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.asgorey
pushi.e 8
sub.i.v
push.v self.asgorex
pushi.e 136
add.i.v
pushglb.v global.faceemotion
pushi.e 653
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[17]
push.v self.remove
pushi.e 1
cmp.i.v EQ
bf [22]

:[18]
push.v self.ry
pushi.e 2
add.i.v
pop.v.v self.ry
push.v self.ry
pushi.e 49
cmp.i.v LT
bf [20]

:[19]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.asgorey
push.v self.ry
pushi.e 4
mul.i.v
add.v.v
push.v self.asgorex
pushi.e 97
push.v self.ry
pushi.e 2
mul.i.v
sub.v.i
pushi.e 183
conv.i.v
pushi.e 0
push.v self.ry
pushi.e 2
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 652
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[20]
push.v self.ry
pushi.e 27
cmp.i.v LT
bf [22]

:[21]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.asgorey
pushi.e 8
sub.i.v
push.v self.ry
pushi.e 4
mul.i.v
add.v.v
push.v self.asgorex
pushi.e 136
add.i.v
pushi.e 54
push.v self.ry
pushi.e 2
mul.i.v
sub.v.i
pushi.e 53
conv.i.v
pushi.e 0
push.v self.ry
pushi.e 2
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushglb.v global.faceemotion
pushi.e 653
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[22]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [26]

:[23]
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e -2
pop.v.i global.mnfight
pushi.e -2
pop.v.i global.myfight
pushi.e 190
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
pushi.e 3
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [30]

:[27]
pushi.e 63
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_asgore_lastcutscene_243"@9839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_244"@9840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_245"@9842
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_246"@9844
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 5
pop.v.i self.con
pushi.e 1
pop.v.i self.saddude
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_asgore_lastcutscene_251"@9846
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 20
pop.v.i self.con

:[29]
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 300
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[30]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [32]

:[31]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 6
pop.v.i self.con
push.s "music/chokedup.ogg"@2848
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.chokemusic
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[35]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.chokemusic
call.i caster_loop(argc=3)
popz.v
pushi.e 2
pop.v.i self.saddude
push.s "obj_asgore_lastcutscene_275"@9848
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_276"@9850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_277"@9852
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_278"@9854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_279"@9856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_280"@9858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_281"@9860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_282"@9862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_283"@9864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_284"@9866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_285"@9868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_286"@9870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 270
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 8
pop.v.i self.con

:[37]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [39]

:[38]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 9
pop.v.i self.con
push.s "obj_asgore_lastcutscene_294"@9872
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_295"@9874
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_296"@9876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_297"@9878
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_298"@9880
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_299"@9882
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_300"@9884
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_301"@9886
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_302"@9888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_303"@9890
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_304"@9892
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_305"@9894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 270
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 10
pop.v.i self.con

:[42]
push.v self.con
pushi.e 8
cmp.i.v EQ
bt [46]

:[43]
push.v self.con
pushi.e 10
cmp.i.v EQ
bt [46]

:[44]
push.v self.con
pushi.e 18
cmp.i.v EQ
bt [46]

:[45]
push.v self.con
pushi.e 19
cmp.i.v EQ
b [47]

:[46]
push.e 1

:[47]
bf [49]

:[48]
call.i scr_textskip(argc=0)
popz.v

:[49]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [51]

:[50]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 757
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fightbt2
pushi.e 0
push.v self.fightbt2
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 5
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.fightbt2
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 757
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 150
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.sparebt2
pushi.e 1
push.v self.sparebt2
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 15
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.sparebt2
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -999
pop.v.i 744.x
pushi.e 749
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
add.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fkhrt
pushi.e 11
pop.v.i self.con

:[54]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [56]

:[55]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 16
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [58]

:[57]
push.s "music/musicbox.ogg"@2648
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.msb
push.s "obj_asgore_lastcutscene_340"@9895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_341"@9897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_342"@9899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_343"@9901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_344"@9903
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
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 270
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 18
pop.v.i self.con

:[58]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [60]

:[59]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [72]

:[62]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.msb
call.i caster_loop(argc=3)
popz.v
push.s "obj_asgore_lastcutscene_352"@9905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_353"@9907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_354"@9909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_355"@9911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_356"@9913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_357"@9915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_358"@9917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_359"@9919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 270
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 19
pop.v.i self.con
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "IK"@47753
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.IK
pushi.e 0
conv.i.v
push.s "CHANGE"@47755
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.CHANGE
pushi.e 0
conv.i.v
push.s "K"@47576
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.K
pushi.e 0
conv.i.v
push.s "SK"@47600
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.SK
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i self.q
pushglb.v global.kills
pushi.e 0
cmp.i.v EQ
bf [67]

:[63]
push.v self.CHANGE
pushi.e 0
cmp.i.v EQ
bf [67]

:[64]
push.v self.SK
pushi.e 0
cmp.i.v EQ
bf [67]

:[65]
push.v self.IK
pushi.e 0
cmp.i.v GT
bf [67]

:[66]
pushi.e 1
pop.v.i self.q

:[67]
push.v self.K
pushi.e 1
cmp.i.v EQ
bf [70]

:[68]
push.v self.SK
pushi.e 0
cmp.i.v EQ
bf [70]

:[69]
pushi.e 1
pop.v.i self.q

:[70]
push.v self.q
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 130
pop.v.i self.con

:[72]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [74]

:[73]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.d 18.5
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[77]
push.v self.con
push.d 19.5
cmp.d.v EQ
bf [79]

:[78]
pushi.e 20
pop.v.i self.con

:[79]
push.v self.con
pushi.e 20
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
pushi.e 5
pop.v.i global.faceemotion
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 493
conv.i.v
push.v self.asgorey
pushi.e 30
sub.i.v
push.v self.asgorex
pushi.e 190
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 21
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[84]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [92]

:[85]
push.v self.asgorex
pushi.e 190
add.i.v
pop.v.v 492.targetx
push.v self.asgorey
pushi.e 110
add.i.v
pop.v.v 492.targety
pushi.e 492
pushenv [87]

:[86]
pushi.e 2
conv.i.v
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v
push.d -0.5
pop.v.d self.friction

:[87]
popenv [86]
push.v self.hearts
pushi.e 1
cmp.i.v EQ
bf [91]

:[88]
push.v self.specbullet
conv.v.i
pushenv [90]

:[89]
pushi.e 0
pop.v.i self.speed

:[90]
popenv [89]

:[91]
pushi.e 23
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[92]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [100]

:[93]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 16
pop.v.i self.shudder
pushi.e 4
pop.v.i global.faceemotion
push.v self.hearts
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.v self.specbullet
conv.v.i
push.v [stacktop]self.x
pop.v.v self.ssx
push.v self.specbullet
conv.v.i
push.v [stacktop]self.y
pop.v.v self.ssy

:[95]
pushi.e 492
pushenv [97]

:[96]
call.i instance_destroy(argc=0)
popz.v

:[97]
popenv [96]
push.v self.hearts
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
pushi.e 492
conv.i.v
push.v self.ssy
push.v self.ssx
call.i instance_create(argc=3)
pop.v.v self.specbullet

:[99]
pushi.e 25
pop.v.i self.con

:[100]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [104]

:[101]
pushi.e 156
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
push.v self.ddd
conv.v.i
pushenv [103]

:[102]
pushi.e 34
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[103]
popenv [102]
pushi.e 1
pop.v.i self.remove
pushi.e 651
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.ht
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.wd
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.wd
pushi.e 10
pop.v.i self.room_speed
pushi.e 31
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[104]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [106]

:[105]
pushi.e 30
pop.v.i self.room_speed
pushi.e 0
pop.v.i self.asgore
pushi.e 491
conv.i.v
push.v self.asgorey
pushi.e 110
add.i.v
push.v self.asgorex
pushi.e 190
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fh
pushi.e 33
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[106]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [110]

:[107]
push.v self.specbullet
conv.v.i
pushenv [109]

:[108]
pushi.e 4
conv.i.v
push.v 491.y
push.v 491.x
call.i move_towards_point(argc=3)
popz.v

:[109]
popenv [108]
pushi.e 35
pop.v.i self.con
pushi.e 35
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[110]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [117]

:[111]
pushi.e 1
pop.v.i self.depth
pushi.e 492
pushenv [113]

:[112]
call.i instance_destroy(argc=0)
popz.v

:[113]
popenv [112]
pushi.e 491
pushenv [115]

:[114]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[115]
popenv [114]
pushi.e 37
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[117]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [123]

:[118]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i self.flowey
pushi.e 0
pop.v.i self.fimg
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [122]

:[119]
pushi.e 95
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Won"@3070
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.won
push.v self.won
pushi.e 0
cmp.i.v GT
bf [121]

:[120]
pushi.e 119
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[121]
b [123]

:[122]
pushi.e 150
pop.v.i self.con

:[123]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [125]

:[124]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 46
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[125]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [127]

:[126]
pushi.e 1
pushi.e -5
pushi.e 476
pop.v.i [array]global.flag
push.d 1.5
pop.v.d global.stretch
pushi.e 734
conv.i.v
push.v self.asgorey
pushi.e 150
add.i.v
push.v self.asgorex
pushi.e 195
add.i.v
call.i instance_create(argc=3)
pop.v.v self.strike
pushi.e 49
pop.v.i self.con
pushglb.v global.damagetimer
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[127]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [129]

:[128]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 16
pop.v.i self.shudder
pushi.e 6
pop.v.i global.faceemotion
pushi.e 51
pop.v.i self.con

:[129]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [133]

:[130]
pushi.e 156
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
push.v self.ddd
conv.v.i
pushenv [132]

:[131]
pushi.e 34
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[132]
popenv [131]
pushi.e 1
pop.v.i self.remove
pushi.e 651
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.ht
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.wd
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.wd
pushi.e 10
pop.v.i self.room_speed
pushi.e 59
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[133]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [135]

:[134]
pushi.e 30
pop.v.i self.room_speed
pushi.e 0
pop.v.i self.asgore
pushi.e 491
conv.i.v
push.v self.asgorey
pushi.e 100
add.i.v
push.v self.asgorex
pushi.e 180
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fh
pushi.e 62
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[135]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [137]

:[136]
pushi.e 0
pop.v.i 491.shake
pushi.e 493
conv.i.v
push.v self.asgorey
pushi.e 15
sub.i.v
push.v self.asgorex
pushi.e 190
add.i.v
call.i instance_create(argc=3)
pop.v.v self.spb
pushi.e 20
push.v self.spb
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 64
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[137]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [141]

:[138]
push.v 491.x
pushi.e 2
add.i.v
pop.v.v 492.targetx
push.v 491.y
pushi.e 2
add.i.v
pop.v.v 492.targety
pushi.e 492
pushenv [140]

:[139]
pushi.e 2
conv.i.v
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v
push.d -0.5
pop.v.d self.friction

:[140]
popenv [139]
pushi.e 66
pop.v.i self.con
pushi.e 18
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[141]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [143]

:[142]
pushi.e 36
pop.v.i self.con

:[143]
push.v self.flowey
pushi.e 1
cmp.i.v EQ
bf [151]

:[144]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 150
conv.i.v
pushi.e 285
conv.i.v
push.v self.fimg
pushi.e 647
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [146]

:[145]
push.v self.fimg
pushi.e 8
cmp.i.v GTE
b [147]

:[146]
push.e 0

:[147]
bf [149]

:[148]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 150
conv.i.v
pushi.e 285
conv.i.v
pushglb.v global.faceemotion
pushi.e 648
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[149]
push.v self.fimg
pushi.e 8
cmp.i.v LT
bf [151]

:[150]
push.v self.fimg
push.d 0.5
add.d.v
pop.v.v self.fimg

:[151]
push.v self.flowey
pushi.e 3
cmp.i.v EQ
bf [154]

:[152]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 150
conv.i.v
pushi.e 285
conv.i.v
push.v self.fimg2
pushi.e 649
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fimg2
pushi.e 4
cmp.i.v LT
bf [154]

:[153]
push.v self.fimg2
push.d 0.04
add.d.v
pop.v.v self.fimg2

:[154]
push.v self.flowey
pushi.e 4
cmp.i.v EQ
bf [156]

:[155]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 150
conv.i.v
pushi.e 285
conv.i.v
push.v self.fimg2
pushi.e 650
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fimg2
push.d 0.5
add.d.v
pop.v.v self.fimg2

:[156]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [165]

:[157]
pushi.e 0
pop.v.i global.msc
pushi.e 66
pop.v.i global.typer
push.v self.hearts
pushi.e 1
cmp.i.v EQ
bf [161]

:[158]
push.s "obj_asgore_lastcutscene_623"@9921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "truename"@47757
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.truename
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.truename
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
push.s "obj_asgore_lastcutscene_627"@9923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[160]
push.s "obj_asgore_lastcutscene_628"@9925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[161]
push.v self.hearts
pushi.e 0
cmp.i.v EQ
bf [164]

:[162]
push.s "obj_asgore_lastcutscene_632"@9927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_633"@9929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "truename"@47757
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.truename
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.truename
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
push.s "obj_asgore_lastcutscene_639"@9930
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_640"@9932
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[164]
pushi.e 140
conv.i.v
pushi.e 360
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
pop.v.i 189.sprite_index
pushi.e 97
pop.v.i self.con

:[165]
push.v self.con
pushi.e 97
cmp.i.v EQ
bf [167]

:[166]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [168]

:[167]
push.e 0

:[168]
bf [170]

:[169]
push.s "obj_asgore_lastcutscene_651"@9934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 140
conv.i.v
pushi.e 360
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 26
pop.v.i 189.sprite_index
pushi.e 100
pop.v.i self.con

:[170]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [187]

:[171]
pushi.e 1
pop.v.i self.rowdy
pushi.e 400
pop.v.i self.radius
pushi.e 0
pop.v.i self.angle
pushi.e 0
pop.v.i self.i

:[172]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [186]

:[173]
push.v self.i
pushi.e 60
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ang
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ang
push.v self.radius
call.i lengthdir_x(argc=2)
pushi.e 320
add.i.v
pop.v.v self.xx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ang
push.v self.radius
call.i lengthdir_y(argc=2)
pushi.e 170
add.i.v
pop.v.v self.yy
pushi.e 492
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.heart
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [175]

:[174]
pushi.e 48
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[175]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
pushi.e 54
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[177]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [179]

:[178]
pushi.e 49
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[179]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [181]

:[180]
pushi.e 52
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[181]
push.v self.i
pushi.e 4
cmp.i.v EQ
bf [183]

:[182]
pushi.e 53
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[183]
push.v self.i
pushi.e 5
cmp.i.v EQ
bf [185]

:[184]
pushi.e 51
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[185]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [172]

:[186]
pushi.e 0
pop.v.i self.fimg2
push.d 99.5
pop.v.d self.con

:[187]
push.v self.con
push.d 99.5
cmp.d.v EQ
bf [189]

:[188]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [190]

:[189]
push.e 0

:[190]
bf [192]

:[191]
push.s "music/cymbal.ogg"@2624
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cym
pushi.e 102
pop.v.i self.con
pushi.e 3
pop.v.i self.flowey
pushi.e 67
pop.v.i global.typer
push.s "obj_asgore_lastcutscene_692"@9936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 350
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create(argc=3)
popz.v

:[192]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [194]

:[193]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [195]

:[194]
push.e 0

:[195]
bf [197]

:[196]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.cym
call.i caster_play(argc=3)
popz.v
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.flowey
pushi.e 103
pop.v.i self.con
pushi.e 0
pop.v.i self.wht
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[197]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [202]

:[198]
pushi.e 2
pop.v.i self.rowdy
pushi.e 105
pop.v.i self.con
pushi.e -1
pushi.e 0
push.v [array]self.heart
conv.v.i
pushenv [200]

:[199]
pushi.e 1
pop.v.i self.secrettrick

:[200]
popenv [199]
pushi.e 160
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushglb.v global.osflavor
pushi.e 2
cmp.i.v GT
bf [202]

:[201]
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.alarm
pushi.e 90
add.i.v
pop.i.v [array]self.alarm

:[202]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [207]

:[203]
pushi.e 1087
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.white_blocker
pushi.e 900
push.v self.white_blocker
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 900
push.v self.white_blocker
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 8
pop.v.i global.filechoice
pushi.e 319
pop.v.i global.currentroom
call.i scr_saveprocess(argc=0)
popz.v
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [206]

:[204]
push.s "memetale.exe"@49224
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [206]

:[205]
push.s "flowey.exe"@49225
conv.s.v
push.s "memetale.exe"@49224
conv.s.v
call.i file_rename(argc=2)
popz.v

:[206]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "F"@47599
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 107
pop.v.i self.con

:[207]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [224]

:[208]
pushi.e 1
pop.v.i self.rowdy
pushi.e 400
pop.v.i self.radius
pushi.e 0
pop.v.i self.angle
pushi.e 0
pop.v.i self.i

:[209]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [223]

:[210]
push.v self.i
pushi.e 60
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ang
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ang
push.v self.radius
call.i lengthdir_x(argc=2)
pushi.e 320
add.i.v
pop.v.v self.xx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ang
push.v self.radius
call.i lengthdir_y(argc=2)
pushi.e 170
add.i.v
pop.v.v self.yy
pushi.e 492
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.heart
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [212]

:[211]
pushi.e 48
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[212]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [214]

:[213]
pushi.e 54
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[214]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [216]

:[215]
pushi.e 49
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[216]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [218]

:[217]
pushi.e 52
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[218]
push.v self.i
pushi.e 4
cmp.i.v EQ
bf [220]

:[219]
pushi.e 53
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[220]
push.v self.i
pushi.e 5
cmp.i.v EQ
bf [222]

:[221]
pushi.e 51
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[222]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [209]

:[223]
pushi.e 0
pop.v.i self.fimg2
pushi.e 121
pop.v.i self.con

:[224]
push.v self.con
pushi.e 121
cmp.i.v EQ
bf [233]

:[225]
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [228]

:[226]
push.s "obj_asgore_lastcutscene_769"@9938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_770"@9940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_771"@9942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_772"@9944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "K"@47576
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.kill
push.v self.kill
pushi.e 1
cmp.i.v EQ
bf [228]

:[227]
push.s "obj_asgore_lastcutscene_778"@9946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_779"@9948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_780"@9950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_781"@9952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_782"@9954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_783"@9956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_784"@9958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[228]
push.v self.won
pushi.e 2
cmp.i.v EQ
bf [230]

:[229]
push.s "obj_asgore_lastcutscene_792"@9960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[230]
push.v self.won
pushi.e 3
cmp.i.v GTE
bf [232]

:[231]
push.s "obj_asgore_lastcutscene_796"@9961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[232]
pushi.e 122
pop.v.i self.con
pushi.e 140
conv.i.v
pushi.e 390
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e -9000
pop.v.i 189.depth
push.i -90000
pop.v.i 784.depth

:[233]
push.v self.con
pushi.e 122
cmp.i.v EQ
bf [235]

:[234]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [236]

:[235]
push.e 0

:[236]
bf [240]

:[237]
pushi.e 2
pop.v.i self.rowdy
pushi.e -1
pushi.e 0
push.v [array]self.heart
conv.v.i
pushenv [239]

:[238]
pushi.e 1
pop.v.i self.secrettrick

:[239]
popenv [238]
push.s "music/cymbal.ogg"@2624
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cym
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.cym
call.i caster_play(argc=3)
popz.v
pushi.e 123
pop.v.i self.con
pushi.e 0
pop.v.i self.wht
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[240]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [242]

:[241]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [243]

:[242]
push.e 0

:[243]
bf [245]

:[244]
pushi.e 131
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[245]
push.v self.con
pushi.e 132
cmp.i.v EQ
bf [247]

:[246]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [248]

:[247]
push.e 0

:[248]
bf [250]

:[249]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "SK"@47600
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 63
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
push.s "obj_asgore_lastcutscene_831"@9962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_832"@9964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_833"@9966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_834"@9968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_835"@9970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_836"@9972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_837"@9974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_838"@9976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_839"@9978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_840"@9980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_841"@9982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_842"@9984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 270
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 133
pop.v.i self.con
push.v self.depth
pop.v.v self.remdepth

:[250]
push.v self.con
pushi.e 133
cmp.i.v EQ
bf [252]

:[251]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [253]

:[252]
push.e 0

:[253]
bf [255]

:[254]
push.s "music/sfx_cinematiccut.ogg"@2720
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cut
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
push.v self.cut
call.i caster_play(argc=3)
popz.v
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 134
pop.v.i self.con
pushi.e 0
pop.v.i self.wht
push.i -999999
pop.v.i self.depth

:[255]
push.v self.con
pushi.e 134
cmp.i.v EQ
bf [257]

:[256]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.wht
call.i draw_set_alpha(argc=1)
popz.v
push.v self.wht
push.d 0.2
add.d.v
pop.v.v self.wht
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
pushi.e 134
pop.v.i self.con

:[257]
push.v self.con
pushi.e 135
cmp.i.v EQ
bf [259]

:[258]
pushi.e 136
pop.v.i self.con
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[259]
push.v self.con
pushi.e 136
cmp.i.v EQ
bf [261]

:[260]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
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

:[261]
push.v self.con
pushi.e 137
cmp.i.v EQ
bf [263]

:[262]
push.v self.remdepth
pop.v.v self.depth
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 64
pop.v.i global.typer
push.s "obj_asgore_lastcutscene_898"@9986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_899"@9988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_900"@9990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_901"@9992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_902"@9994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_903"@9996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 270
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 138
pop.v.i self.con

:[263]
push.v self.con
pushi.e 138
cmp.i.v EQ
bf [265]

:[264]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [266]

:[265]
push.e 0

:[266]
bf [268]

:[267]
pushi.e 139
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[268]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [270]

:[269]
pushi.e 58
pop.v.i self.con

:[270]
push.v self.rowdy
pushi.e 1
cmp.i.v EQ
bf [276]

:[271]
push.v self.angle
pushi.e 4
add.i.v
pop.v.v self.angle
push.v self.radius
pushi.e 180
cmp.i.v GT
bf [273]

:[272]
push.v self.radius
pushi.e 5
sub.i.v
pop.v.v self.radius

:[273]
push.v self.radius
push.v self.angle
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.radius
pushi.e 0
pop.v.i self.i

:[274]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [276]

:[275]
push.v self.i
pushi.e 60
mul.i.v
push.v self.angle
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ang
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ang
push.v self.radius
call.i lengthdir_x(argc=2)
pushi.e 320
add.i.v
pop.v.v self.xx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ang
push.v self.radius
call.i lengthdir_y(argc=2)
pushi.e 170
add.i.v
pop.v.v self.yy
push.v self.xx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.v [stacktop]self.x
push.v self.yy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [274]

:[276]
push.v self.rowdy
pushi.e 2
cmp.i.v EQ
bf [282]

:[277]
push.v self.angle
pushi.e 1
add.i.v
pop.v.v self.angle
push.v self.radius
pushi.e 0
cmp.i.v GT
bf [279]

:[278]
push.v self.radius
push.d 1.5
sub.d.v
pop.v.v self.radius

:[279]
pushi.e 0
pop.v.i self.i

:[280]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [282]

:[281]
push.v self.i
pushi.e 60
mul.i.v
push.v self.angle
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ang
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ang
push.v self.radius
call.i lengthdir_x(argc=2)
pushi.e 320
add.i.v
pop.v.v self.xx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ang
push.v self.radius
call.i lengthdir_y(argc=2)
pushi.e 170
add.i.v
pop.v.v self.yy
push.v self.xx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.v [stacktop]self.x
push.v self.yy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heart
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [280]

:[282]
push.v self.con
pushi.e 999
cmp.i.v EQ
bf [284]

:[283]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.wht
call.i draw_set_alpha(argc=1)
popz.v
push.v self.wht
push.d 0.01
add.d.v
pop.v.v self.wht
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

:[284]
push.v self.con
pushi.e 124
cmp.i.v EQ
bf [286]

:[285]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 238
conv.i.v
call.i room_goto(argc=1)
popz.v

:[286]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [288]

:[287]
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
push.s "obj_asgore_lastcutscene_979"@9998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_980"@10000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_981"@10002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_982"@10004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_983"@10006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asgore_lastcutscene_984"@10008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 151
pop.v.i self.con
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 140
conv.i.v
pushi.e 390
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e -9000
pop.v.i 189.depth
push.i -90000
pop.v.i 784.depth

:[288]
push.v self.con
pushi.e 151
cmp.i.v EQ
bf [290]

:[289]
pushi.e 784
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
pushi.e 0
pop.v.i global.msc
pushi.e 102
pop.v.i global.typer
push.s "obj_asgore_lastcutscene_995"@10010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 152
pop.v.i self.con
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 140
conv.i.v
pushi.e 390
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e -9000
pop.v.i 189.depth
push.i -90000
pop.v.i 784.depth

:[293]
push.v self.con
pushi.e 152
cmp.i.v EQ
bf [295]

:[294]
pushi.e 784
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
pushi.e 0
pop.v.i global.msc
pushi.e 103
pop.v.i global.typer
push.s "obj_asgore_lastcutscene_1006"@10012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 153
pop.v.i self.con
pushi.e 140
conv.i.v
pushi.e 390
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e -9000
pop.v.i 189.depth
push.i -90000
pop.v.i 784.depth

:[298]
push.v self.con
pushi.e 153
cmp.i.v EQ
bf [300]

:[299]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [301]

:[300]
push.e 0

:[301]
bf [end]

:[302]
pushi.e 495
conv.i.v
pushi.e 150
conv.i.v
pushi.e 285
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]