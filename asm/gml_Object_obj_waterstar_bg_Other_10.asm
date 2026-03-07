.localvar 0 arguments

:[0]
push.v self.f_test
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.myview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.myview_b
push.v self.g_heart
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
push.v 1576.x
pushbltn.v self.room_width
pushi.e 160
sub.i.v
cmp.v.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.myview
pushi.e 140
sub.i.v
pop.v.v self.myview

:[6]
push.v self.g_heart
pushi.e 1
add.i.v
pop.v.v self.g_heart
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
pop.v.v self.gg
push.v self.myview
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
pop.v.i self.myview

:[8]
push.v self.x
push.v self.myview
pushi.e 20
sub.i.v
cmp.v.v LT
bf [10]

:[9]
push.v self.myview
push.v self.gg
cmp.v.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v self.x
pushi.e 350
add.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
add.i.v
pop.v.v self.xhome

:[13]
push.v self.x
push.v self.myview
pushi.e 340
add.i.v
cmp.v.v GT
bf [15]

:[14]
push.v self.x
pushi.e 350
sub.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 350
sub.i.v
pop.v.v self.xhome

:[15]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GTE
bf [17]

:[16]
push.v self.xhome
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i round(argc=1)
add.v.v
pop.v.v self.x

:[17]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.gg
cmp.v.v GTE
bf [end]

:[18]
push.v self.xhome
push.v self.gg
push.v self.gg
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i round(argc=1)
add.v.v
pop.v.v self.x

:[end]