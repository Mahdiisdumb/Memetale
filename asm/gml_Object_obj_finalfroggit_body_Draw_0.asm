.localvar 0 arguments

:[0]
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
pop.v.v self.x

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.15
mul.d.v
sub.v.i
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
pushi.e 90
add.i.v
push.v self.x
push.v self.offx
add.v.v
pushi.e 0
conv.i.v
pushi.e 492
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
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 2
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 490
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 2
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offy
push.v self.y
add.v.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.offx
push.v self.x
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 491
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim

:[end]