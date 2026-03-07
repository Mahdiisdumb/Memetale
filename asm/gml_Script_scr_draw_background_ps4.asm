.localvar 0 arguments
.localvar 1 bg 857
.localvar 2 xx 858
.localvar 3 yy 859
.localvar 4 scale 860

:[0]
pushbltn.v self.argument0
pop.v.v local.bg
pushbltn.v self.argument1
pop.v.v local.xx
pushbltn.v self.argument2
pop.v.v local.yy
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [2]

:[1]
call.i window_get_width(argc=0)
pushi.e 1920
conv.i.d
div.d.v
pop.v.v local.scale
pushloc.v local.bg
call.i background_get_height(argc=1)
pushloc.v local.scale
mul.v.v
pushloc.v local.bg
call.i background_get_width(argc=1)
pushloc.v local.scale
mul.v.v
pushloc.v local.yy
pushloc.v local.scale
mul.v.v
pushloc.v local.xx
pushloc.v local.scale
mul.v.v
pushloc.v local.bg
call.i draw_background_stretched(argc=5)
popz.v
b [end]

:[2]
pushloc.v local.yy
pushloc.v local.xx
pushloc.v local.bg
call.i draw_background(argc=3)
popz.v

:[end]