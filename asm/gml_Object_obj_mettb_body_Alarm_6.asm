.localvar 0 arguments

:[0]
push.v self.noarm
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 329
conv.i.v
push.v self.y
push.v self.legh
sub.v.v
pushi.e 80
add.i.v
push.v self.siner
push.d 3.5
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 36
add.i.v
push.v self.siner
push.d 3.5
div.d.v
call.i sin(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.xhau1
pushi.e 329
conv.i.v
push.v self.y
push.v self.legh
sub.v.v
pushi.e 80
add.i.v
push.v self.siner
push.d 3.5
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 110
add.i.v
push.v self.siner
push.d 3.5
div.d.v
call.i sin(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.xhau2
push.v self.xhau2
conv.v.i
push.v [stacktop]self.hspeed
neg.v
push.v self.xhau2
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.depth
pushi.e 2
add.i.v
push.v self.xhau1
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.depth
pushi.e 2
add.i.v
push.v self.xhau2
conv.v.i
pop.v.v [stacktop]self.depth

:[2]
pushi.e 10
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[end]