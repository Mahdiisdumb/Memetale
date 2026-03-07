.localvar 0 arguments

:[0]
push.v self.sp
neg.v
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.s
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.xinit
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
sub.v.v
pop.v.v self.xinit
push.v self.xinit
push.v self.sprite_width
add.v.v
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x

:[2]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.xinit
push.v self.s
push.v self.sp
div.v.v
call.i cos(argc=1)
push.v self.sf
mul.v.v
sub.v.v
pop.v.v self.xinit
push.v self.xinit
push.v self.sprite_width
add.v.v
push.v self.s
push.v self.sp
div.v.v
call.i cos(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x

:[4]
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.sp
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.s
push.v self.xinit
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.xinit
push.v self.xinit
push.v self.sprite_width
add.v.v
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.c

:[6]
pushi.e 1
pop.v.i self.visible

:[end]