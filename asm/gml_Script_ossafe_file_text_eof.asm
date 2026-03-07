.localvar 0 arguments
.localvar 1 handle 807

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
pushbltn.v self.argument0
call.i file_text_eof(argc=1)
ret.v

:[2]
b [end]

:[3]
pushbltn.v self.argument0
pop.v.v local.handle
push.s "line"@5056
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
push.s "num_lines"@3205
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
cmp.v.v GTE
conv.b.v
ret.v

:[end]