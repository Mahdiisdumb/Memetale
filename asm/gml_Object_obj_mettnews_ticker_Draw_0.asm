.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 242
add.i.v
push.v self.voff
add.v.v
push.v self.x
pushi.e 330
add.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.voff
add.v.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.write
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.tx
pushi.e 1
add.i.v
pop.v.v self.tx
push.v self.doom
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.tx
pushi.e 4
add.i.v
pop.v.v self.tx

:[3]
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.doom
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.stringer
push.v self.y
pushi.e 10
add.i.v
push.v self.voff
add.v.v
push.v self.x
pushi.e 320
add.i.v
push.v self.tx
sub.v.v
call.i draw_text(argc=3)
popz.v

:[5]
push.v self.doom
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.v self.stringer
push.v self.y
pushi.e 10
add.i.v
push.v self.voff
add.v.v
push.v self.x
pushi.e 320
add.i.v
push.v self.tx
sub.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[7]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1886
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.doom
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
push.v self.doomtimer
pushi.e 1
add.i.v
pop.v.v self.doomtimer
push.v self.doomtimer
pushi.e 150
cmp.i.v GT
bf [10]

:[9]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
push.v self.voff
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.voff
pushi.e 4
sub.i.v
pop.v.v self.voff

:[12]
push.v self.voff
pushi.e 0
cmp.i.v LTE
bf [14]

:[13]
pushi.e 0
pop.v.i self.voff

:[14]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]