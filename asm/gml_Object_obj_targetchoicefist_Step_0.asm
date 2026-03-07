.localvar 0 arguments

:[0]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [3]

:[1]
push.v self.x
push.v 739.x
push.v 739.sprite_width
add.v.v
cmp.v.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.xxx

:[3]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [6]

:[4]
push.v self.x
push.v 739.x
cmp.v.v LT
bf [6]

:[5]
pushi.e 1
pop.v.i self.xxx

:[6]
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterinstance
pop.v.v self.mons
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd
push.v self.mons
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
push.v self.id
push.v self.mons
conv.v.i
pop.v.v [stacktop]self.trgtest

:[8]
push.v self.mons
conv.v.i
pushenv [10]

:[9]
push.v self.ht
push.v self.trgtest
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.wd
push.v self.trgtest
conv.v.i
pop.v.v [stacktop]self.wd

:[10]
popenv [9]
push.v self.image_speed
push.d 0.4
cmp.d.v GTE
bf [12]

:[11]
push.v self.punchtime
push.v self.maxpunchtime
cmp.v.v LT
b [13]

:[12]
push.e 0

:[13]
bf [36]

:[14]
push.v self.punchtime
pushi.e 1
add.i.v
pop.v.v self.punchtime
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [16]

:[15]
push.v self.punches
push.v self.maxpunches
cmp.v.v LT
b [17]

:[16]
push.e 0

:[17]
bf [24]

:[18]
pushi.e 733
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[19]
pushi.e 0
pop.v.i 733.visible
pushi.e 7
pushi.e 733
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e 733
pushi.e 1
pop.v.i [array]self.alarm

:[20]
push.v self.punches
pushi.e 1
add.i.v
pop.v.v self.punches
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
push.v self.punches
push.v self.maxpunches
cmp.v.v LT
bf [22]

:[21]
pushi.e 717
conv.i.v
push.v self.mons
conv.v.i
push.v [stacktop]self.y
push.v self.mons
conv.v.i
push.v [stacktop]self.ht
call.i random(argc=1)
add.v.v
push.v self.mons
conv.v.i
push.v [stacktop]self.x
push.v self.wd
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v

:[22]
push.v self.punches
push.v self.maxpunches
cmp.v.v EQ
bf [24]

:[23]
pushi.e 718
conv.i.v
push.v self.mons
conv.v.i
push.v [stacktop]self.y
push.v self.ht
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.mons
conv.v.i
push.v [stacktop]self.x
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[24]
push.v self.punchtime
push.v self.maxpunchtime
cmp.v.v EQ
bt [26]

:[25]
push.v self.punches
push.v self.maxpunches
cmp.v.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [36]

:[28]
push.v self.punches
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.xxx
b [36]

:[30]
pushi.e 10
pop.v.i global.damagetimer
push.v self.maxpunchtime
pushi.e 1
add.i.v
pop.v.v self.punchtime
pushglb.v global.damage
push.v self.punches
push.v self.maxpunches
div.v.v
mul.v.v
call.i ceil(argc=1)
pop.v.v global.damage
push.v self.mons
conv.v.i
pushenv [32]

:[31]
pushglb.v global.damage
pop.v.v self.takedamage

:[32]
popenv [31]
pushi.e 1
pushi.e -5
pushglb.v global.mytarget
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 733
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [36]

:[33]
pushi.e 733
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]

:[36]
push.v self.image_speed
pushi.e 0
cmp.i.v EQ
bf [45]

:[37]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [45]

:[38]
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterinstance
pop.v.v self.mons
pushi.e 0
pop.v.i self.hspeed
pushi.e 175
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.damage
pop.v.v global.damage
push.v global.damage
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v global.damage
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.myx
push.v 739.x
push.v 739.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.myperfectx
push.v self.myx
push.v self.myperfectx
sub.v.v
call.i abs(argc=1)
pop.v.v self.bonusfactor
push.v self.bonusfactor
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.bonusfactor

:[40]
push.v 739.sprite_width
push.v self.bonusfactor
sub.v.v
push.v 739.sprite_width
div.v.v
pop.v.v global.stretch
push.v self.bonusfactor
pushi.e 12
cmp.i.v LTE
bf [42]

:[41]
pushglb.v global.damage
push.d 2.1
mul.d.v
call.i round(argc=1)
pop.v.v global.damage

:[42]
push.v self.bonusfactor
pushi.e 12
cmp.i.v GT
bf [44]

:[43]
pushglb.v global.damage
pushglb.v global.stretch
mul.v.v
pushi.e 2
mul.i.v
call.i round(argc=1)
pop.v.v global.damage

:[44]
push.d 0.4
pop.v.d self.image_speed
pushi.e 733
conv.i.v
push.v self.mons
conv.v.i
push.v [stacktop]self.y
push.v self.ht
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.mons
conv.v.i
push.v [stacktop]self.x
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[45]
push.v self.xxx
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pop.v.i global.damage
pushi.e 5
pushi.e -5
pushglb.v global.mytarget
conv.v.i
pop.v.i [array]global.hurtanim
call.i instance_destroy(argc=0)
popz.v
exit.i

:[47]
pushglb.v global.myfight
pushi.e 1
cmp.i.v NEQ
bf [end]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[end]