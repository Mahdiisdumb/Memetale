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
pushi.e 289
pop.v.i self.part1
push.v self.part1
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 50
add.i.v
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
pushi.e -9999
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i self.hurtsies
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.con2
pushi.e 0
pop.v.i self.talko
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i self.next
pushi.e 300
pop.v.i self.hp
pushi.e 300
pop.v.i self.maxhp
pushi.e 0
pop.v.i self.drawhp
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.type2
pushi.e 0
pop.v.i self.con3
push.l 98786756545
pop.v.l self.blcon
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd
pushi.e 0
pop.v.i self.soundbuffer

:[end]