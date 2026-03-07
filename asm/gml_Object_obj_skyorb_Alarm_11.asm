.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.type
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 376
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.cc

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 377
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.cc

:[4]
push.v self.dmg
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.dmg
call.i instance_destroy(argc=0)
popz.v

:[end]