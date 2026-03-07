.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 201
cmp.i.v LT
bf [2]

:[1]
pushi.e 201
pop.v.i global.plot

:[2]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 518
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 8
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.hurtanim
pushi.e 97
pop.v.i self.hurtsound
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.killed
pushi.e 0
pop.v.i global.heard
pushi.e 0
pop.v.i self.takedamage
push.i -99999
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 100
pop.v.i self.ht
pushi.e 120
pop.v.i self.wd
pushi.e 1
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i 758.visible
pushi.e 99
pop.v.i global.mnfight
pushi.e 99
pop.v.i global.myfight
pushi.e 4
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.normalfight
pushi.e 0
pop.v.i 744.visible
push.s "music/sfx/sfx_rainbowbeam_1.ogg"@2802
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.beamsfx
push.s "music/sfx/sfx_a_gigatalk.ogg"@2792
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.beamsfx_a
push.s "music/sfx/sfx_segapower.ogg"@2800
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.beam_up_sfx
push.s "music/sfx/sfx_cinematiccut.ogg"@49411
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cutsfx
pushi.e 0
pop.v.i self.p_cut
pushi.e 0
pop.v.i self.p_beam
pushi.e 0
pop.v.i self.p_power
pushi.e 0
pop.v.i self.hit_try
pushi.e 0
pop.v.i self.hit_reached
pushi.e 0
pop.v.i self.timer_on
pushi.e 0
pop.v.i self.turn
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.part
pushi.e 0
pop.v.i self.skip
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.s "music/birdnoise.ogg"@2870
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.birdnoise
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.birdnoise
call.i caster_loop(argc=3)
popz.v

:[4]
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e -1
pop.v.i self.con
push.v self.mypart1
conv.v.i
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.bounce

:[7]
popenv [6]
pushi.e 1
pop.v.i 758.visible
push.s "obj_sansb_90"@23787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i self.normalfight
pushi.e 1
pop.v.i 744.visible
pushi.e 1
pushi.e -5
pushi.e 271
pop.v.i [array]global.flag
push.d 0.95
conv.d.v
push.d 0.95
conv.d.v
pushglb.v global.batmusic
call.i caster_loop(argc=3)
popz.v

:[8]
pushi.e 0
pop.v.i self.drama
pushi.e 0
pop.v.i self.mercy_death
pushi.e 0
pop.v.i self.nx
pushi.e 1
pop.v.i global.seriousbattle
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "F"@47599
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ini_f
pushi.e 0
conv.i.v
push.s "Intro"@47598
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.intro
push.v self.ini_f
pushi.e 1
add.i.v
push.s "F"@47599
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[end]