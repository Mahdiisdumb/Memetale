.localvar 0 arguments
.localvar 1 ww 9635
.localvar 2 wh 9636
.localvar 3 sw 9637
.localvar 4 sh 9638
.localvar 5 scale_w 9639
.localvar 6 scale_h 9640

:[0]
call.i window_get_width(argc=0)
pop.v.v local.ww
call.i window_get_height(argc=0)
pop.v.v local.wh
pushbltn.v self.application_surface
call.i surface_get_width(argc=1)
pop.v.v local.sw
pushbltn.v self.application_surface
call.i surface_get_height(argc=1)
pop.v.v local.sh
pushloc.v local.ww
pushloc.v local.sw
div.v.v
pop.v.v local.scale_w
pushloc.v local.wh
pushloc.v local.sh
div.v.v
pop.v.v local.scale_h
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [2]

:[1]
pushloc.v local.scale_h
pushloc.v local.scale_w
call.i min(argc=2)
call.i floor(argc=1)
pop.v.v global.window_scale
b [end]

:[2]
pushloc.v local.scale_h
pushloc.v local.scale_w
call.i min(argc=2)
pop.v.v global.window_scale

:[end]