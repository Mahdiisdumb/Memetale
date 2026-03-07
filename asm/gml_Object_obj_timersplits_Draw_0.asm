.localvar 0 arguments

:[0]
pushi.e -1
push.v self.splitno
conv.v.i
dup.i 1
push.v [array]self.split
pushi.e 1
add.i.v
pop.i.v [array]self.split
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.splitno
pushi.e 1
add.i.v
cmp.v.v LT
bf [end]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.split
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 10
add.i.v
push.v self.i
pushi.e 15
mul.i.v
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]