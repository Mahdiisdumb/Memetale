.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 1679
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 10
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.face
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
push.i -999999
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i self.talkt
pushi.e 0
pop.v.i self.totalmercy
pushi.e 0
pop.v.i self.mercyno
pushi.e 1668
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 46
add.i.v
call.i instance_create(argc=3)
pop.v.v self.st
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]