.localvar 0 arguments
.localvar 1 name 809
.localvar 2 file 810
.localvar 3 data 812
.localvar 4 num_lines 813
.localvar 5 newline_pos 814
.localvar 6 nextline_pos 815
.localvar 7 line 816
.localvar 8 lines 817

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
pushbltn.v self.argument0
call.i file_text_open_read(argc=1)
ret.v

:[2]
b [end]

:[3]
pushbltn.v self.argument0
call.i string_lower(argc=1)
pop.v.v local.name
pushloc.v local.name
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
pop.v.v local.file
pushloc.v local.file
call.i is_undefined(argc=1)
conv.v.b
bf [5]

:[4]
pushbltn.v self.undefined
ret.v

:[5]
pushloc.v local.file
pop.v.v local.data
pushi.e 0
pop.v.i local.num_lines

:[6]
pushloc.v local.data
call.i string_byte_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [22]

:[7]
pushloc.v local.data
push.s "\n"@6225
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.newline_pos
pushloc.v local.newline_pos
pushi.e 0
cmp.i.v GT
bf [20]

:[8]
pushloc.v local.newline_pos
pushi.e 1
add.i.v
pop.v.v local.nextline_pos
pushloc.v local.newline_pos
pushi.e 1
cmp.i.v GT
bf [10]

:[9]
pushloc.v local.newline_pos
pushi.e 1
sub.i.v
pushloc.v local.data
call.i string_char_at(argc=2)
push.s "\r"@6229
cmp.s.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v local.newline_pos
push.e 1
sub.i.v
pop.v.v local.newline_pos

:[13]
pushloc.v local.newline_pos
pushi.e 1
cmp.i.v GT
bf [15]

:[14]
pushloc.v local.newline_pos
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.data
call.i substr(argc=3)
pop.v.v local.line
b [16]

:[15]
push.s ""@36
pop.v.s local.line

:[16]
pushloc.v local.nextline_pos
pushloc.v local.data
call.i strlen(argc=1)
cmp.v.v LTE
bf [18]

:[17]
pushloc.v local.nextline_pos
pushloc.v local.data
call.i substr(argc=2)
pop.v.v local.data
b [19]

:[18]
push.s ""@36
pop.v.s local.data

:[19]
b [21]

:[20]
pushloc.v local.data
pop.v.v local.line
push.s ""@36
pop.v.s local.data

:[21]
pushloc.v local.line
pushi.e -7
push.v local.num_lines
dup.v 0
push.e 1
add.i.v
pop.v.v local.num_lines
conv.v.i
pop.v.v [array]local.lines
b [6]

:[22]
call.i ds_map_create(argc=0)
pop.v.v self.handle
pushi.e 0
conv.i.v
push.s "is_write"@6218
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.lines
push.s "text"@5042
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.num_lines
push.s "num_lines"@3205
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "line"@5056
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "line_read"@6231
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
push.v self.handle
ret.v

:[end]