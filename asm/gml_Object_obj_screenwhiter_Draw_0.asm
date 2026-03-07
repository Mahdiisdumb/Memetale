.localvar 0 arguments

:[0]
push.v self.ex
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.atimer
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.aaa
push.d 0.03
add.d.v
pop.v.v self.aaa

:[3]
push.v self.atimer
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.aaa
push.d 0.03
sub.d.v
pop.v.v self.aaa

:[5]
push.v self.ex
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
push.v self.atimer
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.aaa
push.d 0.015
add.d.v
pop.v.v self.aaa

:[8]
push.v self.atimer
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.aaa
push.d 0.015
sub.d.v
pop.v.v self.aaa

:[10]
push.v self.ex
pushi.e 2
cmp.i.v EQ
bf [15]

:[11]
push.v self.atimer
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.aaa
push.d 0.0075
add.d.v
pop.v.v self.aaa

:[13]
push.v self.atimer
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.aaa
push.d 0.0075
sub.d.v
pop.v.v self.aaa

:[15]
push.v self.aaa
push.d -0.03
cmp.d.v LTE
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
push.v self.aaa
push.d 1.2
cmp.d.v GTE
bf [19]

:[18]
pushi.e 1
pop.v.i self.aaa
pushi.e 1
pop.v.i self.atimer

:[19]
push.v self.aaa
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
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
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]