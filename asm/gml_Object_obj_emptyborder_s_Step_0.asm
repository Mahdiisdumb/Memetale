.localvar 0 arguments

:[0]
push.v self.idealx
pop.v.v self.x
push.v self.idealy
pop.v.v self.y
push.v self.sprite_width
pop.v.v self.w
push.v self.sprite_height
pop.v.v self.h
push.v 744.x
push.v self.x
pushi.e 4
add.i.v
cmp.v.v LT
bf [5]

:[1]
push.v self.x
push.v self.maxx
cmp.v.v GT
bf [3]

:[2]
push.v self.idealx
push.d 0.5
sub.d.v
pop.v.v self.idealx
push.v self.x
push.d 0.5
sub.d.v
pop.v.v self.x
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
b [4]

:[3]
push.v self.maxx
pop.v.v self.x
push.v self.maxx
pop.v.v self.idealx

:[4]
push.v self.x
pushi.e 5
add.i.v
call.i ceil(argc=1)
pop.v.v 744.x

:[5]
push.v 744.y
push.v self.y
pushi.e 4
add.i.v
cmp.v.v LT
bf [7]

:[6]
push.v self.y
pushi.e 4
add.i.v
pop.v.v 744.y

:[7]
push.v 744.x
push.v self.x
push.v self.w
add.v.v
pushi.e 16
sub.i.v
cmp.v.v GT
bf [9]

:[8]
push.v self.x
push.v self.w
add.v.v
pushi.e 16
sub.i.v
pop.v.v 744.x

:[9]
push.v 744.y
push.v self.y
push.v self.h
add.v.v
pushi.e 16
sub.i.v
cmp.v.v GT
bf [end]

:[10]
push.v self.y
push.v self.maxy
cmp.v.v LT
bf [12]

:[11]
push.v self.x
push.v self.maxx
cmp.v.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.idealy
push.d 0.5
add.d.v
pop.v.v self.idealy
push.v self.y
push.d 0.5
add.d.v
pop.v.v self.y
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
push.v self.y
push.v self.h
add.v.v
pushi.e 17
sub.i.v
call.i floor(argc=1)
pop.v.v 744.y

:[end]