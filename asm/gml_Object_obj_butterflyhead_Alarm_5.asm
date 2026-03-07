.localvar 0 arguments

:[0]
push.v self.factor
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 538
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.sm
pushi.e 744
push.v self.sm
conv.v.i
pop.v.i [stacktop]self.king
pushi.e -1
push.v self.sm
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
push.v self.sm
conv.v.i
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 160
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.sm
conv.v.i
pop.v.i [stacktop]self.speed
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i

:[end]