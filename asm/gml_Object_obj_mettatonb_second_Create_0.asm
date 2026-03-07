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
pushi.e 303
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
push.i -99999
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
pop.v.i self.hurtlast
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.right
pushi.e 186
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 186
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
push.v self.x
pushi.e 100
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 100
sub.i.v
pop.v.v self.y
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.hurta
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.con
pushi.e 200
pop.v.i self.ht
pushi.e 200
pop.v.i self.wd

:[end]