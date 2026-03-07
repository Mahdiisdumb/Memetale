.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.view_visible
push.v self.fakedrawer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.view_visible
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 235
add.i.v
push.v self.xx
pushi.e 304
add.i.v
push.v self.yy
pushi.e 160
add.i.v
push.v self.xx
pushi.e 16
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 232
add.i.v
push.v self.xx
pushi.e 301
add.i.v
push.v self.yy
pushi.e 163
add.i.v
push.v self.xx
pushi.e 19
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]