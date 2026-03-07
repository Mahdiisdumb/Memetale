.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 571
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 570
pop.v.i self.part1
pushi.e 570
conv.i.v
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
pushi.e 42
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
push.l -99999999999999
pop.v.l self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.turns
pushi.e 1
pushi.e -5
pushi.e 500
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.hope
pushi.e 0
pop.v.i self.hoped
pushi.e 0
pop.v.i self.dreamed
pushi.e 0
pop.v.i self.say
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e -5
pushi.e 504
push.v [array]global.flag
pushi.e 3
sub.i.v
pop.v.v self.turns
push.v self.turns
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.turns

:[2]
pushi.e 0
pop.v.i self.trcon
pushi.e 200
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]