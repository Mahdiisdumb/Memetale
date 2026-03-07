.localvar 0 arguments

:[0]
push.v self.frame
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[2]
push.v self.frame
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 0.75
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[4]
push.v self.frame
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[6]
push.v self.frame
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.d 0.25
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[8]
push.v self.frame
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.frame
pushi.e 1
add.i.v
pop.v.v self.frame
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]