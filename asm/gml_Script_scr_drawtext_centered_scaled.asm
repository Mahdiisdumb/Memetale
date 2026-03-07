.localvar 0 arguments
.localvar 1 xx 964
.localvar 2 yy 965
.localvar 3 text 966
.localvar 4 xscale 967
.localvar 5 yscale 968
.localvar 6 display_scale 969
.localvar 7 lineheight 970
.localvar 8 eol 971
.localvar 9 line 972
.localvar 10 width 973
.localvar 11 line_x 974

:[0]
pushbltn.v self.argument0
pop.v.v local.xx
pushbltn.v self.argument1
pop.v.v local.yy
pushbltn.v self.argument2
pop.v.v local.text
pushbltn.v self.argument3
pop.v.v local.xscale
pushbltn.v self.argument4
pop.v.v local.yscale
pushbltn.v self.application_surface
call.i surface_get_width(argc=1)
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_wview
div.v.v
pop.v.v local.display_scale
push.s " "@18
conv.s.v
call.i string_height(argc=1)
pushloc.v local.yscale
mul.v.v
call.i round(argc=1)
pop.v.v local.lineheight
pushloc.v local.text
push.s "#"@6300
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.eol
pushloc.v local.yy
pushloc.v local.display_scale
mul.v.v
call.i round(argc=1)
pushloc.v local.display_scale
div.v.v
pop.v.v local.yy

:[1]
pushloc.v local.eol
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
pushloc.v local.eol
pushi.e 1
conv.i.v
pushloc.v local.text
call.i substr(argc=3)
pop.v.v local.line
pushloc.v local.eol
pushi.e 1
add.i.v
pushloc.v local.text
call.i substr(argc=2)
pop.v.v local.text
pushloc.v local.line
call.i string_width(argc=1)
pushloc.v local.xscale
mul.v.v
pop.v.v local.width
pushloc.v local.xx
pushloc.v local.width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushloc.v local.display_scale
mul.v.v
call.i round(argc=1)
pushloc.v local.display_scale
div.v.v
pop.v.v local.line_x
pushi.e 0
conv.i.v
pushloc.v local.yscale
pushloc.v local.xscale
pushloc.v local.line
pushloc.v local.yy
pushloc.v local.line_x
call.i draw_text_transformed(argc=6)
popz.v
push.v local.yy
pushloc.v local.lineheight
add.v.v
pop.v.v local.yy
pushloc.v local.text
push.s "#"@6300
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.eol
b [1]

:[3]
pushloc.v local.text
call.i string_width(argc=1)
pushloc.v local.xscale
mul.v.v
pop.v.v local.width
pushi.e 0
conv.i.v
pushloc.v local.yscale
pushloc.v local.xscale
pushloc.v local.text
pushloc.v local.yy
pushloc.v local.xx
pushloc.v local.width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i round(argc=1)
call.i draw_text_transformed(argc=6)
popz.v

:[end]