.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.fadespeed
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.image_speed

:[end]