.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 598
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 8
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
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
pushi.e -40
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 200
pop.v.i self.mercymod
push.v self.mypart1
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.sad

:[3]
pushi.e 0
pop.v.i self.sad

:[end]