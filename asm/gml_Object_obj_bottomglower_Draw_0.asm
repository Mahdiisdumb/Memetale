.localvar 0 arguments
.localvar 1 bottom 8205
.localvar 2 top 8206

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.alp
push.v self.siner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v self.go
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.cw
pushi.e 0
pop.v.i self.w
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [9]

:[2]
push.v self.go
push.v self.i
pushi.e 10
conv.i.d
div.d.v
sub.v.v
push.d 1.2
div.d.v
pop.v.v self.alp
push.v self.xmode
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.alp
push.d 1.8
div.d.v
pop.v.v self.alp

:[4]
push.v self.alp
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self.alp

:[6]
push.v self.alp
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 10
push.v self.i
sub.v.i
push.v self.go
mul.v.v
push.d 1.4
mul.d.v
pop.v.v self.w
push.v self.xmode
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.w
push.d 1.2
div.d.v
pop.v.v self.w

:[8]
push.v self.w
call.i round(argc=1)
pop.v.v self.w
pushbltn.v self.room_height
push.v self.cw
sub.v.v
pop.v.v local.bottom
pushbltn.v self.room_height
push.v self.cw
sub.v.v
push.v self.w
sub.v.v
pushi.e 1
add.i.v
pop.v.v local.top
pushloc.v local.top
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 330
add.i.v
pushloc.v local.bottom
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 10
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.cw
push.v self.w
add.v.v
pop.v.v self.cw
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[9]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]