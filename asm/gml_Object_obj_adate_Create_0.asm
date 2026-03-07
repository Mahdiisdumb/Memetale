.localvar 0 arguments

:[0]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 148
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
push.d 0.2
pop.v.d self.face_speed
pushi.e 0
pop.v.i self.face_index
pushi.e -2
pop.v.i self.cn
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.skip
pushi.e 1
pop.v.i global.inbattle
pushi.e 0
pop.v.i self.choice
pushi.e 0
pop.v.i self.choicer
pushi.e 11
pop.v.i global.border
pushi.e 0
conv.i.v
call.i SCR_BORDERSETUP(argc=1)
popz.v
pushi.e 760
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 762
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 759
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 761
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.s "music/date.ogg"@2841
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.datemusic
push.s "music/lab.ogg"@2855
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.lab
pushi.e 1
pop.v.i self.datevolume
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.haty
push.i 5475834
pop.v.i self.blcon
pushi.e 0
pop.v.i self.present
pushbltn.v self.room_width
pop.v.v 177.x
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.fadeamt
pushi.e 0
pop.v.i self.fadeouter
pushi.e 1
pop.v.i self.pitch

:[end]