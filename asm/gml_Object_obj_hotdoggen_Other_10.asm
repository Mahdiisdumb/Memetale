.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.hdno
pushi.e 0
pop.v.i self.oncheck
pushi.e 1576
pop.v.i self.parent

:[1]
pushi.e 1275
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.y
push.v self.hdno
pushi.e 4
mul.i.v
sub.v.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
conv.v.b
bf [3]

:[2]
push.v self.hdno
pushi.e 1
add.i.v
pop.v.v self.hdno
b [1]

:[3]
pushi.e 1275
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.y
push.v self.hdno
pushi.e 4
mul.i.v
sub.v.v
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.hd
pushi.e 1576
push.v self.hd
conv.v.i
pop.v.i [stacktop]self.parent
pushi.e 1
push.v self.hdno
push.d 0.1
mul.d.v
sub.v.i
push.v self.hd
conv.v.i
pop.v.v [stacktop]self.friction
push.v self.hdno
pushi.e 4
mul.i.v
push.v self.hd
conv.v.i
pop.v.v [stacktop]self.relative
push.v self.negf
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
push.v self.hd
conv.v.i
push.v [stacktop]self.friction
push.d 0.1
cmp.d.v LT
bf [end]

:[5]
push.d 0.1
push.v self.hd
conv.v.i
pop.v.d [stacktop]self.friction

:[end]