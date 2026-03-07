.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.timer
pushi.e 640
cmp.i.v GTE
bf [2]

:[1]
push.v self.death
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.i -90000
pop.v.i self.depth
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[5]
push.v self.death
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.timer
pushi.e 850
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
push.i -90000
pop.v.i self.depth
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]