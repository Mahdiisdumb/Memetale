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
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -400
pop.v.i self.mercymod
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i 186.image_index
push.v self.sprite_height
pop.v.v self.ht
push.v self.sprite_width
pop.v.v self.wd
pushi.e 0
pop.v.i self.mercer

:[end]