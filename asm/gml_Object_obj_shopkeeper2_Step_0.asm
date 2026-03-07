.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.d
pushi.e 0
pop.v.i self.go
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.go

:[3]
push.v self.pos
pushi.e 6
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.go

:[5]
push.v self.go
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.pos
pushi.e 3
cmp.i.v GTE
bf [8]

:[7]
push.v self.ystart
pushi.e 2
add.i.v
pop.v.v self.y
pushi.e 2
pop.v.i self.armx

:[8]
push.v self.pos
pushi.e 6
cmp.i.v GTE
bf [10]

:[9]
push.v self.ystart
pushi.e 4
add.i.v
pop.v.v self.y
pushi.e 4
pop.v.i self.armx

:[10]
push.v self.pos
pushi.e 9
cmp.i.v GTE
bf [12]

:[11]
push.v self.ystart
pushi.e 2
add.i.v
pop.v.v self.y
pushi.e 2
pop.v.i self.armx

:[12]
push.v self.pos
pushi.e 12
cmp.i.v GTE
bf [14]

:[13]
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.pos
pushi.e 0
pop.v.i self.armx

:[14]
push.v self.pos
pushi.e 1
add.i.v
pop.v.v self.pos

:[end]