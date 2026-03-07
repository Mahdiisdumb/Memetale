.localvar 0 arguments

:[0]
pushi.e 300
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 300
pop.v.i 1576.x
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.size
pushi.e 2
conv.i.d
div.d.v
push.d 0.2
add.d.v
pop.v.v self.image_alpha
push.v self.ystart
pushi.e 15
sub.i.v
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 30
conv.i.d
push.v self.size
div.v.d
add.v.v
pop.v.v self.y
push.v self.size
pushi.e 5
conv.i.d
div.d.v
push.d 0.1
add.d.v
pop.v.v self.scrollspeed
pushi.e 10
conv.i.v
call.i random(argc=1)
pop.v.v self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.go
push.v self.rememberx
pop.v.v 1576.x
push.v self.rememberview
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.xhome
pop.v.v self.x
push.v 1576.x
pushbltn.v self.room_width
pushi.e 90
sub.i.v
cmp.v.v GT
bf [end]

:[1]
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[2]
push.v self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [4]

:[3]
push.v self.x
pushi.e 320
sub.i.v
pop.v.v self.x
push.v self.xhome
pushi.e 320
sub.i.v
pop.v.v self.xhome

:[4]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[5]
popz.i

:[end]