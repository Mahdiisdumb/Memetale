.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
push.v self.throw
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.throw
pushi.e 1072
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
popz.v

:[5]
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [end]

:[6]
pushi.e 0
pop.v.i self.image_speed

:[end]