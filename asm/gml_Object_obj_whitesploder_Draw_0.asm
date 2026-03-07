.localvar 0 arguments

:[0]
push.v self.splode
pushi.e 1
add.i.v
pop.v.v self.splode
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [7]

:[2]
push.v self.splode
pushi.e 12
conv.i.d
div.d.v
push.d 0.06
push.v self.i
mul.v.d
sub.v.v
pop.v.v self.alp
push.v self.alp
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.alp

:[4]
push.v self.alp
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self.alp

:[6]
push.v self.alp
call.i draw_set_alpha(argc=1)
popz.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
push.v self.i
mul.v.i
sub.v.v
pushbltn.v self.room_width
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
push.v self.i
pushi.e 1
add.i.v
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
push.v self.i
mul.v.i
add.v.v
pushbltn.v self.room_width
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
push.v self.i
pushi.e 1
add.i.v
mul.v.i
add.v.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]