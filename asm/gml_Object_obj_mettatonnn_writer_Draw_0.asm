.localvar 0 arguments
.localvar 1 ch 2783
.localvar 2 spacing 2784
.localvar 3 xstart_top 2785
.localvar 4 ystart_top 2786
.localvar 5 limit_top 2787
.localvar 6 xstart_right 2788
.localvar 7 ystart_right 2789
.localvar 8 limit_right 2790
.localvar 9 xstart_bottom 2791
.localvar 10 ystart_bottom 2792
.localvar 11 limit_bottom 2793
.localvar 12 xstart_left 2794
.localvar 13 ystart_left 2795
.localvar 14 count 2797
.localvar 15 count_top 2798
.localvar 16 count_right 2799
.localvar 17 count_bottom 2800
.localvar 18 count_left 2801
.localvar 19 xx 2802
.localvar 20 yy 2803
.localvar 21 i 2804

:[0]
push.s "n"@359
pop.v.s local.ch
pushi.e 14
pop.v.i local.spacing
pushi.e 431
pop.v.i local.xstart_top
pushi.e 82
pop.v.i local.ystart_top
pushi.e 13
pop.v.i local.limit_top
pushbltn.v self.room_width
pushi.e 6
sub.i.v
pop.v.v local.xstart_right
pushi.e 116
pop.v.i local.ystart_right
pushi.e 20
pop.v.i local.limit_right
pushbltn.v self.room_width
pushi.e 40
sub.i.v
pop.v.v local.xstart_bottom
pushbltn.v self.room_height
pushi.e 20
sub.i.v
pop.v.v local.ystart_bottom
pushi.e 32
pop.v.i local.limit_bottom
pushi.e 0
pop.v.i local.xstart_left
pushi.e 0
pop.v.i local.ystart_left
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
push.s "ン"@48360
pop.v.s local.ch
pushi.e 28
pop.v.i local.spacing
pushi.e 317
pop.v.i local.xstart_top
pushi.e 97
pop.v.i local.ystart_top
pushbltn.v self.room_width
pushi.e 6
sub.i.v
pushloc.v local.xstart_top
sub.v.v
pushloc.v local.spacing
div.v.v
call.i floor(argc=1)
pop.v.v local.limit_top
pushbltn.v self.room_width
pushi.e 6
sub.i.v
pop.v.v local.xstart_right
pushloc.v local.ystart_top
pushi.e 30
add.i.v
pop.v.v local.ystart_right
pushbltn.v self.room_height
pushi.e 16
sub.i.v
pushloc.v local.ystart_right
sub.v.v
pushloc.v local.spacing
div.v.v
call.i floor(argc=1)
pop.v.v local.limit_right
pushbltn.v self.room_width
pushi.e 34
sub.i.v
pop.v.v local.xstart_bottom
pushbltn.v self.room_height
pushi.e 16
sub.i.v
pop.v.v local.ystart_bottom
pushi.e 6
pushloc.v local.xstart_bottom
sub.v.i
pushloc.v local.spacing
neg.v
div.v.v
call.i floor(argc=1)
pop.v.v local.limit_bottom
pushi.e 6
pop.v.i local.xstart_left
pushbltn.v self.room_height
pushi.e 46
sub.i.v
pop.v.v local.ystart_left

:[2]
push.v 308.mettamt
pop.v.v local.count
pushloc.v local.count
pop.v.v local.count_top
pushloc.v local.count
pushloc.v local.limit_top
cmp.v.v GT
bf [4]

:[3]
pushloc.v local.limit_top
pop.v.v local.count_top

:[4]
push.v local.count
pushloc.v local.count_top
sub.v.v
pop.v.v local.count
pushloc.v local.count
pop.v.v local.count_right
pushloc.v local.count
pushloc.v local.limit_right
cmp.v.v GT
bf [6]

:[5]
pushloc.v local.limit_right
pop.v.v local.count_right

:[6]
push.v local.count
pushloc.v local.count_right
sub.v.v
pop.v.v local.count
pushloc.v local.count
pop.v.v local.count_bottom
pushloc.v local.count
pushloc.v local.limit_bottom
cmp.v.v GT
bf [8]

:[7]
pushloc.v local.limit_bottom
pop.v.v local.count_bottom

:[8]
push.v local.count
pushloc.v local.count_bottom
sub.v.v
pop.v.v local.count
pushloc.v local.count
pop.v.v local.count_left
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.xstart_top
pop.v.v local.xx
pushloc.v local.ystart_top
pop.v.v local.yy
pushi.e 0
pop.v.i local.i

:[9]
pushloc.v local.i
pushloc.v local.count_top
cmp.v.v LT
bf [11]

:[10]
pushloc.v local.ch
pushloc.v local.yy
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
pushloc.v local.xx
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.v local.xx
pushloc.v local.spacing
add.v.v
pop.v.v local.xx
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [9]

:[11]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v NEQ
bf [13]

:[12]
push.v local.spacing
pushi.e 2
add.i.v
pop.v.v local.spacing

:[13]
pushloc.v local.xstart_right
pop.v.v local.xx
pushloc.v local.ystart_right
pop.v.v local.yy
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
pushloc.v local.count_right
cmp.v.v LT
bf [16]

:[15]
pushi.e 270
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.ch
pushloc.v local.yy
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
pushloc.v local.xx
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v local.yy
pushloc.v local.spacing
add.v.v
pop.v.v local.yy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[16]
pushloc.v local.xstart_bottom
pop.v.v local.xx
pushloc.v local.ystart_bottom
pop.v.v local.yy
pushi.e 0
pop.v.i local.i

:[17]
pushloc.v local.i
pushloc.v local.count_bottom
cmp.v.v LT
bf [19]

:[18]
pushi.e 180
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.ch
pushloc.v local.yy
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
pushloc.v local.xx
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v local.xx
pushloc.v local.spacing
sub.v.v
pop.v.v local.xx
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [17]

:[19]
pushloc.v local.xstart_left
pop.v.v local.xx
pushloc.v local.ystart_left
pop.v.v local.yy
pushi.e 0
pop.v.i local.i

:[20]
pushloc.v local.i
pushloc.v local.count_left
cmp.v.v LT
bf [end]

:[21]
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.ch
pushloc.v local.yy
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
pushloc.v local.xx
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v local.yy
pushloc.v local.spacing
sub.v.v
pop.v.v local.yy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [20]

:[end]