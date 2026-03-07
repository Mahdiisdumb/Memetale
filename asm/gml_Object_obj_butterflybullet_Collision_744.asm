.localvar 0 arguments

:[0]
push.v self.green
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i scr_damagestandard(argc=5)
popz.v

:[2]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 395
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.s "obj_butterflybullet_102"@10855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v 395.mercymod
pushi.e 40
add.i.v
pop.v.v 395.mercymod

:[5]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [7]

:[6]
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp

:[7]
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
pushi.e 20
pop.v.i global.turntimer

:[end]