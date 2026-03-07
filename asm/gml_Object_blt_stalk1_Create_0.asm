.localvar 0 arguments

:[0]
call.i scr_monstersum(argc=0)
pop.v.v self.sum
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -4
pop.v.i self.vspeed
pushi.e 671
conv.i.v
push.v self.y
pushi.e 25
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.a
pushi.e 1
push.v self.a
conv.v.i
pop.v.i [stacktop]self.c
pushi.e 671
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.a
pushi.e 671
conv.i.v
push.v self.y
pushi.e 75
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.a
pushi.e 1
push.v self.a
conv.v.i
pop.v.i [stacktop]self.c

:[2]
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [4]

:[3]
push.d 4.2
pop.v.d self.vspeed
pushi.e 671
conv.i.v
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.a
pushi.e 1
push.v self.a
conv.v.i
pop.v.i [stacktop]self.c
pushi.e 671
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.a
pushi.e 671
conv.i.v
push.v self.y
pushi.e 75
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.a
pushi.e 1
push.v self.a
conv.v.i
pop.v.i [stacktop]self.c

:[4]
pushi.e 0
pop.v.i self.xx
pushi.e 6
pop.v.i self.dmg
push.d 0.1
pop.v.d self.friction
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.sinr

:[end]