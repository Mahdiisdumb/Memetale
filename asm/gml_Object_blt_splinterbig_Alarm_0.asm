.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [3]

:[2]
pushi.e 625
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blt
push.v self.dmg
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.i
pushi.e 40
mul.i.v
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]