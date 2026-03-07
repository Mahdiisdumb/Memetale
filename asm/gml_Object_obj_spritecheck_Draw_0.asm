.localvar 0 arguments

:[0]
push.v global.awfultest
pushi.e 1
add.i.v
pop.v.v global.awfultest
pushglb.v global.awfultest
call.i sprite_exists(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e 0
pop.v.i self.ir

:[2]
push.v self.ir
pushi.e 40
cmp.i.v LT
bf [4]

:[3]
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
push.v self.ir
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
push.v self.ir
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
push.v self.ir
pushglb.v global.awfultest
call.i floor(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.ir
pushi.e 1
add.i.v
pop.v.v self.ir
b [2]

:[4]
b [6]

:[5]
pushglb.v global.awfultest
pop.v.v self.ricardo

:[6]
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.ricardo
pushi.e 400
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 200
conv.i.v
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
pushi.e 324
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]