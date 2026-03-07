.localvar 0 arguments

:[0]
push.v self.float
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.float
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushi.e 0
pop.v.i self.sinadd
push.v self.offground
pushi.e 10
cmp.i.v LT
bf [5]

:[4]
push.v self.offground
pushi.e 2
add.i.v
pop.v.v self.offground
b [6]

:[5]
pushi.e 2
pop.v.i self.float

:[6]
push.v self.float
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
mul.v.i
pop.v.v self.sinadd
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[8]
push.v self.float
pushi.e 1
cmp.i.v EQ
bt [10]

:[9]
push.v self.float
pushi.e 2
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [end]

:[12]
push.v self.sprite_index
pushi.e 1216
cmp.i.v NEQ
bf [14]

:[13]
pushi.e 15
conv.i.v
pushi.e 20
push.v self.sinadd
add.v.i
push.v self.y
pushi.e 25
add.i.v
push.v self.offground
add.v.v
push.v self.x
push.v self.sinadd
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.image_index
pushi.e 1265
conv.i.v
call.i draw_sprite_stretched(argc=6)
popz.v
b [15]

:[14]
pushi.e 15
conv.i.v
pushi.e 20
push.v self.sinadd
add.v.i
push.v self.y
pushi.e 25
add.i.v
push.v self.offground
add.v.v
push.v self.x
push.v self.sinadd
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
sub.i.v
push.v self.image_index
pushi.e 1265
conv.i.v
call.i draw_sprite_stretched(argc=6)
popz.v

:[15]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.offground
sub.v.v
push.v self.sinadd
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]