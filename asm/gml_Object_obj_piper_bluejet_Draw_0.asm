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
push.v self.f_l
push.d 0.2
add.d.v
pop.v.v self.f_l
push.v self.f_l
pushi.e 1
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
pushi.e 70
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
push.v self.timer
push.d 1.5
mul.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
sub.v.i
pop.v.v self.f_l

:[13]
push.v self.timer
pushi.e 70
cmp.i.v GTE
bf [16]

:[14]
push.v self.f_l
push.d 0.2
sub.d.v
pop.v.v self.f_l
push.v self.f_l
pushi.e 0
cmp.i.v LTE
bf [16]

:[15]
pushi.e 0
pop.v.i self.f_l
pushi.e 0
pop.v.i self.f_d
pushi.e 0
pop.v.i self.timer

:[16]
push.v self.f_d
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
push.v self.f_l
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f_l
push.d 0.5
push.v self.f_l
pushi.e 2
conv.i.d
div.d.v
add.v.d
push.v self.y
pushi.e 8
add.i.v
push.v self.f_l
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
pushi.e 975
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]