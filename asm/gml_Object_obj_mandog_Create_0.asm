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
pushi.e 242
pop.v.i self.part1
pushi.e 244
pop.v.i self.part2
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
pushi.e -999
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.joketold
pushi.e 0
pop.v.i self.smell
pushglb.v global.hp
pop.v.v self.axhp
push.v self.sprite_height
pop.v.v self.ht
push.v self.sprite_width
pop.v.v self.wd

:[end]