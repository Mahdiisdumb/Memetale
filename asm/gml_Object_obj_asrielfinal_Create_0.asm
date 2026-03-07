.localvar 0 arguments

:[0]
call.i scr_monstersetup(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 569
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 8
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.hurtanim
pushi.e 42
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
pushi.e 10
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shb
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.songcon
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i 752.spec
pushi.e 3
conv.i.v
call.i scr_getsprite(argc=1)
pop.v.v 752.sprite_index

:[2]
pushi.e 186
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 0
pop.v.i self.nextbattle
pushi.e 0
pop.v.i self.gocon
pushi.e 0
pop.v.i self.gotimer
pushi.e -5
pushi.e 505
push.v [array]global.flag
pushi.e -5
pushi.e 506
push.v [array]global.flag
add.v.v
pushi.e -5
pushi.e 507
push.v [array]global.flag
add.v.v
pushi.e -5
pushi.e 508
push.v [array]global.flag
add.v.v
pop.v.v self.total
push.v self.total
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_asrielfinal_58"@10260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.total
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_asrielfinal_59"@10262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.total
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_asrielfinal_60"@10264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.total
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_asrielfinal_61"@10266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.v self.total
pushi.e 4
cmp.i.v EQ
bf [15]

:[13]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [15]

:[14]
pushi.e 2
pushi.e -5
pushi.e 501
pop.v.i [array]global.flag

:[15]
pushi.e 0
pop.v.i self.savecon_a
pushi.e 0
pop.v.i self.savecon_a_x
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
pushi.e 3
pop.v.i global.faceemotion

:[17]
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.endcon
pushi.e 240
pop.v.i self.ht
pushi.e 10
pop.v.i self.wd
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[18]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.bmenucoord
pushi.e 3
pop.v.i global.mercy

:[end]