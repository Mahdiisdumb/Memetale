.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[2]
push.v self.timer
pushi.e 15
cmp.i.v LT
bf [4]

:[3]
push.v self.ss
pushi.e 1
conv.i.v
call.i random(argc=1)
push.d 0.8
conv.d.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.ss
push.v self.rr
push.d 0.8
conv.d.v
call.i random(argc=1)
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.rr
push.v self.ss
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
pop.v.v self.ssin
push.v self.rr
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
pop.v.v self.rsin
b [12]

:[4]
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 5
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.ssini
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 5
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.rsini
push.v self.rsin
push.v self.rsini
pushi.e 1
sub.i.v
cmp.v.v LT
bf [6]

:[5]
push.v self.rsin
pushi.e 1
add.i.v
pop.v.v self.rsin

:[6]
push.v self.rsin
push.v self.rsini
pushi.e 1
add.i.v
cmp.v.v GT
bf [8]

:[7]
push.v self.rsin
pushi.e 1
sub.i.v
pop.v.v self.rsin

:[8]
push.v self.ssin
push.v self.ssini
pushi.e 1
sub.i.v
cmp.v.v LT
bf [10]

:[9]
push.v self.ssin
pushi.e 1
add.i.v
pop.v.v self.ssin

:[10]
push.v self.ssin
push.v self.ssini
pushi.e 1
add.i.v
cmp.v.v GT
bf [12]

:[11]
push.v self.ssin
pushi.e 1
sub.i.v
pop.v.v self.ssin

:[12]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
pop.v.v self.sz
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
push.v self.y
push.v self.rsin
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.ssin
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.8
push.v self.sz
add.v.d
push.d 0.8
push.v self.sz
add.v.d
push.v self.y
push.v self.rsin
add.v.v
push.v self.x
push.v self.ssin
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]