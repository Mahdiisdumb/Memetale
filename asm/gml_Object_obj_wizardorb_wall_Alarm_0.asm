.localvar 0 arguments

:[0]
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 365
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.cross
push.d 3.5
push.v self.cross
conv.v.i
pop.v.d [stacktop]self.speed
push.v 744.y
push.v 744.x
call.i distance_to_point(argc=2)
pushi.e 190
cmp.i.v GT
bf [2]

:[1]
push.d 5.5
push.v self.cross
conv.v.i
pop.v.d [stacktop]self.speed

:[2]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.cross
conv.v.i
dup.i 0
push.v [stacktop]self.direction
pushi.e 15
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.i.v [stacktop]self.direction
push.d 0.015
push.v self.cross
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 200
push.v self.cross
conv.v.i
pop.v.i [stacktop]self.exist
push.v self.dmg
push.v self.cross
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [4]

:[3]
push.v self.cross
conv.v.i
dup.i 0
push.v [stacktop]self.direction
pushi.e 10
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.i.v [stacktop]self.direction
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.d 2.8
push.v self.cross
conv.v.i
pop.v.d [stacktop]self.speed

:[4]
push.v self.alt
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.d 0.01
push.v self.cross
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 3
push.v self.cross
conv.v.i
pop.v.i [stacktop]self.speed

:[end]