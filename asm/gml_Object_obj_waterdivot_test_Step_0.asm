.localvar 0 arguments

:[0]
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.sinerfactor
mul.v.v
add.v.v
pop.v.v self.x
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [3]

:[1]
pushi.e -10
pop.v.i self.x
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2300
pop.v.i self.x

:[3]
pushbltn.v self.room
pushi.e 82
cmp.i.v EQ
bf [end]

:[4]
push.v self.y
pushi.e 50
cmp.i.v LTE
bf [7]

:[5]
push.v self.x
pushi.e 460
cmp.i.v GTE
bf [7]

:[6]
push.v self.moved
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.hspeed
neg.v
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.moved

:[10]
push.v self.y
pushi.e 70
cmp.i.v LTE
bf [13]

:[11]
push.v self.x
pushi.e 480
cmp.i.v GTE
bf [13]

:[12]
push.v self.moved
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.hspeed
neg.v
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.moved

:[16]
push.v self.y
pushi.e 90
cmp.i.v LTE
bf [19]

:[17]
push.v self.x
pushi.e 500
cmp.i.v GTE
bf [19]

:[18]
push.v self.moved
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.hspeed
neg.v
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.moved

:[22]
push.v self.y
pushi.e -15
cmp.i.v LTE
bf [end]

:[23]
pushi.e 0
pop.v.i self.moved
pushi.e -10
pop.v.i self.x
push.d 1.5
pop.v.d self.hspeed
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed

:[end]