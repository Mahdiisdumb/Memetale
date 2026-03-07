.localvar 0 arguments

:[0]
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
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.inbattle
pushi.e 0
pop.v.i self.joke
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
push.s "music/date_fight.ogg"@2843
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.datefight
push.s "music/date_tense.ogg"@2842
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.datetense
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
push.i 4384134
pop.v.i self.graph
pushi.e 162
conv.i.v
pushi.e -64
conv.i.v
pushi.e 256
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.friendgraph
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 82
pop.v.i [array]global.flag

:[2]
pushi.e 1
pop.v.i self.textskip

:[end]