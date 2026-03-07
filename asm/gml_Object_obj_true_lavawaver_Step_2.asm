.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.init_band
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [20]

:[4]
pushbltn.v self.room
pushi.e 147
cmp.i.v EQ
bf [6]

:[5]
push.v 1576.x
pushi.e 800
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 800
pop.v.i self.x

:[9]
pushbltn.v self.room
pushi.e 145
cmp.i.v EQ
bf [11]

:[10]
push.v 1576.y
pushi.e 280
cmp.i.v GT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 160
pop.v.i self.y

:[14]
pushbltn.v self.room
pushi.e 145
cmp.i.v EQ
bf [16]

:[15]
push.v 1576.x
pushi.e 560
cmp.i.v GT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 500
pop.v.i self.x

:[19]
pushi.e 1
pop.v.i self.init_band

:[20]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.x
pushi.e 60
add.i.v
cmp.v.v GT
bf [22]

:[21]
push.v self.x
pushi.e 20
add.i.v
pop.v.v self.x

:[22]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.x
pushi.e 20
add.i.v
cmp.v.v LT
bf [24]

:[23]
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x

:[24]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.y
pushi.e 70
add.i.v
cmp.v.v GT
bf [26]

:[25]
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y

:[26]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.y
pushi.e 10
add.i.v
cmp.v.v LT
bf [28]

:[27]
push.v self.y
pushi.e 40
sub.i.v
pop.v.v self.y

:[28]
push.v self.x
pushi.e -40
cmp.i.v LT
bf [30]

:[29]
pushi.e -40
pop.v.i self.x

:[30]
push.v self.x
pushbltn.v self.room_width
pushi.e 360
sub.i.v
cmp.v.v GT
bf [32]

:[31]
pushbltn.v self.room_width
pushi.e 360
sub.i.v
pop.v.v self.x

:[32]
push.v self.y
pushbltn.v self.room_height
pushi.e 280
sub.i.v
cmp.v.v GT
bf [34]

:[33]
pushbltn.v self.room_height
pushi.e 280
sub.i.v
pop.v.v self.y

:[34]
push.v self.y
pushi.e -40
cmp.i.v LT
bf [end]

:[35]
pushi.e -40
pop.v.i self.y

:[end]