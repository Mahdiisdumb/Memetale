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
pushi.e 274
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
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
pushi.e 0
pop.v.i self.image_speed
push.l -9999999999
pop.v.l self.mercymod
pushi.e 0
pop.v.i self.joketold
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.siner
pushi.e 186
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 268
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.green
pushi.e 0
pop.v.i self.darkify
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.greenlock
pushi.e 0
pop.v.i self.songplayed
pushi.e 0
pop.v.i self.revert
pushi.e 1
pop.v.i self.lesson
pushi.e 1
pop.v.i self.order
pushi.e 16
pop.v.i self.rating
pushglb.v global.hp
pop.v.v self.prevhp
pushi.e 0
pop.v.i self.hitno
pushi.e 0
pop.v.i self.damagecause
pushi.e 0
pop.v.i self.borderspec
pushi.e 0
pop.v.i self.ratingb
pushi.e 0
pop.v.i self.defadjust
pushi.e 0
pop.v.i self.died
push.v self.x
pushi.e 180
add.i.v
pop.v.v self.blconx
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.blcony
pushi.e 0
pop.v.i self.shakify
pushi.e 0
pop.v.i self.uncancel
pushi.e 0
pop.v.i self.hitfirst
pushi.e 0
pop.v.i self.berserk
pushi.e 0
pop.v.i self.mercied
pushi.e -5
pushi.e 99
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
pushi.e 1500
pushi.e -5
pushi.e 351
pop.v.i [array]global.flag
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1400
pushi.e -5
pushi.e 351
pop.v.i [array]global.flag

:[5]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.faceemotion

:[7]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 4
pop.v.i global.faceemotion

:[9]
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 3
cmp.i.v GT
bf [11]

:[10]
pushi.e 5
pop.v.i global.faceemotion

:[11]
pushi.e -5
pushi.e 351
push.v [array]global.flag
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monsterhp
pushi.e 200
pop.v.i self.ht
pushi.e 250
pop.v.i self.wd

:[end]