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
pushi.e 319
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.object_index
push.v self.mypart1
conv.v.i
pop.v.v [stacktop]self.parent
pushi.e 388
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.headpic
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
pushi.e -999
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i self.flex
pushi.e 0
pop.v.i self.alphaup
pushi.e 0
pop.v.i self.freshdeath
pushi.e 0
pop.v.i self.turn0
pushi.e 255
pop.v.i self.armor
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.shirtless
pushi.e 165
pop.v.i self.blconx
pushi.e 55
pop.v.i self.blcony
pushi.e 0
pop.v.i self.fuckyou
pushi.e 200
pop.v.i self.ht
pushi.e 200
pop.v.i self.wd

:[end]