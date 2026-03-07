.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i 139.messed
pushi.e 1
pop.v.i global.inbattle
pushi.e 0
pop.v.i self.savetimer
pushi.e 0
pop.v.i self.loadtimer
pushi.e 0
pop.v.i self.darkmode
pushi.e 0
pop.v.i self.darkvalue
pushi.e 0
pop.v.i self.htest
pushi.e 50
pop.v.i self.save_hp
pushi.e 0
pop.v.i self.save_inv
pushi.e 0
pop.v.i self.megadamage
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i self.introcon
pushi.e 0
pop.v.i self.introskip
pushi.e 0
pop.v.i self.turnturn
pushi.e 0
pop.v.i self.drawhp
pushi.e 0
pop.v.i self.intent_hit
pushi.e 9950
pop.v.i global.floweyhp
pushi.e 9999
pop.v.i global.floweymaxhp
pushi.e 0
pop.v.i global.battlephase
pushi.e 0
pop.v.i global.soul_rescue
pushglb.v global.fplot
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "P"@49979
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[2]
pushglb.v global.fplot
pushi.e 1
cmp.i.v GT
bf [6]

:[3]
pushglb.v global.fplot
pushi.e 1
sub.i.v
pop.v.v global.battlephase
pushglb.v global.fplot
pushi.e 1
sub.i.v
pop.v.v global.soul_rescue
pushi.e 1
pop.v.i self.introskip
pushi.e 0
pop.v.i self.fadevalue
pushi.e 1593
pushenv [5]

:[4]
pushi.e 26
pop.v.i self.tvmode

:[5]
popenv [4]

:[6]
pushi.e 0
pop.v.i self.flx
pushi.e 0
pop.v.i self.fly
pushi.e 1593
conv.i.v
pushi.e -32
conv.i.v
pushi.e 235
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tv
pushi.e 1597
conv.i.v
pushi.e 132
conv.i.v
pushi.e 196
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.lefteye
pushi.e 1595
conv.i.v
pushi.e 192
conv.i.v
pushi.e 258
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.flipeye
pushi.e 1596
conv.i.v
pushi.e 196
conv.i.v
pushi.e 292
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mouth
pushi.e 1594
conv.i.v
pushi.e 126
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fleshface
pushi.e 1599
conv.i.v
pushi.e 226
conv.i.v
pushi.e 272
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pipetest
pushi.e 1600
conv.i.v
pushi.e 132
conv.i.v
pushi.e 230
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pipetest2
pushi.e 1601
conv.i.v
pushi.e 54
conv.i.v
pushi.e 246
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pipetest3
pushi.e 1598
conv.i.v
pushi.e 10
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.behind
pushi.e 0
pop.v.i 1592.visible
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.s "external/spr_nostrils.png"@51374
conv.s.v
pushi.e 2260
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_fleshmound.png"@51376
conv.s.v
pushi.e 2261
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 24
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_lefteye_overlay.png"@51377
conv.s.v
pushi.e 2262
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 17
conv.i.v
pushi.e 31
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_lefteye_nopupil.png"@51378
conv.s.v
pushi.e 2265
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_lefteye_pupil.png"@51379
conv.s.v
pushi.e 2267
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 50
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_flipeye_bg.png"@51380
conv.s.v
pushi.e 2269
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 53
conv.i.v
pushi.e 31
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_flipeye_holder.png"@51381
conv.s.v
pushi.e 2271
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 40
conv.i.v
pushi.e 21
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_flipeye_noiris.png"@51382
conv.s.v
pushi.e 2274
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_flipeye_pupil.png"@51383
conv.s.v
pushi.e 2276
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 15
conv.i.v
pushi.e 17
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_flipeye_iris.png"@51384
conv.s.v
pushi.e 2278
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_nostrils.gif"@51385
conv.s.v
pushi.e 2260
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_fleshmound.gif"@51386
conv.s.v
pushi.e 2261
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 24
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_lefteye_overlay.gif"@51387
conv.s.v
pushi.e 2262
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 17
conv.i.v
pushi.e 31
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_lefteye_nopupil.gif"@51388
conv.s.v
pushi.e 2265
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_lefteye_pupil.gif"@51389
conv.s.v
pushi.e 2267
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 50
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_flipeye_bg.gif"@51390
conv.s.v
pushi.e 2269
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 53
conv.i.v
pushi.e 31
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_flipeye_holder.gif"@51391
conv.s.v
pushi.e 2271
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 40
conv.i.v
pushi.e 21
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_flipeye_noiris.gif"@51392
conv.s.v
pushi.e 2274
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_flipeye_pupil.gif"@51393
conv.s.v
pushi.e 2276
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 15
conv.i.v
pushi.e 17
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_flipeye_iris.gif"@51394
conv.s.v
pushi.e 2278
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_floweyx_mouthedge.png"@51395
conv.s.v
pushi.e 2280
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_floweyx_mouthl.png"@51396
conv.s.v
pushi.e 2281
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.s "external/spr_floweyx_dimple.png"@51397
conv.s.v
pushi.e 2281
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_floweyx_mouthbridge.png"@51398
conv.s.v
pushi.e 2283
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweyx_mouthedge.gif"@51399
conv.s.v
pushi.e 2280
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweyx_mouthl.gif"@51400
conv.s.v
pushi.e 2281
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweyx_dimple.gif"@51401
conv.s.v
pushi.e 2281
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweyx_mouthbridge.gif"@51402
conv.s.v
pushi.e 2283
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_floweyx_tv.png"@51403
conv.s.v
pushi.e 2381
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 19
conv.i.v
pushi.e 21
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_pipepart.png"@51404
conv.s.v
pushi.e 2383
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweyx_tv.gif"@51405
conv.s.v
pushi.e 2381
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 19
conv.i.v
pushi.e 21
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_pipepart.gif"@51406
conv.s.v
pushi.e 2383
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 36
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_halfdentata_none.png"@51407
conv.s.v
pushi.e 2284
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 36
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_halfdentata_bottom.png"@51408
conv.s.v
pushi.e 2286
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 36
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_halfdentata_top.png"@51409
conv.s.v
pushi.e 2287
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 36
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_dentata_tophalf.png"@51410
conv.s.v
pushi.e 2288
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 36
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_dentata_bottomhalf.png"@51411
conv.s.v
pushi.e 2289
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 36
conv.i.v
pushi.e 51
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_dentata_none.png"@51412
conv.s.v
pushi.e 2290
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_bgpipe.png"@51413
conv.s.v
pushi.e 2293
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_bgpipe.gif"@51414
conv.s.v
pushi.e 2293
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_floweyarm.png"@51415
conv.s.v
pushi.e 2294
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweyarm.gif"@51416
conv.s.v
pushi.e 2294
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_sidestalk.png"@51417
conv.s.v
pushi.e 2295
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_sidestalk.gif"@51418
conv.s.v
pushi.e 2295
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_vines_flowey.png"@51419
conv.s.v
pushi.e 2296
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_vines_flowey_2.png"@51420
conv.s.v
pushi.e 2297
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "external/spr_vines_flowey_3.png"@51421
conv.s.v
pushi.e 2298
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_vines_flowey.gif"@51422
conv.s.v
pushi.e 2296
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_vines_flowey_2.gif"@51423
conv.s.v
pushi.e 2297
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_vines_flowey_3.gif"@51424
conv.s.v
pushi.e 2298
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "external/tv.gif"@51425
conv.s.v
pushi.e 2311
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 59
conv.i.v
pushi.e 59
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_mouthball.png"@51426
conv.s.v
pushi.e 2344
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 59
conv.i.v
pushi.e 59
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_mouthball.gif"@51427
conv.s.v
pushi.e 2344
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweynuke_explosion.png"@51428
conv.s.v
pushi.e 2346
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweynuke_explosion.gif"@51429
conv.s.v
pushi.e 2346
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweynuke.png"@51430
conv.s.v
pushi.e 2347
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweynuke.gif"@51431
conv.s.v
pushi.e 2347
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_mouthflash.png"@51432
conv.s.v
pushi.e 2350
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_mouthflash.gif"@51433
conv.s.v
pushi.e 2350
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_mouthbeam.png"@51434
conv.s.v
pushi.e 2351
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_mouthbeam.gif"@51435
conv.s.v
pushi.e 2351
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 24
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweyx_flame.png"@51436
conv.s.v
pushi.e 2355
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 24
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_floweyx_flame.gif"@51437
conv.s.v
pushi.e 2355
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_venus_placeholder.png"@51438
conv.s.v
pushi.e 2361
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "external/spr_venus_placeholder.gif"@51439
conv.s.v
pushi.e 2361
conv.i.v
call.i sprite_replace(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 100
conv.i.v
pushi.e 34
conv.i.v
pushi.e 44
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2347
conv.i.v
call.i sprite_collision_mask(argc=9)
popz.v
push.s "music/f_6s_1.ogg"@2745
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.mus_soul
push.s "music/f_6s_2.ogg"@2746
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.mus_soul
push.s "music/f_6s_3.ogg"@2747
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.mus_soul
push.s "music/f_6s_4.ogg"@2748
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.mus_soul
push.s "music/f_6s_5.ogg"@2749
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.mus_soul
push.s "music/f_6s_6.ogg"@2750
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.mus_soul
push.s "music/f_6s_1.ogg"@2745
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.mus_soul
pushi.e 1
pop.v.i self.soulpitch
push.s "music/f_noise.ogg"@2743
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_noise
push.s "music/f_alarm.ogg"@2742
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_alarm
push.s "music/f_part1.ogg"@2744
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.mus_phase
push.s "music/f_part2.ogg"@2751
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.mus_phase
push.s "music/repeat_1.ogg"@2738
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_repeat1
push.s "music/repeat_2.ogg"@2739
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_repeat2
push.s "music/f_endnote.ogg"@2753
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_endnote
pushi.e 0
pop.v.i self.mustype
push.s "music/sfx_oh.ogg"@2729
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_oh
push.s "music/sfx_ted.ogg"@2735
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_ted
push.s "music/sfx_generate.ogg"@2730
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_generate
push.s "music/f_laugh.ogg"@2741
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_laugh
push.s "music/f_finale_1.ogg"@2754
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_finale1
push.s "music/f_finale_1_l.ogg"@2755
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_finale1_l
push.s "music/f_finale_2.ogg"@2756
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_finale2
push.s "music/f_finale_3.ogg"@2757
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_finale3
push.s "music/f_saved.ogg"@2758
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_saved
push.s "music/f_orchhit.ogg"@2763
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_hit
pushi.e 0
pop.v.i self.pd
pushi.e 0
pop.v.i self.doomtimer
pushi.e 0
pop.v.i self.o_kill
pushi.e 0
pop.v.i self.destroyer
pushi.e 0
pop.v.i self.destroyercon
pushi.e 0
pop.v.i self.dcon
pushi.e 2
pop.v.i self.fileset
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [8]

:[7]
pushi.e 135
pop.v.i self.writerx
b [end]

:[8]
pushi.e 170
pop.v.i self.writerx

:[end]