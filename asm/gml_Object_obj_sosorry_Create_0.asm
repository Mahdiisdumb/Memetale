.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v self.dmg
pushi.e 0
pop.v.i self.image_speed
pushi.e 458
pop.v.i self.part1
push.v self.part1
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart1
push.v self.dmg
push.v self.part1
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 8
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.hurtanim
pushi.e 97
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
pushi.e 100
pop.v.i self.ht
pushi.e 200
pop.v.i self.wd
pushi.e 0
pop.v.i self.myplot
pushi.e 0
pop.v.i self.hitplot
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.prevhp
pushi.e 0
pop.v.i self.goodot
pushi.e 0
pop.v.i self.d_con
pushi.e 0
pop.v.i self.p_con
pushi.e 0
pop.v.i self.p_mode
pushi.e 0
pop.v.i self.n_con

:[end]