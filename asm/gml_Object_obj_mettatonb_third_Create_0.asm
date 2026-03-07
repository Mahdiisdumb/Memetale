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
pushi.e 1
pop.v.i 744.shot
pushi.e 2197
pop.v.i 744.sprite_index
pushi.e 9
pop.v.i self.writer
pushi.e 0
pop.v.i self.i
pushi.e 99
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.failure
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i
pushi.e 26
pop.v.i global.attacktype
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.specialdam
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.specialdam
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.specialdam
pushi.e 0
pop.v.i self.con_2
pushi.e 200
pop.v.i self.ht
pushi.e 200
pop.v.i self.wd

:[end]