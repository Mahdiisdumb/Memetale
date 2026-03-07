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
pop.v.i self.tt
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
pop.v.i self.iwilltalk
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
pushi.e -20000
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i global.seriousbattle
pushi.e 1
pop.v.i 186.image_index
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.hplastturn
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.destroyed
pushi.e 0
pop.v.i self.sideface
push.v self.sprite_height
pop.v.v self.ht
push.v self.sprite_width
pop.v.v self.wd
call.i scr_murderlv(argc=0)
pushi.e 1
cmp.i.v GTE
bf [end]

:[1]
pushi.e -9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[end]