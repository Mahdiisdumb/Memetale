.localvar 0 arguments

:[0]
push.v self.parent
pushi.e 1
cmp.i.v EQ
bf [14]

:[1]
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 1.5
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.speed
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.g
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
bf [5]

:[2]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v GT
bf [4]

:[3]
pushi.e 0
pop.v.i self.g
b [5]

:[4]
pushi.e 1
pop.v.i self.g

:[5]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [9]

:[6]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
cmp.v.v GT
bf [8]

:[7]
pushi.e 1
pop.v.i self.g
b [9]

:[8]
pushi.e 0
pop.v.i self.g

:[9]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.rotdir

:[11]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e -1
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.rotdir

:[13]
call.i scr_perpendicular(argc=0)
pop.v.v self.startdir
push.v self.speed
pop.v.v self.startspeed

:[14]
push.d -0.1
pop.v.d self.friction
pushi.e 1
pop.v.i self.visible
push.v self.startdir
pop.v.v self.direction
push.v self.startspeed
pop.v.v self.speed

:[end]