.localvar 0 arguments

:[0]
push.v 744.y
pushi.e 5
add.i.v
push.v 744.x
pushi.e 5
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.dirface
push.v 744.y
pushi.e 5
add.i.v
push.v 744.x
pushi.e 5
add.i.v
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v self.diramt
pushi.e 20
pop.v.i self.imax
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.imax
cmp.v.v LT
bf [3]

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.dirface
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.dirface
push.v self.diramt
call.i lengthdir_y(argc=2)
push.v self.i
push.v self.imax
div.v.v
mul.v.v
add.v.v
pushi.e 12
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.dirface
push.v self.diramt
call.i lengthdir_x(argc=2)
push.v self.i
push.v self.imax
div.v.v
mul.v.v
add.v.v
pushi.e 12
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 369
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v 744.y
pushi.e 5
sub.i.v
push.v 744.x
pushi.e 5
sub.i.v
pushi.e 5
conv.i.v
call.i random(argc=1)
pushi.e 368
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v 744.x
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
add.v.v
pop.v.v 744.x
push.v 744.y
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
add.v.v
pop.v.v 744.y

:[end]