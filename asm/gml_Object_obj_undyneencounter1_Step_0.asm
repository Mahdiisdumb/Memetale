.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[2]
push.v self.cn
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v 1576.x
push.v self.x
cmp.v.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i global.interact
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.d 0.1
pop.v.d self.cn
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ou
push.d 0.05
push.v self.ou
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1365
conv.i.v
pushi.e -220
conv.i.v
push.v self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 1
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1539
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -90
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 24
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d -0.3
push.v self.ar
conv.v.i
pop.v.d [stacktop]self.friction

:[8]
push.v self.cn
push.d 0.1
cmp.d.v EQ
bf [13]

:[9]
push.v self.ar
conv.v.i
push.v [stacktop]self.y
pushi.e 160
cmp.i.v GT
bf [13]

:[10]
pushi.e 0
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 1541
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.ar
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.ar
conv.v.i
push.v [stacktop]self.vspeed
add.v.v
pop.i.v [stacktop]self.y
pushi.e 0
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i scr_shake(argc=3)
popz.v
push.d 0.2
pop.v.d self.cn
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
conv.i.v
pushi.e 180
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 200
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 220
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.yad
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [12]

:[11]
pushi.e 1365
conv.i.v
pushi.e 210
push.v self.yad
pushi.e 6
mul.i.v
sub.v.i
pushi.e 50
push.v self.yad
sub.v.i
call.i instance_create(argc=3)
pop.v.v self.ar2
pushi.e 1
push.v self.ar2
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1541
push.v self.ar2
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.yad
pushi.e 2
add.i.v
pop.v.v self.yad
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [11]

:[12]
popz.i

:[13]
push.v self.cn
push.d 1.2
cmp.d.v EQ
bf [19]

:[14]
push.v self.ar
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.02
cmp.d.v GT
bf [16]

:[15]
push.v self.ar
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[16]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 10
cmp.i.v GT
bf [18]

:[17]
pushi.e -1
push.l 0
conv.l.i
dup.i 1
push.v [array]self.view_yview
pushi.e 5
sub.i.v
pop.i.v [array]self.view_yview
b [19]

:[18]
pushi.e 2
pop.v.i self.cn

:[19]
push.v self.cn
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ushock
call.i caster_play(argc=3)
popz.v
pushi.e 3
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.cn
pushi.e 3
cmp.i.v EQ
bf [24]

:[22]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v LT
bf [24]

:[23]
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.05
add.d.v
pop.i.v [stacktop]self.image_alpha

:[24]
push.v self.cn
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
push.v self.usong
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushglb.v global.armor
pushi.e -5
pushi.e 77
pop.v.v [array]global.flag
pushi.e 5
pop.v.i self.cn

:[26]
push.v self.cn
pushi.e 5
cmp.i.v EQ
bf [28]

:[27]
pushi.e 4
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 6
pop.v.i self.cn
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.cn
pushi.e 7
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1047
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.sp
pushi.e 8
pop.v.i self.cn

:[30]
push.v self.cn
pushi.e 7
cmp.i.v GT
bf [32]

:[31]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 24
add.i.v
push.v self.sp
conv.v.i
pop.v.v [stacktop]self.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.sp
conv.v.i
pop.v.v [stacktop]self.y

:[32]
push.v self.cn
pushi.e 8
cmp.i.v EQ
bf [44]

:[33]
push.v self.stk
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v LT
bf [35]

:[34]
push.v self.stk
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha

:[35]
push.v self.stopper
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i self.cn
pushi.e 0
pop.v.i self.stopper

:[37]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 80
add.i.v
cmp.v.v GT
bf [39]

:[38]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
cmp.v.v LT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 9
pop.v.i self.cn

:[42]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 60
sub.i.v
cmp.v.v LT
bf [44]

:[43]
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 9
pop.v.i self.cn

:[44]
push.v self.cn
pushi.e 10
cmp.i.v EQ
bf [51]

:[45]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 80
add.i.v
cmp.v.v GT
bt [47]

:[46]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 60
sub.i.v
cmp.v.v LT
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
pushi.e 8
pop.v.i self.cn
b [51]

:[50]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 8
pop.v.i self.cn

:[51]
push.v self.cn
pushi.e 9
cmp.i.v EQ
bf [end]

:[52]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 0
cmp.i.v LTE
bf [end]

:[53]
pushi.e 10
pop.v.i self.cn

:[end]