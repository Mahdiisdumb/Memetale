.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.dongs
pushi.e 0
pop.v.i self.image_speed
push.s "music/story.ogg"@2610
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.intromusic
push.s "music/story_stuck.ogg"@2770
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.stuck
pushi.e 1
pop.v.i self.vol
push.d 0.91
conv.d.v
pushi.e 1
conv.i.v
push.v self.intromusic
call.i caster_play(argc=3)
popz.v
pushi.e 112
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.fadercreator
pushi.e 0
pop.v.i self.skip
push.s "obj_gameintro_fake_44"@13659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_gameintro_fake_45"@13661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%%%"@16
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
pushi.e 1604
conv.i.v
pushi.e 140
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 200
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.skipper

:[end]