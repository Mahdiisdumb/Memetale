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
pushi.e 32
add.i.v
push.v self.x
pushi.e 28
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.object_index
push.v self.mypart1
conv.v.i
pop.v.v [stacktop]self.parent
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
pop.v.i self.flex
pushi.e 0
pop.v.i self.alphaup
pushi.e 0
pop.v.i self.freshdeath
pushi.e 0
pop.v.i self.turn0
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.shake
pushi.e 0
pop.v.i self.toldhim
pushi.e 165
pop.v.i self.blconx
pushi.e 55
pop.v.i self.blcony
push.v self.sprite_height
pop.v.v self.ht
push.v self.sprite_width
pop.v.v self.wd
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [end]

:[1]
pushi.e -400
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[end]