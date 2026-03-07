.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.facego
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.f_siner
pushi.e 1
add.i.v
pop.v.v self.f_siner

:[2]
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
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
sub.v.i
pushi.e 2
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.i
push.v self.y
pushi.e 114
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 855
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.f_siner
pushi.e 3
mul.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.f_siner
pushi.e 16
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 18
mul.i.v
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.f_siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 13
mul.i.v
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.face
pushi.e 854
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.f_siner
pushi.e 3
mul.i.v
pushi.e 180
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.f_siner
pushi.e 36
add.i.v
pushi.e 16
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 18
mul.i.v
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.f_siner
pushi.e 36
add.i.v
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 13
mul.i.v
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.face
pushi.e 854
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.f_siner
pushi.e 3
mul.i.v
pushi.e 180
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.f_siner
pushi.e 65
add.i.v
pushi.e 16
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 18
mul.i.v
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.f_siner
pushi.e 65
add.i.v
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 13
mul.i.v
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.face
pushi.e 854
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
pushi.e 4
sub.i.v
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 856
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e -5
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.i
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 12
sub.i.v
pushi.e 0
conv.i.v
pushi.e 857
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 5
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
sub.v.i
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
push.v self.x
pushi.e 14
add.i.v
pushi.e 0
conv.i.v
pushi.e 857
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[4]
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
pushi.e 2
sub.i.v
push.v self.x
pushi.e 48
sub.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 853
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 9
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.face
pushi.e 9
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.face
pushi.e 9
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.face

:[end]