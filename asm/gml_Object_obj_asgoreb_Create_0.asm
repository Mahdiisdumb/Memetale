.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 186
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.image_speed
pushi.e 489
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 490
pop.v.i self.part2
push.v self.part2
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 76
add.i.v
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart2
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.tempvalue
pushi.e 2
pop.v.i global.mercy
pushi.e 0
pop.v.i 755.visible
pushi.e 8
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.hurtanim
pushi.e 97
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
pushi.e 10
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i self.myself
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.turnoff
pushi.e 0
pop.v.i self.dont
pushi.e 0
pop.v.i self.ttttt
pushi.e 0
pop.v.i self.talk_x
pushi.e 240
pop.v.i self.ht
pushi.e 300
pop.v.i self.wd

:[end]