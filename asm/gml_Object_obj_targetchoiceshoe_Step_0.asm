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
push.v self.xxx
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
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

:[8]
push.v self.image_speed
pushi.e 0
cmp.i.v EQ
bf [19]

:[9]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [19]

:[10]
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
bf [12]

:[11]
pushi.e 1
pop.v.i self.bonusfactor

:[12]
push.v 739.sprite_width
push.v self.bonusfactor
sub.v.v
push.v 739.sprite_width
div.v.v
pop.v.v global.stretch
push.v self.bonusfactor
pushi.e 12
cmp.i.v LTE
bf [14]

:[13]
pushglb.v global.damage
push.d 2.2
mul.d.v
call.i round(argc=1)
pop.v.v global.damage

:[14]
push.v self.bonusfactor
pushi.e 12
cmp.i.v GT
bf [16]

:[15]
pushglb.v global.damage
pushglb.v global.stretch
mul.v.v
pushi.e 2
mul.i.v
call.i round(argc=1)
pop.v.v global.damage

:[16]
push.v self.mons
conv.v.i
pushenv [18]

:[17]
pushglb.v global.damage
pop.v.v self.takedamage

:[18]
popenv [17]
pushi.e 734
conv.i.v
push.v self.mons
conv.v.i
push.v [stacktop]self.y
pushi.e 5
sub.i.v
push.v self.mons
conv.v.i
push.v [stacktop]self.x
push.v self.mons
conv.v.i
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 5
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushglb.v global.mytarget
conv.v.i
pop.v.i [array]global.hurtanim
push.d 0.4
pop.v.d self.image_speed

:[19]
pushglb.v global.myfight
pushi.e 1
cmp.i.v NEQ
bf [end]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[end]