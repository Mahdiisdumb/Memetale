.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 180
pop.v.i self.direction

:[2]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 120
pop.v.i self.direction

:[4]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 76
pop.v.i self.direction

:[6]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.direction

:[8]
push.v self.image_index
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 300
pop.v.i self.direction

:[10]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 230
pop.v.i self.direction

:[12]
pushi.e 13
pop.v.i self.speed
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 2
pop.v.i self.gravity
push.d 0.05
pop.v.d self.friction

:[end]