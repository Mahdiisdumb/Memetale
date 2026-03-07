.localvar 0 arguments

:[0]
pushi.e 1
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[1]
push.v self.counter
push.v self.num
push.v self.trip
mul.v.v
cmp.v.v EQ
bf [3]

:[2]
push.v self.num
push.v self.maxnum
cmp.v.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.add_dir
push.v self.num
push.v self.maxnum
div.v.v
pushi.e 360
mul.i.v
push.v self.side
mul.v.v
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.add_dir
push.v self.num
push.v self.maxnum
div.v.v
pushi.e 360
mul.i.v
push.v self.side
mul.v.v
add.v.v
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 1654
conv.i.v
push.v self.centery
push.v self.yy
add.v.v
push.v self.centerx
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.num
conv.v.i
pop.v.v [array]self.spinbullet
pushi.e 2
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.spinbullet
conv.v.i
pop.v.i [stacktop]self.trick
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num

:[6]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[7]
popz.i

:[end]