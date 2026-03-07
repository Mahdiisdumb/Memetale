.localvar 0 arguments

:[0]
pushi.e -999
pop.v.i global.myfight
push.v self.con
pushi.e -10
cmp.i.v EQ
bf [10]

:[1]
pushi.e -999
pop.v.i 744.x
pushi.e 999
pop.v.i global.mnfight
pushi.e 999
pop.v.i global.myfight
pushi.e 784
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 787
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 0
pop.v.i global.msc
pushi.e 61
pop.v.i global.typer
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [7]

:[6]
pushi.e 121
pop.v.i global.typer

:[7]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_asgore_finalintro_178"@9791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_finalintro_179"@9793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_finalintro_180"@9795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_finalintro_181"@9797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e -9
pop.v.i self.con
b [10]

:[9]
pushi.e -8
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e -9
cmp.i.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e -999
pop.v.i 744.x
pushi.e 999
pop.v.i global.mnfight
pushi.e 999
pop.v.i global.myfight
pushi.e -8
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
pushi.e -8
cmp.i.v EQ
bf [17]

:[16]
pushi.e -999
pop.v.i 744.x
pushi.e 999
pop.v.i global.mnfight
pushi.e 999
pop.v.i global.myfight

:[17]
push.v self.con
pushi.e -7
cmp.i.v EQ
bf [25]

:[18]
pushi.e 784
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 787
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 62
pop.v.i global.typer
push.s "obj_asgore_finalintro_213"@9799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_finalintro_214"@9801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_finalintro_215"@9803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -6
pop.v.i self.con
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_asgore_finalintro_220"@9805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_finalintro_221"@9807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_finalintro_222"@9809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgore_finalintro_223"@9811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -120
pop.v.i self.con

:[24]
pushi.e 187
conv.i.v
pushi.e 120
conv.i.v
pushi.e 500
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 784
conv.i.v
pushi.e 130
conv.i.v
pushi.e 525
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2

:[25]
push.v self.con
pushi.e -6
cmp.i.v EQ
bf [27]

:[26]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [33]

:[29]
pushi.e 187
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 3
pop.v.i self.con
push.v self.special_end
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i global.screen_border_activate_on_game_over
pushi.e -100
pop.v.i self.con
pushi.e 1681
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[33]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
pushi.e -999
pop.v.i 744.x
pushi.e 999
pop.v.i global.mnfight
pushi.e 999
pop.v.i global.myfight

:[35]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [37]

:[36]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_index
pushi.e 629
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
push.d 6.1
pop.v.d self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -20
pop.v.i self.hspeed

:[37]
push.v self.con
push.d 6.1
cmp.d.v EQ
bf [39]

:[38]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_afterimage(argc=2)
pop.v.v self.sc
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.size
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.9
push.v self.sc
conv.v.i
pop.v.d [stacktop]self.image_alpha

:[39]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [41]

:[40]
pushi.e 0
pop.v.i self.hspeed
pushi.e 7
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[41]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con
pushi.e 3
cmp.i.v LT
bf [43]

:[42]
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
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 138
add.i.v
pushglb.v global.faceemotion
pushi.e 628
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[43]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [57]

:[44]
push.d 0.5
pop.v.d self.image_speed
push.v self.image_index
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.cutsound
call.i caster_play(argc=3)
popz.v

:[46]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [48]

:[47]
push.v self.image_index
pushi.e 4
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [53]

:[50]
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.image_index
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[52]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[53]
push.v self.image_index
pushi.e 4
cmp.i.v EQ
bf [55]

:[54]
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[55]
push.v self.image_index
pushi.e 13
cmp.i.v GTE
bf [57]

:[56]
pushi.e 0
pop.v.i self.image_speed
pushi.e 9
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[57]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [59]

:[58]
pushi.e 0
pop.v.i self.image_speed
pushi.e 13
pop.v.i self.image_index

:[59]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [61]

:[60]
pushi.e 0
pop.v.i 155.drawrect
push.i 16777215
pop.v.i self.background_color
pushi.e 0
pop.v.i self.image_blend
pushi.e 0
pop.v.i 751.image_blend
pushi.e 0
pop.v.i 753.image_blend
pushi.e 0
pop.v.i 752.image_blend
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 482
conv.i.v
pushi.e 140
conv.i.v
pushi.e 268
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 255
push.v self.g
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 2
push.v self.g
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.g
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i 481.image_blend
pushi.e 12
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 2.5
pop.v.d self.vvv
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v

:[61]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [65]

:[62]
push.d 14.3
push.v self.g
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e -13
push.v self.g
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.g
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
push.d 4.5
sub.d.v
pop.i.v [stacktop]self.image_angle
pushi.e 500
push.v self.x
sub.v.i
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.hspeed
push.i -1000000
push.v self.g
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_afterimage(argc=2)
pop.v.v self.sc
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.size
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.9
push.v self.sc
conv.v.i
pop.v.d [stacktop]self.image_alpha
pushi.e 100
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.g
conv.v.i
pushenv [64]

:[63]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_afterimage(argc=2)
pop.v.v self.sc
push.i -99999
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.size
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.9
push.v self.sc
conv.v.i
pop.v.d [stacktop]self.image_alpha

:[64]
popenv [63]

:[65]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [69]

:[66]
push.v self.vvv
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
push.v self.vvv
push.d 0.1
sub.d.v
pop.v.v self.vvv

:[68]
pushi.e 0
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.vvv
push.v self.g
conv.v.i
pop.v.v [stacktop]self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 18
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [73]

:[70]
push.v self.vvv
pushi.e 0
cmp.i.v GT
bf [72]

:[71]
push.v self.vvv
push.d 0.1
sub.d.v
pop.v.v self.vvv

:[72]
pushi.e 0
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.vvv
neg.v
push.v self.g
conv.v.i
pop.v.v [stacktop]self.vspeed

:[73]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [75]

:[74]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.swipesound
call.i caster_play(argc=3)
popz.v
push.s "music/vsasgore.ogg"@2874
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.batmusic
pushi.e 0
pop.v.i self.w_on
pushi.e 0
pop.v.i self.whiteout
pushi.e 0
pop.v.i self.blackout
pushi.e 100
push.v self.g
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 20
pop.v.i self.con

:[75]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [79]

:[76]
push.v self.g
conv.v.i
pushenv [78]

:[77]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_afterimage(argc=2)
pop.v.v self.sc
push.v self.depth
pushi.e 1
add.i.v
push.v self.sc
conv.v.i
pop.v.v [stacktop]self.depth
push.i -99999
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.size
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.sc
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.9
push.v self.sc
conv.v.i
pop.v.d [stacktop]self.image_alpha

:[78]
popenv [77]

:[79]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [95]

:[80]
push.i -100000
pop.v.i self.depth
push.v self.w_on
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
push.v self.whiteout
push.d 0.08
add.d.v
pop.v.v self.whiteout

:[82]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.whiteout
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.whiteout
push.d 1.8
cmp.d.v GTE
bf [84]

:[83]
pushi.e 1
pop.v.i self.w_on

:[84]
push.v self.w_on
pushi.e 1
cmp.i.v EQ
bf [94]

:[85]
push.v self.blackout
push.d 0.05
add.d.v
pop.v.v self.blackout
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.v self.blackout
push.d 5.5
cmp.d.v LT
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
push.v self.blackout
push.d 0.05
add.d.v
pop.v.v self.blackout

:[90]
push.v self.blackout
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.blackout
push.d 5.5
cmp.d.v EQ
bf [92]

:[91]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.batmusic
call.i caster_loop(argc=3)
popz.v

:[92]
pushi.e 9999
pop.v.i self.fdhjfd
push.v self.blackout
pushi.e 7
cmp.i.v EQ
bf [94]

:[93]
pushi.e 50
pop.v.i self.con
pushi.e 0
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i self.background_color
pushi.e 1
pop.v.i 155.drawrect
push.i 16777215
pop.v.i 751.image_blend
push.i 16777215
pop.v.i 753.image_blend
push.i 16777215
pop.v.i 752.image_blend
pushi.e 5
conv.i.v
call.i scr_getsprite(argc=1)
pop.v.v 751.sprite_index
pushi.e 9
conv.i.v
call.i scr_getsprite(argc=1)
pop.v.v 753.sprite_index
pushi.e 18
conv.i.v
call.i scr_getsprite(argc=1)
pop.v.v 752.sprite_index
pushi.e 1
pop.v.i 758.visible
pushi.e 485
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 484
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i 744.visible
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monster
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monster
pushi.e 52
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
pushi.e 479
conv.i.v
pushi.e 8
conv.i.v
pushi.e 208
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
pushi.e 0
pop.v.i global.msc
push.s "obj_asgore_finalintro_496"@9813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[94]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[95]
push.v self.con
pushi.e -120
cmp.i.v EQ
bf [97]

:[96]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [102]

:[99]
pushi.e 187
pushenv [101]

:[100]
call.i instance_destroy(argc=0)
popz.v

:[101]
popenv [100]
pushi.e 1
pop.v.i global.stretch
pushi.e 734
conv.i.v
pushi.e 120
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sl
push.i -90000
push.v self.sl
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -119
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e -118
cmp.i.v EQ
bf [end]

:[103]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 494
conv.i.v
pushi.e 46
conv.i.v
pushi.e 128
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asg
pushi.e 3
pop.v.i global.faceemotion
pushi.e 1
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.murder
call.i instance_destroy(argc=0)
popz.v

:[end]