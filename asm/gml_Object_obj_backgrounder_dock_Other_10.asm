.localvar 0 arguments

:[0]
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
pop.v.v self.gg
pushbltn.v self.room_height
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
sub.v.v
pop.v.v self.hh
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_xview
push.v self.gg
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.xhome
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x
push.v self.x
push.v self.xprevious
sub.v.v
pop.v.v self.g
pushi.e 0
conv.i.v
push.v self.g
push.i 1000100
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v self.g
pushi.e 2
conv.i.d
div.d.v
push.i 1000002
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v

:[5]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v GTE
bf [7]

:[6]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.hh
cmp.v.v LT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
push.v self.yhome
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.y
push.v self.y
push.v self.yprevious
sub.v.v
pop.v.v self.h
push.v self.h
pushi.e 0
conv.i.v
push.i 1000100
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
push.v self.h
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 1000002
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v

:[end]