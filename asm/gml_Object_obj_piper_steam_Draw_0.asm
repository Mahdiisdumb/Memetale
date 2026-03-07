.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 987
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.f_l
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 988
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.f_l
pushi.e 1
pop.v.i self.f_d

:[2]
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [4]

:[3]
push.v self.timer
pushi.e 50
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
pushi.e 58
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.f_l
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 7
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.f_l
push.d 0.3
add.d.v
pop.v.v self.f_l
push.v self.f_l
pushi.e 3
cmp.i.v GTE
bf [8]

:[7]
pushi.e 50
pop.v.i self.timer

:[8]
push.v self.timer
pushi.e 50
cmp.i.v GTE
bf [10]

:[9]
push.v self.timer
pushi.e 90
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
push.v self.f_l
push.d 0.1
sub.d.v
pop.v.v self.f_l
push.v self.f_l
pushi.e 0
cmp.i.v LTE
bf [end]

:[13]
pushi.e 0
pop.v.i self.f_l
pushi.e 25
pop.v.i self.timer

:[end]