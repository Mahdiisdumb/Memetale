.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.read
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushglb.v global.plot
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.active
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.active

:[4]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.idealvolume
push.d 0.001
pushi.e -1
pushi.e 1
pop.v.d [array]self.idealvolume
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.curvol1
pushglb.v global.currentsong2
call.i caster_get_volume(argc=1)
pop.v.v self.curvol2
pushglb.v global.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.crumblebaby
push.v self.crumblebaby
pushglb.v global.currentsong2
call.i audio_sound_set_track_position(argc=2)
popz.v

:[end]