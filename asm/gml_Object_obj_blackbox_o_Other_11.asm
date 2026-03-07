.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1244
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i collision_point(argc=5)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1242
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i collision_point(argc=5)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x

:[end]