.localvar 0 arguments
.localvar 1 divided 708
.localvar 2 divider_x 709

:[0]
pushbltn.v self.argument0
pop.v.v local.divided
call.i scr_shop_divider_pos(argc=0)
pop.v.v local.divider_x
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.divided
conv.v.b
bf [2]

:[1]
pushi.e 236
conv.i.v
pushloc.v local.divider_x
pushi.e 1
sub.i.v
pushi.e 124
conv.i.v
pushi.e 4
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 236
conv.i.v
pushi.e 316
conv.i.v
pushi.e 124
conv.i.v
pushloc.v local.divider_x
pushi.e 4
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
b [end]

:[2]
pushi.e 236
conv.i.v
pushi.e 316
conv.i.v
pushi.e 124
conv.i.v
pushi.e 4
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]