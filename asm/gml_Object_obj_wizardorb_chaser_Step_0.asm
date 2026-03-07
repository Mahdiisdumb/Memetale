.localvar 0 arguments

:[0]
push.v self.col
pushi.e 1
sub.i.v
pop.v.v self.col
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.first
pushi.e 1
sub.i.v
pop.v.v self.first
push.v self.first
pushi.e 0
cmp.i.v LT
bf [9]

:[1]
push.d 0.3
pop.v.d self.turnamt
push.v self.zap
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.d 0.6
pop.v.d self.turnamt

:[3]
push.v self.zap
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.pop
pushi.e 1
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.d 0.5
pop.v.d self.turnamt

:[8]
b [10]

:[9]
push.d 0.2
pop.v.d self.turnamt

:[10]
push.v 744.y
push.v 744.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.newdir
push.v self.hspeed
push.v self.newdir
push.v self.turnamt
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
push.v self.newdir
push.v self.turnamt
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.vspeed
push.v self.zap
pushi.e 0
cmp.i.v EQ
bf [13]

:[11]
push.v self.speed
pushi.e 6
cmp.i.v GT
bf [13]

:[12]
pushi.e 6
pop.v.i self.speed

:[13]
push.v self.zap
pushi.e 1
cmp.i.v EQ
bf [19]

:[14]
push.v self.speed
pushi.e 7
cmp.i.v GT
bf [16]

:[15]
pushi.e 7
pop.v.i self.speed

:[16]
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [19]

:[17]
push.v self.speed
pushi.e 6
cmp.i.v GT
bf [19]

:[18]
pushi.e 6
pop.v.i self.speed

:[19]
push.v self.zap
pushi.e 2
cmp.i.v EQ
bf [22]

:[20]
push.v self.speed
pushi.e 7
cmp.i.v GT
bf [22]

:[21]
pushi.e 7
pop.v.i self.speed

:[22]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 6
add.i.v
cmp.v.v GT
bf [24]

:[23]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v self.x

:[24]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
sub.i.v
cmp.v.v LT
bf [26]

:[25]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 2
add.i.v
pop.v.v self.x

:[26]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 6
add.i.v
cmp.v.v GT
bf [28]

:[27]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 15
sub.i.v
pop.v.v self.y

:[28]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
sub.i.v
cmp.v.v LT
bf [30]

:[29]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 2
add.i.v
pop.v.v self.y

:[30]
push.v self.king
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
push.v self.zap
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [end]

:[34]
push.v 744.x
push.v 744.xprevious
cmp.v.v EQ
bf [36]

:[35]
push.v 744.y
push.v 744.yprevious
cmp.v.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [44]

:[38]
push.v global.turntimer
pushi.e 1
add.i.v
pop.v.v global.turntimer
push.v self.time
pushi.e 1
add.i.v
pop.v.v self.time
push.v self.time
pushi.e 450
cmp.i.v GT
bf [40]

:[39]
push.v self.heal
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 400
pop.v.i 607.mercymod
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 457
push.v self.object_index
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.object_index
conv.v.i
pop.v.i [stacktop]self.heal
pushi.e -3
conv.i.v
call.i caster_pause(argc=1)
popz.v

:[43]
b [end]

:[44]
push.v self.heal
pushi.e 1
cmp.i.v EQ
bf [end]

:[45]
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [48]

:[46]
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v GT
bf [48]

:[47]
pushglb.v global.maxhp
pop.v.v global.hp

:[48]
pushi.e -5
pushi.e 393
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [50]

:[49]
pushi.e -5
pushi.e 393
push.v [array]global.flag
call.i caster_free(argc=1)
popz.v

:[50]
pushi.e -3
conv.i.v
call.i caster_resume(argc=1)
popz.v
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
push.v self.object_index
conv.v.i
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]

:[end]