.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.s
pushi.e 40
pop.v.i self.sf
pushi.e 15
pop.v.i self.sp
pushi.e 0
pop.v.i self.s2
pushi.e 40
pop.v.i self.sf2
pushi.e 88
pop.v.i self.s3
pushi.e 0
pop.v.i self.image_speed
pushi.e 20
pop.v.i self.lightning_timer
pushi.e 0
pop.v.i self.shake
push.v self.x
pop.v.v self.memx
push.v self.y
pop.v.v self.memy
pushi.e 700
pop.v.i self.life
pushi.e 0
pop.v.i self.movetype
pushi.e 0
pop.v.i self.i
pushi.e 2
pop.v.i self.num
push.v self.num
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 420
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.kid
push.v self.i
pushi.e 360
mul.i.v
push.v self.num
div.v.v
call.i degtorad(argc=1)
pop.v.v self.greg
push.v self.x
push.v self.greg
call.i sin(argc=1)
push.v self.sf2
mul.v.v
add.v.v
pushi.e 14
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.kid
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.greg
call.i cos(argc=1)
push.v self.sf2
mul.v.v
add.v.v
pushi.e 15
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.kid
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i

:[end]