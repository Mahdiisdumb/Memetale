.localvar 0 arguments

:[0]
push.v self.spec
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e -1
pushi.e 0
push.v [array]self.rno
cmp.v.v LT
bf [4]

:[3]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.rang
push.v self.i
pushi.e 360
mul.i.v
pushi.e -1
pushi.e 0
push.v [array]self.rno
div.v.v
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.r
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.rang
push.v self.i
pushi.e 360
mul.i.v
pushi.e -1
pushi.e 0
push.v [array]self.rno
div.v.v
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.r
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 0
conv.i.v
pushi.e 2515
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [20]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e -1
pushi.e 0
push.v [array]self.rno
cmp.v.v LT
bf [20]

:[7]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.rang
push.v self.i
pushi.e 360
mul.i.v
pushi.e -1
pushi.e 0
push.v [array]self.rno
div.v.v
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.r
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.rang
push.v self.i
pushi.e 360
mul.i.v
pushi.e -1
pushi.e 0
push.v [array]self.rno
div.v.v
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.r
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.i 16776960
pop.v.i self.col

:[9]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.i 16711680
pop.v.i self.col

:[11]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.i 32768
pop.v.i self.col

:[13]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.i 65535
pop.v.i self.col

:[15]
push.v self.i
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
push.i 4235519
pop.v.i self.col

:[17]
push.v self.i
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
push.i 8388736
pop.v.i self.col

:[19]
push.v self.image_alpha
push.v self.col
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 0
conv.i.v
pushi.e 2516
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[20]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.rang
pushi.e -1
pushi.e 0
push.v [array]self.raspeed
add.v.v
pop.i.v [array]self.rang
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.r
pushi.e -1
pushi.e 0
push.v [array]self.rspeed
add.v.v
pop.i.v [array]self.r
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [22]

:[21]
push.v self.image_alpha
push.d 0.02
add.d.v
pop.v.v self.image_alpha

:[22]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [end]

:[23]
pushi.e -1
pushi.e 0
push.v [array]self.r
pushi.e 30
cmp.i.v GT
bf [end]

:[24]
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.r
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.rspeed
pushi.e -2
pop.v.i self.depth

:[end]