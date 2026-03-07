.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [8]

:[2]
push.v self.y
push.v self.line
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.i
pushi.e 2
mul.i.v
add.v.v
call.i draw_getpixel(argc=2)
push.i 16777215
cmp.i.v EQ
bf [4]

:[3]
pushi.e 193
conv.i.v
push.v self.y
push.v self.line
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.i
pushi.e 2
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[4]
push.v self.myvapor
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.v self.y
push.v self.line
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.i
pushi.e 2
mul.i.v
add.v.v
call.i draw_getpixel(argc=2)
push.i 16777215
cmp.i.v EQ
bf [7]

:[6]
pushi.e 193
conv.i.v
push.v self.y
push.v self.line
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.i
pushi.e 2
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[8]
push.v self.myvapor
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.line
pushi.e 1
add.i.v
pop.v.v self.line

:[10]
push.v self.line
pushi.e 1
add.i.v
pop.v.v self.line
push.v self.line
push.v self.ht
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[12]
pushi.e 1
push.v self.myvapor
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.myvapor
pushi.e 1
cmp.i.v GT
bf [end]

:[13]
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]