.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 1
push.v [array]self.pspeed
pushi.e 2
mul.i.v
pop.v.v self.image_angle
push.v self.lefter
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
push.v self.lefter
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [7]

:[4]
push.v self.hspeed
pushi.e -20
cmp.i.v GT
bf [6]

:[5]
push.v self.hspeed
pushi.e 3
sub.i.v
pop.v.v self.hspeed
b [7]

:[6]
push.v self.hspeed
push.d 0.4
sub.d.v
pop.v.v self.hspeed

:[7]
push.v self.lefter
pushi.e 2
cmp.i.v EQ
bf [10]

:[8]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 1
cmp.i.v GT
bf [10]

:[9]
pushi.e 0
pop.v.i self.hspeed
pushi.e 3
pop.v.i self.lefter

:[10]
push.v self.lefter
pushi.e 4
cmp.i.v EQ
bf [14]

:[11]
push.v self.hspeed
pushi.e 20
cmp.i.v LT
bf [13]

:[12]
push.v self.hspeed
pushi.e 4
add.i.v
pop.v.v self.hspeed
b [14]

:[13]
push.v self.hspeed
push.d 0.5
add.d.v
pop.v.v self.hspeed

:[14]
push.v self.lefter
pushi.e 5
cmp.i.v EQ
bf [25]

:[15]
push.v self.hspeed
pushi.e 2
sub.i.v
pop.v.v self.hspeed
push.v self.x
push.v self.remx
cmp.v.v LT
bf [17]

:[16]
push.v self.hspeed
pushi.e 3
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 3
pop.v.i self.hspeed

:[20]
push.v self.hspeed
pushi.e -1
cmp.i.v LT
bt [22]

:[21]
push.v self.x
push.v self.remx
cmp.v.v GTE
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
push.v self.remx
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed
pushi.e 16
pop.v.i self.lefter

:[25]
push.v self.hspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.pspeed
pushi.e 4
pop.v.i self.i

:[26]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [end]

:[27]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.pspeed
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pspeed
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [26]

:[end]