.localvar 0 arguments

:[0]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [4]

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
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[4]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.stayx
add.v.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.stayy
add.v.v
pop.v.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [7]

:[6]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[7]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [10]

:[8]
push.d 0.4
pop.v.d self.gravity
push.v self.image_angle
push.v self.ang
add.v.v
pop.v.v self.image_angle
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

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