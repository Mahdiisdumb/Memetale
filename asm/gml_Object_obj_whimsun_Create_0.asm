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
push.d 0.1
pop.v.d self.image_speed
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
pushi.e 99
pop.v.i self.mercymod
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e 42
conv.i.v
call.i path_start(argc=4)
popz.v
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]