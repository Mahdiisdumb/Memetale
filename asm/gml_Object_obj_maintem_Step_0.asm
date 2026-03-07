.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.adjust
push.v self.control
pushi.e 1
cmp.i.v EQ
bf [17]

:[1]
push.v 1575.right
conv.v.b
bf [3]

:[2]
push.v self.hspeed
push.d 0.2
add.d.v
pop.v.v self.hspeed

:[3]
push.v 1575.left
conv.v.b
bf [5]

:[4]
push.v self.hspeed
push.d 0.2
sub.d.v
pop.v.v self.hspeed

:[5]
push.v 1575.down
conv.v.b
bf [7]

:[6]
push.v self.height
pushi.e 4
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.height
pushi.e 1
sub.i.v
pop.v.v self.height
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[10]
push.v 1575.up
conv.v.b
bf [12]

:[11]
push.v self.height
pushi.e 1
add.i.v
pop.v.v self.height
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[12]
pushi.e 0
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [14]

:[13]
push.v self.length
pushi.e 1
add.i.v
pop.v.v self.length
push.v self.leg3
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
add.i.v
pop.i.v [stacktop]self.x
push.v self.leg4
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
add.i.v
pop.i.v [stacktop]self.x

:[14]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [16]

:[15]
push.v self.length
pushi.e 1
sub.i.v
pop.v.v self.length
push.v self.leg3
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x
push.v self.leg4
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x

:[16]
b [24]

:[17]
push.v 744.x
push.v 744.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.leg1
conv.v.i
push.v [stacktop]self.x
push.v self.leg4
conv.v.i
push.v [stacktop]self.x
add.v.v
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [19]

:[18]
pushi.e 1
pop.v.i self.adjust
push.v self.hspeed
push.v self.adjustspeed
sub.v.v
pop.v.v self.hspeed
push.v self.leg1
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.adjustspeed
sub.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg2
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.adjustspeed
sub.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg3
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.adjustspeed
sub.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg4
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.adjustspeed
sub.v.v
pop.i.v [stacktop]self.hspeed

:[19]
push.v 744.x
push.v 744.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.leg1
conv.v.i
push.v [stacktop]self.x
push.v self.leg4
conv.v.i
push.v [stacktop]self.x
add.v.v
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [21]

:[20]
pushi.e 1
pop.v.i self.adjust
push.v self.hspeed
push.v self.adjustspeed
add.v.v
pop.v.v self.hspeed
push.v self.leg1
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.adjustspeed
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg2
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.adjustspeed
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg3
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.adjustspeed
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg4
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.adjustspeed
add.v.v
pop.i.v [stacktop]self.hspeed

:[21]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
pop.v.v self.hadd
push.v self.hspeed
call.i abs(argc=1)
push.d 0.4
cmp.d.v LT
bf [23]

:[22]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.hadd
push.d 1.5
mul.d.v
pop.v.v self.hadd

:[23]
push.v self.hspeed
push.v self.hadd
add.v.v
pop.v.v self.hspeed
push.v self.leg1
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.hadd
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg2
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.hadd
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg3
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.hadd
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.leg4
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.hadd
add.v.v
pop.i.v [stacktop]self.hspeed

:[24]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [26]

:[25]
call.i instance_destroy(argc=0)
popz.v
pushi.e 3
pop.v.i global.mnfight

:[26]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 63
add.i.v
push.v self.x
pushi.e 50
add.i.v
push.v self.length
add.v.v
push.v self.y
pushi.e 36
add.i.v
push.v self.x
pushi.e 13
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[27]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]