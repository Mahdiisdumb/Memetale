.localvar 0 arguments

:[0]
push.v self.stage
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.valuindex
push.d 0.1667
add.d.v
pop.v.v self.valuindex

:[2]
push.v self.valuindex
push.d 9.2
cmp.d.v GT
bf [4]

:[3]
push.v self.stage
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 2
pop.v.i self.stage
pushi.e 1441
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[7]
push.v self.valuindex
pushi.e 11
cmp.i.v GTE
bf [end]

:[8]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.stage
pushi.e 0
pop.v.i self.valuindex

:[end]