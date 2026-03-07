.localvar 0 arguments

:[0]
push.v self.cl
pushi.e 4
cmp.i.v EQ
bf [29]

:[1]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.y
push.v self.w_d
cmp.v.v GT
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
push.v self.w_d
pop.v.v self.y
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction
b [8]

:[7]
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction

:[8]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.x
push.v self.w_r
cmp.v.v GT
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.v self.w_r
pop.v.v self.x
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction
b [15]

:[14]
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction

:[15]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [17]

:[16]
push.v self.y
push.v self.w_u
cmp.v.v LT
b [18]

:[17]
push.e 0

:[18]
bf [22]

:[19]
push.v self.w_u
pop.v.v self.y
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction
b [22]

:[21]
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction

:[22]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [24]

:[23]
push.v self.x
push.v self.w_l
cmp.v.v LT
b [25]

:[24]
push.e 0

:[25]
bf [29]

:[26]
push.v self.w_l
pop.v.v self.x
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction
b [29]

:[28]
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction

:[29]
push.v 1575.left
conv.v.b
bf [31]

:[30]
push.v self.w_l
pop.v.v self.x

:[31]
push.v 1575.right
conv.v.b
bf [33]

:[32]
push.v self.w_r
pop.v.v self.x

:[33]
push.v 1575.up
conv.v.b
bf [35]

:[34]
push.v self.w_u
pop.v.v self.y

:[35]
push.v 1575.down
conv.v.b
bf [end]

:[36]
push.v self.w_d
pop.v.v self.y

:[end]