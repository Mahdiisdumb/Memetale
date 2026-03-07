.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 177
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
push.v self.mypart1
conv.v.i
pushenv [2]

:[1]
pushi.e 9
pop.v.i self.depth

:[2]
popenv [1]
pushi.e 13
pop.v.i global.faceemotion
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
pushi.e 10
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 1
pop.v.i 744.shot
pushi.e 2197
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.i
pushi.e 99
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[3]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.failure
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[4]
popz.i
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.specialdam
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.specialdam
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.specialdam
pushi.e 0
pop.v.i self.mercyno
pushi.e 0
pop.v.i self.talkt
pushi.e 0
pop.v.i self.saved
pushi.e 1668
conv.i.v
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.st
push.v self.st
conv.v.i
pushenv [6]

:[5]
pushi.e 8
pop.v.i self.depth

:[6]
popenv [5]
pushi.e 100
pop.v.i self.ht
pushi.e 150
pop.v.i self.wd

:[end]