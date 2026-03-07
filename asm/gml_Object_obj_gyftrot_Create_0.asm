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
pushi.e 186
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 237
pop.v.i self.part1
pushi.e 238
pop.v.i self.part2
pushi.e 234
pop.v.i self.part3
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.part2
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart2
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
pushi.e -5
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.itemgone
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.gift
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.gift
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.gift
pushi.e -1
pushi.e 1
push.v [array]self.gift
pushi.e -1
pushi.e 0
push.v [array]self.gift
cmp.v.v EQ
bf [4]

:[3]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.gift
pushi.e 1
add.i.v
pop.i.v [array]self.gift

:[4]
pushi.e -1
pushi.e 2
push.v [array]self.gift
pushi.e -1
pushi.e 0
push.v [array]self.gift
cmp.v.v EQ
bf [6]

:[5]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.gift
pushi.e 1
add.i.v
pop.i.v [array]self.gift

:[6]
pushi.e -1
pushi.e 2
push.v [array]self.gift
pushi.e -1
pushi.e 1
push.v [array]self.gift
cmp.v.v EQ
bf [8]

:[7]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.gift

:[8]
pushi.e -1
pushi.e 2
push.v [array]self.gift
pushi.e -1
pushi.e 0
push.v [array]self.gift
cmp.v.v EQ
bf [10]

:[9]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.gift
pushi.e 1
add.i.v
pop.i.v [array]self.gift

:[10]
push.v self.part3
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart3
pushi.e -1
pushi.e 0
push.v [array]self.gift
push.v self.mypart3
conv.v.i
pop.v.v [stacktop]self.gift
push.v self.part3
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart4
pushi.e -1
pushi.e 1
push.v [array]self.gift
push.v self.mypart4
conv.v.i
pop.v.v [stacktop]self.gift
push.v self.part3
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart8
pushi.e -1
pushi.e 2
push.v [array]self.gift
push.v self.mypart8
conv.v.i
pop.v.v [stacktop]self.gift
pushi.e 0
pop.v.i self.googly
pushi.e 0
pop.v.i self.giftgiven
pushi.e 0
pop.v.i self.betray
pushi.e 0
pop.v.i self.ung
pushi.e 200
pop.v.i self.ht
pushi.e 200
pop.v.i self.wd

:[end]