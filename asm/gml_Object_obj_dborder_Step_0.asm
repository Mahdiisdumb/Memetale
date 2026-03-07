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
pushi.e 1
add.i.v
pop.v.v self.size
push.v self.image_xscale
push.v self.size
cmp.v.v NEQ
bf [19]

:[13]
push.v self.size
push.v self.image_xscale
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LTE
bf [15]

:[14]
push.v self.size
pop.v.v self.image_xscale

:[15]
push.v self.image_xscale
push.v self.size
cmp.v.v GT
bf [17]

:[16]
push.v self.image_xscale
pushi.e 6
sub.i.v
pop.v.v self.image_xscale

:[17]
push.v self.image_xscale
push.v self.size
cmp.v.v LT
bf [19]

:[18]
push.v self.image_xscale
pushi.e 6
add.i.v
pop.v.v self.image_xscale

:[19]
push.v self.instaborder
pushi.e 1
cmp.i.v EQ
bf [end]

:[20]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.y
pushi.e 1
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
add.v.i
pop.v.v self.image_xscale

:[end]