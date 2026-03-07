.localvar 0 arguments

:[0]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v NEQ
bf [6]

:[1]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
sub.v.v
call.i abs(argc=1)
pushi.e 15
cmp.i.v LTE
bf [3]

:[2]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.x
b [6]

:[3]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v GT
bf [5]

:[4]
push.v self.x
pushi.e 15
sub.i.v
pop.v.v self.x
b [6]

:[5]
push.v self.x
pushi.e 15
add.i.v
pop.v.v self.x

:[6]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v NEQ
bf [12]

:[7]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
sub.v.v
call.i abs(argc=1)
pushi.e 15
cmp.i.v LTE
bf [9]

:[8]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.y
b [12]

:[9]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [11]

:[10]
push.v self.y
pushi.e 15
sub.i.v
pop.v.v self.y
b [12]

:[11]
push.v self.y
pushi.e 15
add.i.v
pop.v.v self.y

:[12]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
sub.v.v
pushi.e 5
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.size
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v EQ
bt [14]

:[13]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.y
push.v self.image_yscale
pushi.e 5
mul.i.v
add.v.v
cmp.v.v GT
b [15]

:[14]
push.e 1

:[15]
bf [23]

:[16]
push.v self.image_yscale
push.v self.size
cmp.v.v NEQ
bf [23]

:[17]
push.v self.size
push.v self.image_yscale
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LTE
bf [19]

:[18]
push.v self.size
pop.v.v self.image_yscale

:[19]
push.v self.image_yscale
push.v self.size
cmp.v.v GT
bf [21]

:[20]
push.v self.image_yscale
pushi.e 3
sub.i.v
pop.v.v self.image_yscale

:[21]
push.v self.image_yscale
push.v self.size
cmp.v.v LT
bf [23]

:[22]
push.v self.image_yscale
pushi.e 3
add.i.v
pop.v.v self.image_yscale

:[23]
push.v 762.y
pop.v.v self.y
push.v 760.y
push.v 762.y
sub.v.v
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.image_yscale
push.v self.instaborder
pushi.e 1
cmp.i.v EQ
bf [end]

:[24]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
sub.v.v
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.image_yscale

:[end]