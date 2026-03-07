.localvar 0 arguments

:[0]
pushi.e 186
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 530
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
pushi.e 35
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
pushi.e -100
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.flex
pushi.e 0
pop.v.i self.hug
pushi.e 0
pop.v.i self.hum
pushi.e 200
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]