.localvar 0 arguments

:[0]
push.v self.siny
pushi.e 1
add.i.v
pop.v.v self.siny
push.v self.yo
push.v self.siny
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v self.y
push.v self.yo
push.v self.vspeed
add.v.v
pop.v.v self.yo
push.v self.creator
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[1]
push.v self.creator
conv.v.i
push.v [stacktop]self.emotion
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 287
pop.v.i self.sprite_index

:[3]
push.v self.creator
conv.v.i
push.v [stacktop]self.emotion
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 288
pop.v.i self.sprite_index

:[5]
push.v self.creator
conv.v.i
push.v [stacktop]self.emotion
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 289
pop.v.i self.sprite_index

:[7]
b [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]