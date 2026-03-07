.localvar 0 arguments

:[0]
push.d 1.5
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.d
pop.v.v self.ac
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.d 0.8
push.v self.i
pushi.e 16
conv.i.d
div.d.v
sub.v.d
push.v self.amt
mul.v.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 8388736
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushbltn.v self.room_height
push.v self.i
pushi.e 1
add.i.v
push.v self.i
pushi.e 1
add.i.v
mul.v.v
push.v self.ac
mul.v.v
sub.v.v
pushbltn.v self.room_width
pushi.e 10
add.i.v
pushbltn.v self.room_height
push.v self.i
push.v self.i
mul.v.v
push.v self.ac
mul.v.v
sub.v.v
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
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
push.v self.amt
push.d 0.03
sub.d.v
pop.v.v self.amt
push.v self.amt
push.d 0.05
cmp.d.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]