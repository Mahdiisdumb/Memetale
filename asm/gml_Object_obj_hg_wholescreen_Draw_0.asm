.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v 570.image_alpha
push.d 0.1
sub.d.v
pop.v.v 570.image_alpha
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy2
push.v self.xx2
push.v self.yy
push.v self.xx
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[3]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.scr
call.i draw_set_alpha(argc=1)
popz.v
push.v self.yy2
push.v self.xx2
push.v self.yy
push.v self.xx
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.scr
push.d 0.1
sub.d.v
pop.v.v self.scr
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.scr
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.xx
pushi.e -100
cmp.i.v GT
bf [7]

:[6]
push.v self.xx
pushi.e 10
sub.i.v
pop.v.v self.xx

:[7]
push.v self.yy
pushi.e -100
cmp.i.v GT
bf [9]

:[8]
push.v self.yy
pushi.e 10
sub.i.v
pop.v.v self.yy

:[9]
push.v self.xx2
pushi.e 800
cmp.i.v LT
bf [11]

:[10]
push.v self.xx2
pushi.e 10
add.i.v
pop.v.v self.xx2

:[11]
push.v self.yy2
pushi.e 800
cmp.i.v LT
bf [13]

:[12]
push.v self.yy2
pushi.e 10
add.i.v
pop.v.v self.yy2

:[13]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[15]
pushi.e 1
conv.i.v
push.v self.yy2
push.v self.i
add.v.v
push.v self.xx2
push.v self.i
add.v.v
push.v self.yy
push.v self.i
add.v.v
push.v self.xx
push.v self.i
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[end]