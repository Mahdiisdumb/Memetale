.localvar 0 arguments

:[0]
push.s "music/bergentruckung.ogg"@2719
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.batmusic
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.murder

:[2]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e -10
pop.v.i self.con
pushi.e 0
pop.v.i self.face_index
pushi.e -999
pop.v.i global.mnfight
pushi.e -999
pop.v.i global.myfight
pushi.e -999
pop.v.i 744.x
pushi.e 7
conv.i.v
call.i scr_getsprite(argc=1)
pop.v.v 751.sprite_index
pushi.e 11
conv.i.v
call.i scr_getsprite(argc=1)
pop.v.v 753.sprite_index
pushi.e 20
conv.i.v
call.i scr_getsprite(argc=1)
pop.v.v 752.sprite_index
pushi.e 755
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 481
conv.i.v
push.v 755.y
push.v 755.x
call.i instance_create(argc=3)
popz.v

:[6]
pushi.e 186
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 0
pop.v.i 758.visible
pushi.e 0
pop.v.i global.faceemotion
pushi.e 2
pop.v.i global.mercy
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i global.screen_border_activate_on_game_over

:[10]
pushi.e 0
pop.v.i self.skip
pushi.e -5
pushi.e 10
push.v [array]global.tempvalue
pushi.e 0
cmp.i.v GT
bf [13]

:[11]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 12
cmp.i.v LT
bf [13]

:[12]
push.v self.murder
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.skip
pushi.e 2
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v

:[16]
pushi.e 0
pop.v.i 744.visible
pushi.e 1
pop.v.i global.seriousbattle
push.s "music/sfx_cinematiccut.ogg"@2720
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cutsound
push.s "music/sfx_swipe.ogg"@2721
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.swipesound
pushi.e 0
pop.v.i self.special_end
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 12
cmp.i.v GTE
bf [18]

:[17]
push.v self.murder
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i self.special_end
pushi.e -10
pop.v.i self.con
pushi.e 0
pop.v.i self.skip
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.v self.murder
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.batmusic
call.i caster_play(argc=3)
popz.v

:[26]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [end]

:[27]
pushi.e 1
pop.v.i global.faceemotion

:[end]