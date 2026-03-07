.localvar 0 arguments

:[0]
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
call.i scr_monstersetup(argc=5)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 261
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 262
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.agent
pushi.e 0
pop.v.i self.hurtanim
pushi.e 43
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
pushi.e 5
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i self.flex
pushi.e 0
pop.v.i self.alphaup
pushi.e 0
pop.v.i self.emotion
pushi.e 0
pop.v.i self.encourage
pushi.e 0
pop.v.i self.creep
push.s "music/shyren/badnote1.ogg"@2671
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.badnote
push.s "music/shyren/badnote2.ogg"@2672
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.badnote
push.s "music/shyren/badnote3.ogg"@2673
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.badnote
push.s "music/shyren/note1.ogg"@2674
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.note
push.s "music/shyren/note2.ogg"@2675
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.note
push.s "music/shyren/note3.ogg"@2676
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.note
push.s "music/shyren/note4.ogg"@2677
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.note
push.s "music/shyren/note5.ogg"@2678
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.note
push.s "music/shyren/note6.ogg"@2679
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.note
push.s "music/shyren/singF.ogg"@2680
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.longnote
push.s "music/shyren/singG.ogg"@2681
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.longnote
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]