.localvar 0 arguments
.localvar 1 ww 178
.localvar 2 wh 179
.localvar 3 pot_w 180
.localvar 4 pot_h 181
.localvar 5 total_pixels 182
.localvar 6 num_pixels 183
.localvar 7 rh 184
.localvar 8 i 185
.localvar 9 len 186
.localvar 10 j 187
.localvar 11 index 188
.localvar 12 ix 189
.localvar 13 iy 190
.localvar 14 r 191
.localvar 15 g 192
.localvar 16 b 193

:[0]
push.v self.fakecrash_surface
pushi.e 0
cmp.i.v EQ
bf [17]

:[1]
call.i window_get_width(argc=0)
pop.v.v local.ww
call.i window_get_height(argc=0)
pop.v.v local.wh
pushi.e 1
pop.v.i local.pot_w

:[2]
pushloc.v local.pot_w
pushloc.v local.ww
cmp.v.v LT
bf [4]

:[3]
push.v local.pot_w
pushi.e 2
mul.i.v
pop.v.v local.pot_w
b [2]

:[4]
pushi.e 1
pop.v.i local.pot_h

:[5]
pushloc.v local.pot_h
pushloc.v local.wh
cmp.v.v LT
bf [7]

:[6]
push.v local.pot_h
pushi.e 2
mul.i.v
pop.v.v local.pot_h
b [5]

:[7]
pushloc.v local.pot_h
pushloc.v local.pot_w
call.i surface_create(argc=2)
pop.v.v self.fakecrash_surface
push.v self.fakecrash_surface
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushloc.v local.ww
pushloc.v local.wh
mul.v.v
pop.v.v local.total_pixels
pushloc.v local.total_pixels
pushi.e 4
conv.i.d
div.d.v
pushloc.v local.total_pixels
pushi.e 16
conv.i.d
div.d.v
call.i irandom(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v local.num_pixels
pushloc.v local.num_pixels
pushloc.v local.ww
div.v.v
call.i ceil(argc=1)
pop.v.v local.rh
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.rh
pushi.e 2
sub.i.v
pushloc.v local.ww
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushloc.v local.rh
pushi.e 1
sub.i.v
pushloc.v local.num_pixels
pushloc.v local.ww
mod.v.v
pushi.e 1
sub.i.v
pushloc.v local.rh
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
pop.v.i local.i

:[8]
pushloc.v local.i
pushloc.v local.num_pixels
cmp.v.v LT
bf [16]

:[9]
pushloc.v local.ww
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushloc.v local.ww
pushi.e 16
conv.i.d
div.d.v
call.i irandom(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v local.len
pushloc.v local.len
pushloc.v local.num_pixels
pushloc.v local.i
sub.v.v
cmp.v.v GT
bf [11]

:[10]
pushloc.v local.num_pixels
pushloc.v local.i
sub.v.v
pop.v.v local.len

:[11]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [15]

:[12]
pushi.e 0
pop.v.i local.j

:[13]
pushloc.v local.j
pushloc.v local.len
cmp.v.v LT
bf [15]

:[14]
pushloc.v local.i
pushloc.v local.j
add.v.v
pop.v.v local.index
pushloc.v local.index
pushloc.v local.ww
mod.v.v
pop.v.v local.ix
pushloc.v local.index
pushloc.v local.ww
div.v.v
call.i floor(argc=1)
pop.v.v local.iy
pushi.e 256
conv.i.v
call.i irandom(argc=1)
pop.v.v local.r
pushi.e 256
conv.i.v
call.i irandom(argc=1)
pop.v.v local.g
pushi.e 256
conv.i.v
call.i irandom(argc=1)
pop.v.v local.b
pushloc.v local.b
pushloc.v local.g
pushloc.v local.r
call.i make_color_rgb(argc=3)
pushloc.v local.iy
pushloc.v local.ix
call.i draw_point_color(argc=3)
popz.v
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [13]

:[15]
push.v local.i
pushloc.v local.len
add.v.v
pop.v.v local.i
b [8]

:[16]
call.i surface_reset_target(argc=0)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[17]
pushbltn.v self.current_time
push.v self.fakecrash_blank_time
cmp.v.v LT
bf [19]

:[18]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.fakecrash_surface
call.i draw_surface(argc=3)
popz.v
b [21]

:[19]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i window_get_height(argc=0)
pushi.e 1
sub.i.v
call.i window_get_width(argc=0)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.fakecrash_stopped_sounds
conv.v.b
not.b
bf [21]

:[20]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
pop.v.i self.fakecrash_stopped_sounds

:[21]
pushbltn.v self.current_time
push.v self.fakecrash_reset_time
cmp.v.v GTE
bf [end]

:[22]
pushglb.v global.savedata_async_id
pushi.e -1
cmp.i.v EQ
bf [end]

:[23]
push.v self.fakecrash_surface
call.i surface_free(argc=1)
popz.v
call.i game_restart(argc=0)
popz.v

:[end]