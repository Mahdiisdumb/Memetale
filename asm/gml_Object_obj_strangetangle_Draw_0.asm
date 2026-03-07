.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [10]

:[1]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.oo
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 30
cmp.i.v LT
bf [9]

:[3]
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y1
pushi.e 16
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x1
pushi.e 16
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x1
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.oo
b [8]

:[7]
pushi.e 0
pop.v.i self.oo

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[9]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[10]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.w
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.w
push.v self.h
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.h

:[end]