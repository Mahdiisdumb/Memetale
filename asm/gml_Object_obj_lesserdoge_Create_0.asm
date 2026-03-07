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
pushi.e 0
pop.v.i self.mercymod
pushi.e 222
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 223
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 51
pop.v.i self.hurtsound
pushi.e 218
pop.v.i self.hurtsprite
push.v self.sprite_index
pop.v.v self.normalsprite
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
push.d 0.1
pop.v.d self.image_speed
pushi.e 200
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]