.localvar 0 arguments

:[0]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.rotto
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[2]
push.v self.hurt
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.rotto
pushi.e 1
add.i.v
pop.v.v self.rotto
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 8
add.i.v
pop.v.v self.x
pushi.e 28
pop.v.i self.siner

:[4]
push.v self.y
pushi.e 120
add.i.v
pop.v.v self.nowy
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 40
mul.i.v
call.i abs(argc=1)
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nowy
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 20
mul.i.v
call.i abs(argc=1)
sub.v.v
push.v self.x
pushi.e 38
add.i.v
pushi.e 0
conv.i.v
pushi.e 416
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
call.i abs(argc=1)
neg.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nowy
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 20
mul.i.v
call.i abs(argc=1)
sub.v.v
push.v self.x
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
pushi.e 415
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.nowy
pushi.e 20
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 20
mul.i.v
call.i abs(argc=1)
add.v.i
sub.v.v
pop.v.v self.nowy
pushi.e 5
pop.v.i self.i

:[5]
push.v self.i
pushi.e -1
cmp.i.v GT
bf [7]

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nowy
push.v self.x
push.v self.i
pushi.e 419
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.nowy
pushi.e 12
sub.i.v
pop.v.v self.nowy
push.v self.nowy
push.v self.siner
push.v self.i
sub.v.v
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
call.i abs(argc=1)
sub.v.v
pop.v.v self.nowy
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [5]

:[7]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
push.v self.rotto
call.i sin(argc=1)
pushi.e 12
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nowy
pushi.e 30
sub.i.v
push.v self.x
pushi.e 50
add.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
pushi.e 417
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.hurt
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rotto
call.i sin(argc=1)
pushi.e 12
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nowy
pushi.e 30
sub.i.v
push.v self.x
pushi.e 50
add.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
pushi.e 418
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]