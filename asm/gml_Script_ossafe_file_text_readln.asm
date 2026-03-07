.localvar 0 arguments
.localvar 1 handle 829
.localvar 2 line 830

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
pushbltn.v self.argument0
call.i file_text_readln(argc=1)
ret.v

:[2]
b [end]

:[3]
pushbltn.v self.argument0
pop.v.v local.handle
pushi.e 0
conv.i.v
push.s "line_read"@6231
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v
push.s "line"@5056
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pushi.e 1
add.i.v
push.s "line"@5056
conv.s.v
pushloc.v local.handle
call.i ds_map_set_post(argc=3)
pop.v.v local.line
pushloc.v local.line
push.s "num_lines"@3205
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
cmp.v.v GTE
bf [5]

:[4]
push.s ""@36
conv.s.v
ret.v

:[5]
push.s "text"@5042
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pop.v.v self.text
pushi.e -1
pushloc.v local.line
conv.v.i
push.v [array]self.text
push.s "\r\n"@6235
add.s.v
ret.v

:[end]