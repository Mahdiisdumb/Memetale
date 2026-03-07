.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 9
cmp.i.v LTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.dark

:[2]
push.v self.dark
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.darkamt
push.d 0.5
cmp.d.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.darkamt
push.d 0.05
add.d.v
pop.v.v self.darkamt

:[7]
push.v self.dark
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.darkamt
pushi.e 0
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.darkamt
push.d 0.05
sub.d.v
pop.v.v self.darkamt

:[12]
push.v self.darkamt
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]