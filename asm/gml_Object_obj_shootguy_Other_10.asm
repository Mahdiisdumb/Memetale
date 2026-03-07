.localvar 0 arguments

:[0]
push.v self.gridr
pushi.e 30
sub.i.v
pop.v.v self.i

:[1]
push.v self.i
push.v self.gridl
cmp.v.v GT
bf [end]

:[2]
push.v self.gridu
pushi.e 10
add.i.v
pop.v.v self.j

:[3]
push.v self.j
push.v self.gridd
cmp.v.v LT
bf [9]

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1244
conv.i.v
push.v self.j
push.v self.i
call.i collision_point(argc=5)
conv.v.b
bf [8]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1244
conv.i.v
push.v self.j
push.v self.i
call.i collision_point(argc=5)
conv.v.i
pushenv [7]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]

:[8]
push.v self.j
pushi.e 20
add.i.v
pop.v.v self.j
b [3]

:[9]
push.v self.i
pushi.e 20
sub.i.v
pop.v.v self.i
b [1]

:[end]