.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 275
pop.v.i self.part1
pushi.e 2
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i global.faceemotion
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 15
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.noanim
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.spearalpha
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.goof
push.v self.mypart1
conv.v.i
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.pause

:[2]
popenv [1]
pushi.e 186
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
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
pushi.e 15
pop.v.i self.lesson
push.v 744.sprite_index
pushi.e 46
cmp.i.v EQ
bf [6]

:[5]
pushi.e 51
pop.v.i 744.sprite_index
pushi.e 3
pop.v.i 744.movement
pushi.e 0
pop.v.i self.green

:[6]
pushi.e 0
pop.v.i self.darkify
pushi.e 0
pop.v.i self.greenlock
pushi.e 12
pop.v.i self.rating
pushi.e 0
pop.v.i self.hitno
pushi.e 0
pop.v.i self.berserk
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.mercyno
pushi.e 0
pop.v.i self.talkt
pushi.e 0
pop.v.i self.saved
pushi.e 1668
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.st
push.v self.st
conv.v.i
pushenv [8]

:[7]
pushi.e 14
pop.v.i self.depth

:[8]
popenv [7]
pushi.e 200
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]