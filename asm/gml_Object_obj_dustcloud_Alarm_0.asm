.localvar 0 arguments

:[0]
push.d 0.8
pop.v.d self.friction
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
push.v self.rightside
push.d 0.75
cmp.d.v LT
bf [2]

:[1]
pushi.e 180
pop.v.i self.direction

:[2]
push.v self.rightside
push.d 1.25
cmp.d.v GT
bf [4]

:[3]
pushi.e 0
pop.v.i self.direction

:[4]
push.v self.topside
push.d 1.25
cmp.d.v GT
bf [6]

:[5]
push.v self.rightside
push.d 1.25
cmp.d.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 45
pop.v.i self.direction

:[9]
push.v self.topside
push.d 1.25
cmp.d.v GT
bf [12]

:[10]
push.v self.rightside
push.d 0.75
cmp.d.v GT
bf [12]

:[11]
push.v self.rightside
push.d 1.25
cmp.d.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 90
pop.v.i self.direction

:[15]
push.v self.topside
push.d 1.25
cmp.d.v GT
bf [17]

:[16]
push.v self.rightside
push.d 0.75
cmp.d.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 135
pop.v.i self.direction

:[20]
push.v self.topside
push.d 0.75
cmp.d.v LT
bf [22]

:[21]
push.v self.rightside
push.d 1.25
cmp.d.v GT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 315
pop.v.i self.direction

:[25]
push.v self.topside
push.d 0.75
cmp.d.v LT
bf [28]

:[26]
push.v self.rightside
push.d 0.75
cmp.d.v GT
bf [28]

:[27]
push.v self.rightside
push.d 1.25
cmp.d.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 270
pop.v.i self.direction

:[31]
push.v self.topside
push.d 0.75
cmp.d.v LT
bf [33]

:[32]
push.v self.rightside
push.d 0.75
cmp.d.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 235
pop.v.i self.direction

:[36]
push.v self.direction
neg.v
pop.v.v self.direction
pushi.e 8
pop.v.i self.speed

:[end]