.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pushi.e 400
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v self.hspeed
push.d 0.2
sub.d.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.d 0.1
pop.v.d self.image_speed
pushi.e -1
pop.v.i self.hspeed
pushi.e 3
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 7
pop.v.i self.con

:[14]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [17]

:[15]
push.v self.x
pushi.e 800
cmp.i.v GT
bf [17]

:[16]
pushi.e 8
pop.v.i self.con
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.flower
pushi.e 432
push.v self.flower
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.flower
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.flower
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.flower
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.flower
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e -3
pop.v.i self.hspeed

:[17]
push.v self.con
pushi.e 7
cmp.i.v GT
bf [19]

:[18]
push.v self.con
pushi.e 10
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.x
pushi.e 20
sub.i.v
push.v self.flower
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 20
sub.i.v
push.v self.flower
conv.v.i
pop.v.v [stacktop]self.y

:[22]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [26]

:[23]
push.v self.x
pushi.e 380
cmp.i.v LT
bf [26]

:[24]
push.v self.hspeed
push.d 0.1
add.d.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 0
cmp.i.v GTE
bf [26]

:[25]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 9
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [29]

:[27]
push.v self.flower
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.x
push.v self.flower
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.d 0.25
add.d.v
pop.i.v [stacktop]self.y
push.v self.flower
conv.v.i
push.v [stacktop]self.y
push.v self.y
pushi.e 6
sub.i.v
cmp.v.v GT
bf [29]

:[28]
pushi.e 11
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[29]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 13
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[31]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 15
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[33]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [35]

:[34]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster
pushi.e 8
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.image_speed
pushi.e 17
pop.v.i self.con

:[35]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [37]

:[36]
push.v self.x
pushi.e 700
cmp.i.v GT
b [38]

:[37]
push.e 0

:[38]
bf [end]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[end]