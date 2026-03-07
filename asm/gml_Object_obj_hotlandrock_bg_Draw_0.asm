.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushbltn.v self.room_height
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.maximum
push.d 0.3
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
call.i draw_set_alpha(argc=1)
popz.v
pushbltn.v self.room_height
pushi.e 10
add.i.v
pushbltn.v self.room_width
pushi.e 10
add.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.maximum
cmp.v.v LT
bf [3]

:[2]
push.v self.i
push.v self.maximum
div.v.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.i
pushi.e 40
mul.i.v
pushi.e 40
add.i.v
pushbltn.v self.room_width
pushi.e 10
add.i.v
push.v self.i
pushi.e 40
mul.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]