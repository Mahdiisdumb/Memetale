.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.12
mul.d.v
pop.v.v self.ac
pushi.e 0
pop.v.i self.s

:[1]
push.v self.s
pushi.e 50
cmp.i.v LT
bf [end]

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.s
push.v self.siner
add.v.v
pushi.e 35
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.15
mul.d.v
pop.v.v self.ac
push.d 0.5
push.v self.ac
add.v.d
push.v self.s
pushi.e 40
conv.i.d
div.d.v
sub.v.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
push.v self.s
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
add.i.v
push.v self.y
push.v self.s
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.s
pushi.e 2
mul.i.v
add.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
b [1]

:[end]