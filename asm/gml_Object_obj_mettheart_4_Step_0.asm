.localvar 0 arguments

:[0]
push.v self.life
pushi.e 1
sub.i.v
pop.v.v self.life
push.v self.life
pushi.e 1000
cmp.i.v LT
bf [2]

:[1]
push.v self.shake
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.shake

:[5]
push.v self.life
pushi.e 500
cmp.i.v LT
bf [7]

:[6]
push.v self.shake
pushi.e 2
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
pop.v.i self.shake

:[10]
push.v self.movetype
pushi.e 0
cmp.i.v EQ
bf [19]

:[11]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.xstart
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 60
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.newx
push.v self.ystart
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.newy
push.v self.newx
push.v self.newy
call.i distance_to_point(argc=2)
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.distspeed
push.v self.distspeed
push.v self.newy
push.v self.newx
call.i move_towards_point(argc=3)
popz.v
pushi.e 8
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.moving
push.d 0.5
pop.v.d self.image_speed

:[13]
push.v self.moving
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.chch
push.v 744.x
pushi.e 10
add.i.v
pop.v.v self.thisx
push.v 744.y
pushi.e 10
add.i.v
pop.v.v self.thisy
pushi.e 100
pop.v.i self.ltimer
pushi.e 0
pop.v.i self.speed
pushi.e 3
pop.v.i self.moving
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[15]
push.v self.moving
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.moving

:[17]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
push.v self.x
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.y
push.v self.shake
pushi.e 1
sub.i.v
pop.v.v self.shake

:[19]
push.v self.lightning_timer
pushi.e 1
add.i.v
pop.v.v self.lightning_timer
push.v self.ltimer
pushi.e 100
cmp.i.v GTE
bf [47]

:[20]
push.v self.ltimer
pushi.e 1
add.i.v
pop.v.v self.ltimer
push.v self.ltimer
pushi.e 100
cmp.i.v EQ
bt [24]

:[21]
push.v self.ltimer
pushi.e 102
cmp.i.v EQ
bt [24]

:[22]
push.v self.ltimer
pushi.e 104
cmp.i.v EQ
bt [24]

:[23]
push.v self.ltimer
pushi.e 106
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
push.d -0.1
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 8
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.thisy
push.v self.thisx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction

:[27]
push.v self.ltimer
pushi.e 108
cmp.i.v EQ
bt [31]

:[28]
push.v self.ltimer
pushi.e 110
cmp.i.v EQ
bt [31]

:[29]
push.v self.ltimer
pushi.e 112
cmp.i.v EQ
bt [31]

:[30]
push.v self.ltimer
pushi.e 114
cmp.i.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [36]

:[33]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
push.d -0.1
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 8
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.chch
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.v self.thisy
push.v self.thisx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 10
sub.i.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
b [36]

:[35]
push.v self.thisy
push.v self.thisx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 10
add.i.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction

:[36]
push.v self.ltimer
pushi.e 116
cmp.i.v EQ
bt [40]

:[37]
push.v self.ltimer
pushi.e 118
cmp.i.v EQ
bt [40]

:[38]
push.v self.ltimer
pushi.e 120
cmp.i.v EQ
bt [40]

:[39]
push.v self.ltimer
pushi.e 122
cmp.i.v EQ
b [41]

:[40]
push.e 1

:[41]
bf [45]

:[42]
pushi.e 434
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lt
push.d -0.1
push.v self.lt
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 8
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.chch
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.thisy
push.v self.thisx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 10
add.i.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
b [45]

:[44]
push.v self.thisy
push.v self.thisx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 10
sub.i.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction

:[45]
push.v self.ltimer
pushi.e 125
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pop.v.i self.ltimer

:[47]
push.v self.size
pushi.e 1
cmp.i.v GT
bf [50]

:[48]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.size
push.d 0.5
sub.d.v
pop.v.v self.size
push.v self.size
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 0
pop.v.i self.image_index

:[50]
push.v self.lastcon
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
b [53]

:[52]
push.e 0

:[53]
bf [57]

:[54]
pushi.e 403
pushenv [56]

:[55]
pushi.e 0
pop.v.i self.active

:[56]
popenv [55]
pushi.e 1
pop.v.i self.movetype
pushi.e 400
pop.v.i self.lightning_timer
pushi.e 0
pop.v.i self.visible
pushi.e 6
pop.v.i global.faceemotion
pushi.e 2
pop.v.i 409.pause
pushi.e 2
pop.v.i 409.hurt
pushi.e 2
pop.v.i 409.dsf
pushi.e 0
pop.v.i 415.dark
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 0
pop.v.i 744.shot
pushi.e 900
pop.v.i global.turntimer
pushi.e 450
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mtb
push.v self.xstart
push.v self.mtb
conv.v.i
pop.v.v [stacktop]self.homex
push.v self.ystart
push.v self.mtb
conv.v.i
pop.v.v [stacktop]self.homey
pushi.e 1
push.v self.mtb
conv.v.i
pop.v.i [stacktop]self.another
pushi.e 2
pop.v.i self.lastcon

:[57]
push.v self.lastcon
pushi.e 2
cmp.i.v GTE
bf [59]

:[58]
pushi.e 6
pop.v.i global.faceemotion
pushi.e 2
pop.v.i 409.hurt

:[59]
push.v self.lastcon
pushi.e 3
cmp.i.v EQ
bf [63]

:[60]
pushi.e 415
pushenv [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
popenv [61]
pushi.e 4
pop.v.i self.lastcon
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.lastcon
pushi.e 4
cmp.i.v EQ
bf [65]

:[64]
push.v 409.dsf
push.d 0.04
sub.d.v
pop.v.v 409.dsf

:[65]
push.v self.lastcon
pushi.e 5
cmp.i.v EQ
bf [end]

:[66]
pushi.e 50
pop.v.i 404.con
pushi.e -1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
call.i instance_destroy(argc=0)
popz.v

:[end]