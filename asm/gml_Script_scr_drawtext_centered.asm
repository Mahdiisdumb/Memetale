.localvar 0 arguments
.localvar 1 xx 960
.localvar 2 yy 961
.localvar 3 text 962

:[0]
pushbltn.v self.argument0
pop.v.v local.xx
pushbltn.v self.argument1
pop.v.v local.yy
pushbltn.v self.argument2
pop.v.v local.text
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.text
pushloc.v local.yy
pushloc.v local.xx
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[end]