.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 282
pop.v.i [array]global.flag
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 228
pop.v.i self.part1
push.v self.part1
push.v self.y
pushi.e 24
add.i.v
push.v self.x
pushi.e 72
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 8
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.hurtanim
pushi.e 38
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
pushi.e -50
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 200
pop.v.i self.ht
pushi.e 240
pop.v.i self.wd
pushi.e 0
pop.v.i self.applaud
pushi.e 0
pop.v.i self.nothing
pushi.e 0
pop.v.i self.boo

:[end]