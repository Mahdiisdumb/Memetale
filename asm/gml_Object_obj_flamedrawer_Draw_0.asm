.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
push.v self.y
pushi.e 10
push.v self.i
mul.v.i
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.d 0.5
pop.v.d self.image_speed

:[end]