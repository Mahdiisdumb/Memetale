.localvar 0 arguments

:[0]
push.v self.size
push.d 0.03
sub.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.size
push.d 0.01
cmp.d.v LT
bt [2]

:[1]
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 10
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]