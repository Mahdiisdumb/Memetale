.localvar 0 arguments
.localvar 1 roomname 9745
.localvar 2 lvtext 9746
.localvar 3 timetext 9747
.localvar 4 namesize 9748
.localvar 5 lvsize 9749
.localvar 6 timesize 9750
.localvar 7 x_center 9751
.localvar 8 lvpos 9752
.localvar 9 namepos 9753
.localvar 10 timepos 9754
.localvar 11 continue_pos 9755
.localvar 12 restart_pos 9756

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.s "flowey_load_room"@31523
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.roomname
push.s "flowey_load_lv"@31519
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.lvtext
push.s "flowey_load_time"@31521
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.timetext
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
push.v self.name
call.i substr(argc=3)
call.i string_width(argc=1)
pop.v.v local.namesize
pushloc.v local.lvtext
call.i string_width(argc=1)
pop.v.v local.lvsize
pushloc.v local.timetext
call.i string_width(argc=1)
pop.v.v local.timesize
pushi.e 160
pop.v.i local.x_center
pushloc.v local.x_center
pushloc.v local.namesize
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local.timesize
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushloc.v local.lvsize
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i round(argc=1)
pop.v.v local.lvpos
pushi.e 70
pop.v.i local.namepos
pushi.e 250
pop.v.i local.timepos
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
push.v local.namepos
pushi.e 6
sub.i.v
pop.v.v local.namepos
push.v local.timepos
pushi.e 6
add.i.v
pop.v.v local.timepos

:[2]
push.v self.name
pushi.e 62
conv.i.v
pushloc.v local.namepos
call.i draw_text(argc=3)
popz.v
pushloc.v local.lvtext
pushi.e 62
conv.i.v
pushloc.v local.lvpos
call.i draw_text(argc=3)
popz.v
pushloc.v local.timetext
pushi.e 62
conv.i.v
pushloc.v local.timepos
pushloc.v local.timesize
sub.v.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.roomname
pushi.e 80
conv.i.v
pushloc.v local.x_center
call.i scr_drawtext_centered(argc=3)
popz.v
pushi.e 85
pop.v.i local.continue_pos
pushi.e 175
pop.v.i local.restart_pos
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [4]

:[3]
pushloc.v local.namepos
pop.v.v local.continue_pos
pushloc.v local.timepos
push.s "flowey_load_restart"@31526
conv.s.v
call.i scr_gettext(argc=1)
call.i string_width(argc=1)
sub.v.v
pop.v.v local.restart_pos

:[4]
push.v self.selected3
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [7]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
push.s "flowey_load_continue"@31524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 110
conv.i.v
pushloc.v local.continue_pos
call.i draw_text(argc=3)
popz.v
push.v self.selected3
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [10]

:[9]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[10]
push.s "flowey_load_restart"@31526
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 110
conv.i.v
pushloc.v local.restart_pos
call.i draw_text(argc=3)
popz.v

:[end]