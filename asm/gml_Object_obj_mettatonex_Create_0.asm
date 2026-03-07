.localvar 0 arguments

:[0]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "BossMet"@48718
conv.s.v
push.s "Mettaton"@6864
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 403
conv.i.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ratings
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 409
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 409
pop.v.i self.part1
pushi.e 409
pop.v.i self.mypart1
b [3]

:[2]
pushi.e 409
pop.v.i self.part1
push.v self.part1
pushi.e 116
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mypart1

:[3]
pushi.e 10
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 8
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.hurtanim
pushi.e 116
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
push.i -100000
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 1
pop.v.i 744.shot
pushi.e 2197
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.i
pushi.e 99
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[4]
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
bt [4]

:[5]
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
pop.v.i self.turns
pushi.e 0
pop.v.i self.qualify
pushi.e 200
pop.v.i self.ht
pushi.e 200
pop.v.i self.wd
pushi.e 186
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[end]