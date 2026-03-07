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
pop.v.i self.hurtanim
pushi.e 51
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
pop.v.i self.outside
pushi.e -100
pop.v.i self.mercymod
pushi.e 20
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]