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
pushi.e 221
pop.v.i self.normalgfx
pushi.e 222
pop.v.i self.hurtgfx
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
pushi.e 100
pop.v.i self.mercymod
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.happy
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd

:[end]