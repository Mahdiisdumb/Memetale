.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.d 0.08
sub.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.06
sub.d.v
pop.v.v self.image_xscale

:[2]
push.v self.image_xscale
push.d 0.08
cmp.d.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 720
conv.i.v
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.hit
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 1
pop.v.i self.hit
push.v self.myscore
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i global.damage
pushi.e 5
pushi.e -5
pushglb.v global.mytarget
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 1
pop.v.i self.fade
exit.i

:[10]
push.v self.myscore
pushi.e 0
cmp.i.v GT
bf [end]

:[11]
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterinstance
pop.v.v self.mons
pushi.e 175
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.damage
push.v self.myscore
pushi.e 160
conv.i.d
div.d.v
pushi.e 4
conv.i.d
push.v self.num
div.v.d
mul.v.v
mul.v.v
pop.v.v self.damage
push.v self.damage
call.i round(argc=1)
pop.v.v self.damage
push.v self.damage
pop.v.v global.damage
push.v global.damage
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
pop.v.v global.damage
pushglb.v global.damage
push.v self.mons
conv.v.i
pop.v.v [stacktop]self.takedamage
pushi.e 2
pop.v.i global.stretch
pushi.e 100
pop.v.i self.ht
pushi.e 100
pop.v.i self.wd
push.v self.id
push.v self.mons
conv.v.i
pop.v.v [stacktop]self.trgtest
pushi.e 0
pop.v.i self.critter
push.v self.myscore
pushi.e 400
push.v self.num
pushi.e 4
conv.i.d
div.d.v
mul.v.i
cmp.v.v GT
bf [13]

:[12]
pushi.e 1
pop.v.i self.critter

:[13]
push.v self.mons
conv.v.i
pushenv [15]

:[14]
push.v self.ht
push.v self.trgtest
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.wd
push.v self.trgtest
conv.v.i
pop.v.v [stacktop]self.wd

:[15]
popenv [14]
pushglb.v global.weapon
pushi.e 25
cmp.i.v EQ
bf [21]

:[16]
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
push.v self.critter
pushi.e 1
cmp.i.v EQ
bf [20]

:[17]
pushi.e 718
pushenv [19]

:[18]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[19]
popenv [18]

:[20]
pushi.e 10
pop.v.i global.damagetimer

:[21]
pushglb.v global.weapon
pushi.e 49
cmp.i.v EQ
bf [27]

:[22]
pushi.e 728
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
push.v self.critter
pushi.e 1
cmp.i.v EQ
bf [26]

:[23]
pushi.e 728
pushenv [25]

:[24]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
popenv [24]

:[26]
pushi.e 20
pop.v.i global.damagetimer

:[27]
pushglb.v global.weapon
pushi.e 47
cmp.i.v EQ
bf [33]

:[28]
pushi.e 732
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
push.v self.critter
pushi.e 1
cmp.i.v EQ
bf [32]

:[29]
pushi.e 732
pushenv [31]

:[30]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[31]
popenv [30]

:[32]
pushi.e 20
pop.v.i global.damagetimer

:[33]
pushglb.v global.weapon
pushi.e 45
cmp.i.v EQ
bf [39]

:[34]
pushi.e 727
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
push.v self.critter
pushi.e 1
cmp.i.v EQ
bf [38]

:[35]
pushi.e 727
pushenv [37]

:[36]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[37]
popenv [36]

:[38]
pushi.e 24
pop.v.i global.damagetimer

:[39]
pushi.e 1
pushi.e -5
pushglb.v global.mytarget
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 1
pop.v.i self.fade

:[end]