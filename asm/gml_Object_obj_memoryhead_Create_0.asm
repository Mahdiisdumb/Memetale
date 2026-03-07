.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 554
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
pushi.e 53
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
pushi.e -999
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.coherent
push.s "music/dialup/dialup_0.ogg"@2683
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.ds
push.s "music/dialup/dialup_1.ogg"@2684
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.ds
push.s "music/dialup/dialup_2.ogg"@2685
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.ds
push.s "music/dialup/dialup_3.ogg"@2686
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.ds
push.s "music/dialup/dialup_4.ogg"@2687
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.ds
push.s "music/dialup/dialup_5.ogg"@2688
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.ds
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]