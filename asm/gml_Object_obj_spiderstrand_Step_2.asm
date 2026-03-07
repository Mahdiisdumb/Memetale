.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.myview
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
pop.v.v self.gg
push.v self.myview
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.myview

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
push.v self.xhome
pop.v.v self.x

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
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
call.i floor(argc=1)
add.v.v
pop.v.v self.x

:[6]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.gg
cmp.v.v GTE
bf [end]

:[7]
push.v self.xhome
push.v self.gg
push.v self.gg
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x

:[end]