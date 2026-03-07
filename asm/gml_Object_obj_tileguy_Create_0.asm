.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.mycoordx
pushi.e 3
pop.v.i self.mycoordy
pushi.e 0
pop.v.i self.moving
pushi.e 0
pop.v.i self.checkx
pushi.e 0
pop.v.i self.checky
push.v self.x
pop.v.v self.prevx
push.v self.y
pop.v.v self.prevy
pushi.e 0
pop.v.i self.electrocute
pushi.e -1
pop.v.i self.orange
pushi.e 0
pop.v.i self.green
pushi.e 1133
pop.v.i self.sprite_index
push.i 16777215
pop.v.i self.wblend
pushi.e 255
conv.i.v
pushi.e 83
conv.i.v
pushi.e 17
conv.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.oblend
pushi.e 255
conv.i.v
pushi.e 128
conv.i.v
pushi.e 45
conv.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.yblend
pushi.e 0
pop.v.i self.tileid
pushi.e 0
pop.v.i self.pir
pushi.e 0
pop.v.i self.dog

:[end]