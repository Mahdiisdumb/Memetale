.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.siner
pushi.e 409
pop.v.i self.face
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x

:[2]
push.v self.pause
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.siner

:[4]
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
pushi.e 102
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 2
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 406
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
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
pushi.e 10
add.i.v
push.v self.x
pushi.e 42
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
pushi.e 407
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.d 0.2
mul.d.v
sub.v.i
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 26
add.i.v
pushi.e 18
add.i.v
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 7
mul.i.v
add.v.v
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v
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
pushi.e 102
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 2
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 405
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]