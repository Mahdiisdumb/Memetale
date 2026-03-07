.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.3
conv.d.v
call.i draw_set_alpha(argc=1)
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
pushi.e 1
push.v self.xreveal
pushi.e 40
conv.i.d
div.d.v
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 300
conv.i.v
pushi.e 160
push.v self.xreveal
sub.v.i
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 300
conv.i.v
pushi.e 340
conv.i.v
pushi.e -10
conv.i.v
pushi.e 160
push.v self.xreveal
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
push.v self.xreveal
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v

:[5]
push.v self.xreveal
pushi.e 2
add.i.v
pop.v.v self.xreveal
push.v self.xreveal
pushi.e 20
cmp.i.v GTE
bf [end]

:[6]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 20
pop.v.i self.xreveal
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con

:[end]