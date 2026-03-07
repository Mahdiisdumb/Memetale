.localvar 0 arguments

:[0]
push.v self.golf
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.falling
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.yprevious
pop.v.v self.y
push.v self.xprevious
pop.v.v self.x
push.v self.speed
push.d 0.06
cmp.d.v LTE
bf [6]

:[5]
pushi.e 0
pop.v.i self.speed
b [7]

:[6]
push.v self.speed
push.d 0.05
sub.d.v
pop.v.v self.speed

:[7]
push.v other.bbox_right
push.v self.bbox_left
cmp.v.v LT
bf [9]

:[8]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[9]
push.v other.bbox_left
push.v self.bbox_right
cmp.v.v GT
bf [11]

:[10]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[11]
push.v other.bbox_top
push.v self.bbox_bottom
cmp.v.v GT
bf [13]

:[12]
push.v self.y
pushi.e 2
sub.i.v
pop.v.v self.y
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[13]
push.v other.bbox_bottom
push.v self.bbox_top
cmp.v.v LT
bf [15]

:[14]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[15]
pushi.e 1
pop.v.i self.golf

:[end]