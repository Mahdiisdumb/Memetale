.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_angle
push.v self.anger
add.v.v
pop.v.v self.image_angle

:[2]
push.v self.x
pushbltn.v self.room_width
pushi.e 60
sub.i.v
cmp.v.v GT
bf [5]

:[3]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[5]
push.v self.x
pushi.e 60
cmp.i.v LT
bf [8]

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[8]
push.v self.y
pushi.e 60
cmp.i.v LT
bf [11]

:[9]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[11]
push.v self.y
pushbltn.v self.room_height
pushi.e 60
sub.i.v
cmp.v.v GT
bf [14]

:[12]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[14]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[15]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.speed
push.d 0.03
sub.d.v
pop.v.v self.speed

:[17]
push.v self.speed
pushi.e 0
cmp.i.v LT
bf [end]

:[18]
pushi.e 0
pop.v.i self.speed

:[end]