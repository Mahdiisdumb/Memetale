.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1080
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 11
add.i.v
push.v self.x
pushi.e 25
add.i.v
push.v self.ts
pushi.e 6
conv.i.d
div.d.v
pushi.e 1082
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.y
pushi.e 11
add.i.v
push.v self.x
pushi.e 25
add.i.v
push.v self.ts
pushi.e 6
conv.i.d
div.d.v
pushi.e 1081
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.ts
pushi.e 1
add.i.v
pop.v.v self.ts

:[end]