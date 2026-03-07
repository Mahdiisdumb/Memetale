.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.goof
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.siner
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 21
add.i.v
pop.v.v self.x

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
push.d 2.5
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
pushi.e 15
sub.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.goof
pushi.e 2
mul.i.v
sub.v.v
push.v self.x
pushi.e 60
add.i.v
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
pushi.e 510
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
push.d 2.5
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 30
mul.i.v
pushi.e 15
add.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.goof
pushi.e 2
mul.i.v
sub.v.v
push.v self.x
pushi.e 14
add.i.v
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
pushi.e 510
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
pushi.e 50
add.i.v
push.v self.goof
pushi.e 6
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 18
conv.i.d
div.d.v
pushi.e 507
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
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
push.v self.goof
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 6
add.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
pushi.e 508
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
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
push.v self.goof
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 6
add.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
pushi.e 509
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]