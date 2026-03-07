.localvar 0 arguments

:[0]
push.v self.ystart
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 0
conv.i.v
call.i draw_self_custom(argc=4)
popz.v
push.v self.yoff
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[2]
push.v self.yoff
pushi.e 1
sub.i.v
pop.v.v self.yoff
push.v self.x
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
add.v.v
cmp.v.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.x
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_xview
pushi.e 10
sub.i.v
cmp.v.v LT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.y
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_yview
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_hview
add.v.v
pushi.e 30
add.i.v
cmp.v.v GT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.y
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_yview
cmp.v.v LT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]