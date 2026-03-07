.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
pushi.e 200
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
add.v.i
pop.v.v self.x

:[2]
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
pop.v.v self.gg
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.gg
cmp.v.v GTE
bf [end]

:[3]
pushi.e 200
push.v self.gg
push.v self.gg
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.i
pop.v.v self.x

:[end]