.localvar 0 arguments

:[0]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v 1576.x
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v 1576.y
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[3]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [10]

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.stayx
add.v.v
pop.v.v self.x
push.v self.x
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
cmp.v.v GTE
bf [6]

:[5]
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
pop.v.v self.x

:[6]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.stayy
add.v.v
pop.v.v self.y
push.v self.y
pushi.e 200
cmp.i.v LTE
bf [8]

:[7]
pushi.e 200
pop.v.i self.y

:[8]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [10]

:[9]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[10]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [end]

:[11]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[end]