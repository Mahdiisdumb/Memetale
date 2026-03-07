.localvar 0 arguments

:[0]
push.v self.movetype
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.xstart
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.shake
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s

:[3]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v self.memx
push.v self.shake
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.shake
sub.v.v
pop.v.v self.x
push.v self.memy
push.v self.shake
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.shake
sub.v.v
pop.v.v self.y
push.v self.shake
pushi.e 1
sub.i.v
pop.v.v self.shake

:[5]
push.v self.lightning_timer
pushi.e 1
add.i.v
pop.v.v self.lightning_timer
push.v self.lightning_timer
pushi.e 50
cmp.i.v GT
bf [7]

:[6]
push.v self.lightning_timer
pushi.e 60
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.ddir
push.d 0.5
pop.v.d self.image_speed

:[10]
push.v self.lightning_timer
pushi.e 60
cmp.i.v EQ
bf [14]

:[11]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[12]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.1
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 0
push.v self.i
pushi.e 360
mul.i.v
pushi.e 10
conv.i.d
div.d.v
add.v.i
push.v self.ddir
add.v.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [12]

:[13]
popz.i

:[14]
push.v self.lightning_timer
pushi.e 66
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[16]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.1
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 0
push.v self.i
push.d 0.5
add.d.v
pushi.e 360
mul.i.v
pushi.e 10
conv.i.d
div.d.v
add.v.i
push.v self.ddir
add.v.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [16]

:[17]
popz.i

:[18]
push.v self.lightning_timer
pushi.e 72
cmp.i.v EQ
bf [22]

:[19]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [21]

:[20]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.1
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 0
push.v self.i
pushi.e 360
mul.i.v
pushi.e 10
conv.i.d
div.d.v
add.v.i
push.v self.ddir
add.v.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [20]

:[21]
popz.i

:[22]
push.v self.movetype
pushi.e 99
cmp.i.v EQ
bf [43]

:[23]
push.v self.lightning_timer
pushi.e 110
cmp.i.v EQ
bf [27]

:[24]
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [26]

:[25]
pushi.e 1365
conv.i.v
pushi.e 100
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bb
pushi.e 572
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [25]

:[26]
popz.i

:[27]
push.v self.lightning_timer
pushi.e 110
cmp.i.v GT
bf [29]

:[28]
push.v self.lightning_timer
pushi.e 125
cmp.i.v LT
b [30]

:[29]
push.e 0

:[30]
bf [37]

:[31]
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [36]

:[32]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
push.v [stacktop]self.visible
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pop.v.i [stacktop]self.visible
b [35]

:[34]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pop.v.i [stacktop]self.visible

:[35]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [32]

:[36]
popz.i

:[37]
push.v self.lightning_timer
pushi.e 125
cmp.i.v EQ
bf [43]

:[38]
pushi.e 40
pop.v.i self.lightning_timer
pushi.e 0
pop.v.i self.i
pushi.e 7
dup.i 0
push.i 0
cmp.i.i LTE
bt [42]

:[39]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bb
conv.v.i
pushenv [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
popenv [40]
pushi.e 443
conv.i.v
pushi.e 100
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 25
mul.i.v
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.br
push.d -0.05
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.br
conv.v.i
dup.i 0
push.v [stacktop]self.vspeed
push.d 0.2
conv.d.v
call.i random(argc=1)
sub.v.v
pop.i.v [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [39]

:[42]
popz.i

:[43]
push.v self.lightning_timer
pushi.e 95
cmp.i.v EQ
bf [45]

:[44]
pushi.e 432
conv.i.v
pushi.e -20
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.mt
pushi.e 5
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 200
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.early
pushi.e 432
conv.i.v
pushi.e -20
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 25
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mt
pushi.e 5
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 200
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.early
pushi.e 2
push.v self.mt
conv.v.i
pop.v.i [stacktop]self.type

:[45]
push.v self.lightning_timer
pushi.e 130
cmp.i.v EQ
bf [47]

:[46]
pushi.e 36
pop.v.i self.lightning_timer

:[47]
push.v self.life
pushi.e 1
sub.i.v
pop.v.v self.life

:[end]