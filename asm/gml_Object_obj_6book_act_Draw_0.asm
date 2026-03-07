.localvar 0 arguments

:[0]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
push.d 0.08
cmp.d.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con
push.i 999999
cmp.i.v EQ
bf [end]

:[5]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.con
pushi.e 3
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 240
conv.i.v
pushi.e 500
conv.i.v
pushi.e 150
conv.i.v
pushi.e 200
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "obj_6book_act_179"@8737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 180
conv.i.v
pushi.e 200
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[11]
pushi.e 1
pop.v.i self.type
pushi.e 1628
pushenv [13]

:[12]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
popenv [12]
push.d 2.1
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [end]

:[15]
pushi.e 1628
pushenv [17]

:[16]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[17]
popenv [16]
pushi.e 3
pop.v.i self.con

:[end]