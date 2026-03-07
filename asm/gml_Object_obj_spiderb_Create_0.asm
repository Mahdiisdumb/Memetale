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
pushi.e 363
pop.v.i self.part1
push.v self.part1
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 62
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 8
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.hurtanim
pushi.e 35
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
pushi.e -960
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i self.flex
pushi.e 0
pop.v.i self.encourage
pushi.e 0
pop.v.i self.criticize
pushi.e 0
pop.v.i self.hug
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.turnamt
pushi.e 0
pop.v.i self.purpletime
pushi.e 0
pop.v.i self.blconactive
pushi.e 0
pop.v.i self.struggle
pushi.e 10
pushi.e -5
pushi.e 382
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.bribes
pushi.e 0
pop.v.i self.atkdown
pushi.e 10
pop.v.i self.type
pushi.e 0
pop.v.i 186.visible
push.l 3717328137821
pop.v.l self.blconwd
pushi.e 0
pop.v.i self.talktime
push.v self.sprite_height
pop.v.v self.ht
push.v self.sprite_width
pop.v.v self.wd
pushi.e 0
pop.v.i self.itemuse
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [end]

:[1]
pushi.e 1
pop.v.i self.murder
pushi.e -800
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
push.i -90000
pop.v.i self.mercymod

:[end]