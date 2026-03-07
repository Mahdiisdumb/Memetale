.localvar 0 arguments

:[0]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
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
pushi.e 24
add.i.v
push.d 1.5
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
add.v.d
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 14
add.i.v
pushi.e 0
conv.i.v
pushi.e 847
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.v
push.v self.x
pushi.e 32
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 848
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
add.v.i
call.i sin(argc=1)
neg.v
pushi.e 6
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 52
add.i.v
pushi.e 2
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
add.v.i
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.v
push.v self.x
pushi.e 74
add.i.v
push.v self.siner
pushi.e 8
add.i.v
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 852
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 46
add.i.v
push.d 0.5
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
add.v.d
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.v
push.v self.x
pushi.e 38
add.i.v
push.v self.siner
pushi.e 2
add.i.v
push.d 5.5
div.d.v
call.i floor(argc=1)
pushi.e 849
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 5
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
push.v self.y
pushi.e 46
add.i.v
push.d 1.5
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
add.v.d
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.v
push.v self.x
pushi.e 60
add.i.v
push.v self.siner
pushi.e 6
add.i.v
push.d 5.5
div.d.v
call.i floor(argc=1)
pushi.e 851
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
pushi.e 1
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
add.v.i
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.v
push.v self.x
pushi.e 52
add.i.v
push.v self.siner
pushi.e 4
add.i.v
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 850
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
pushi.e 46
add.i.v
push.v self.x
pushi.e 24
add.i.v
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 846
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[2]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.timer
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 845
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]