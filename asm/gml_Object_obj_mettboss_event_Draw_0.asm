.localvar 0 arguments

:[0]
push.v self.drawblack
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.bl
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
push.v self.bl
pushi.e 4
add.i.v
pop.v.v self.bl

:[3]
push.v self.bl
pushi.e 20
cmp.i.v GT
bf [5]

:[4]
pushi.e 20
pop.v.i self.bl
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v

:[5]
push.v self.x_maroon
call.i draw_set_color(argc=1)
popz.v
pushi.e 880
conv.i.v
pushi.e 140
conv.i.v
pushi.e 840
push.v self.bly
add.v.i
pushi.e 140
push.v self.bl
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 880
conv.i.v
pushi.e 180
conv.i.v
pushi.e 840
push.v self.bly
add.v.i
pushi.e 180
push.v self.bl
sub.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]