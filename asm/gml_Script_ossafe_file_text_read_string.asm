.localvar 0 arguments
.localvar 1 handle 826
.localvar 2 line 827

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
pushbltn.v self.argument0
call.i file_text_read_string(argc=1)
ret.v

:[2]
b [end]

:[3]
pushbltn.v self.argument0
pop.v.v local.handle
push.s "line_read"@6231
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
conv.v.b
bf [5]

:[4]
push.s ""@36
conv.s.v
ret.v

:[5]
push.s "line"@5056
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pop.v.v local.line
pushloc.v local.line
push.s "num_lines"@3205
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
cmp.v.v GTE
bf [7]

:[6]
push.s ""@36
conv.s.v
ret.v

:[7]
pushi.e 1
conv.i.v
push.s "line_read"@6231
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v
push.s "text"@5042
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pop.v.v self.text
pushi.e -1
pushloc.v local.line
conv.v.i
push.v [array]self.text
ret.v

:[end]