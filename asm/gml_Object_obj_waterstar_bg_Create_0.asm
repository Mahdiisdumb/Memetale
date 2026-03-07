.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.f_test
pushi.e 0
pop.v.i self.g_heart
push.v 1576.x
pop.v.v self.rememberx
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.rememberview
pushi.e 300
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 300
pop.v.i 1576.x
pushi.e 1
pop.v.i self.size
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.size
pop.v.v self.scrollspeed
push.v self.xstart
pop.v.v self.xhome
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [17]

:[1]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
push.v self.x
pushi.e 350
add.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
add.i.v
pop.v.v self.xhome

:[3]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [5]

:[4]
push.v self.x
pushi.e 350
sub.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
sub.i.v
pop.v.v self.xhome

:[5]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
push.v self.x
pushi.e 350
add.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
add.i.v
pop.v.v self.xhome

:[7]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [9]

:[8]
push.v self.x
pushi.e 350
sub.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
sub.i.v
pop.v.v self.xhome

:[9]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.v self.x
pushi.e 350
add.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
add.i.v
pop.v.v self.xhome

:[11]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [13]

:[12]
push.v self.x
pushi.e 350
sub.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
sub.i.v
pop.v.v self.xhome

:[13]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
push.v self.x
pushi.e 350
add.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
add.i.v
pop.v.v self.xhome

:[15]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [17]

:[16]
push.v self.x
pushi.e 350
sub.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
sub.i.v
pop.v.v self.xhome

:[17]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [25]

:[18]
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [24]

:[19]
push.v self.x
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
cmp.v.v LT
bf [21]

:[20]
push.v self.x
pushi.e 350
add.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
add.i.v
pop.v.v self.xhome

:[21]
push.v self.x
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
cmp.v.v GT
bf [23]

:[22]
push.v self.x
pushi.e 350
sub.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
sub.i.v
pop.v.v self.xhome

:[23]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [19]

:[24]
popz.i

:[25]
push.v self.xhome
pop.v.v self.x
push.v self.rememberx
pop.v.v 1576.x

:[end]