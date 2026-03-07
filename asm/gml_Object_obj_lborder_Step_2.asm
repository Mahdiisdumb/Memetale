.localvar 0 arguments

:[0]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v NEQ
bf [6]

:[1]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
call.i abs(argc=1)
pushi.e 15
cmp.i.v LTE
bf [3]

:[2]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.x
b [6]

:[3]
push.v self.x
pushi.e -5
pushi.e 0
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
bf [22]

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
b [22]

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
push.v 760.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [14]

:[13]
push.v 762.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.y
pushi.e 15
sub.i.v
pop.v.v self.y

:[17]
push.v 760.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
bf [19]

:[18]
push.v 762.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.y
pushi.e 15
add.i.v
pop.v.v self.y

:[22]
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
call.i round(argc=1)
pop.v.v self.size
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bt [24]

:[23]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.y
push.v self.image_yscale
pushi.e 5
mul.i.v
add.v.v
cmp.v.v GT
b [25]

:[24]
push.e 1

:[25]
bf [43]

:[26]
push.v self.image_yscale
push.v self.size
cmp.v.v NEQ
bf [43]

:[27]
push.v self.size
push.v self.image_yscale
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LTE
bf [29]

:[28]
push.v self.size
pop.v.v self.image_yscale

:[29]
push.v self.image_yscale
push.v self.size
cmp.v.v GT
bf [31]

:[30]
push.v self.image_yscale
pushi.e 3
sub.i.v
pop.v.v self.image_yscale

:[31]
push.v self.image_yscale
push.v self.size
cmp.v.v LT
bf [33]

:[32]
push.v self.image_yscale
pushi.e 3
add.i.v
pop.v.v self.image_yscale

:[33]
push.v 760.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [35]

:[34]
push.v 762.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.v self.image_yscale
pushi.e 3
add.i.v
pop.v.v self.image_yscale

:[38]
push.v 760.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
bf [40]

:[39]
push.v 762.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v LT
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.v self.image_yscale
pushi.e 3
sub.i.v
pop.v.v self.image_yscale

:[43]
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

:[44]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.image_yscale

:[end]