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
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bt [8]

:[7]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
b [9]

:[8]
push.e 1

:[9]
bf [16]

:[10]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v NEQ
bf [16]

:[11]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
call.i abs(argc=1)
pushi.e 15
cmp.i.v LTE
bf [13]

:[12]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.y
b [16]

:[13]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [15]

:[14]
push.v self.y
pushi.e 15
sub.i.v
pop.v.v self.y
b [16]

:[15]
push.v self.y
pushi.e 15
add.i.v
pop.v.v self.y

:[16]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 5
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v self.size
push.v self.image_xscale
push.v self.size
cmp.v.v NEQ
bf [23]

:[17]
push.v self.size
push.v self.image_xscale
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LTE
bf [19]

:[18]
push.v self.size
pop.v.v self.image_xscale

:[19]
push.v self.image_xscale
push.v self.size
cmp.v.v GT
bf [21]

:[20]
push.v self.image_xscale
pushi.e 6
sub.i.v
pop.v.v self.image_xscale

:[21]
push.v self.image_xscale
push.v self.size
cmp.v.v LT
bf [23]

:[22]
push.v self.image_xscale
pushi.e 6
add.i.v
pop.v.v self.image_xscale

:[23]
push.v self.instant
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.y

:[25]
push.v self.instaborder
pushi.e 1
cmp.i.v EQ
bf [end]

:[26]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.image_xscale

:[end]