.localvar 0 arguments
.localvar 1 button 5884

:[0]
call.i draw_self(argc=0)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [4]

:[1]
pushi.e 0
conv.i.v
push.s "Z"@6304
conv.s.v
call.i scr_getbuttonsprite(argc=2)
pop.v.v local.button
pushloc.v local.button
pushi.e -4
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 2
add.i.v
pushloc.v local.button
call.i sprite_get_width(argc=1)
sub.v.v
pushi.e 0
conv.i.v
pushloc.v local.button
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
b [end]

:[4]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 783
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]