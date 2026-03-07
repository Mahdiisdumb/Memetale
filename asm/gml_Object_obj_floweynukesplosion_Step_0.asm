.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_speed
push.v self.counter
pushi.e 2
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 2
cmp.i.v EQ
bt [2]

:[1]
push.v self.counter
pushi.e 3
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [6]

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1587
conv.i.v
push.v self.y
pushi.e 158
add.i.v
push.v self.x
pushi.e 128
add.i.v
push.v self.y
pushi.e 93
add.i.v
push.v self.x
pushi.e 91
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [6]

:[5]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
push.v self.counter
pushi.e 4
cmp.i.v GTE
bf [8]

:[7]
push.v self.counter
pushi.e 8
cmp.i.v LTE
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1587
conv.i.v
push.v self.y
pushi.e 158
add.i.v
push.v self.x
pushi.e 128
add.i.v
push.v self.y
pushi.e 68
add.i.v
push.v self.x
pushi.e 88
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [12]

:[11]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
push.v self.counter
pushi.e 9
cmp.i.v GTE
bf [14]

:[13]
push.v self.counter
pushi.e 12
cmp.i.v LTE
b [15]

:[14]
push.e 0

:[15]
bf [18]

:[16]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1587
conv.i.v
push.v self.y
pushi.e 158
add.i.v
push.v self.x
pushi.e 128
add.i.v
push.v self.y
pushi.e 44
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [18]

:[17]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[18]
push.v self.counter
pushi.e 13
cmp.i.v GTE
bf [20]

:[19]
push.v self.counter
pushi.e 23
cmp.i.v LTE
b [21]

:[20]
push.e 0

:[21]
bf [24]

:[22]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1587
conv.i.v
push.v self.y
pushi.e 158
add.i.v
push.v self.x
pushi.e 118
add.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [24]

:[23]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[24]
push.v self.counter
pushi.e 24
cmp.i.v GT
bf [end]

:[25]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.2
cmp.d.v LT
bf [end]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[end]