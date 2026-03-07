.localvar 0 arguments

:[0]
push.v self.falling
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.bonk
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.bonk
b [5]

:[3]
pushi.e -1
pushi.e 2
push.v [array]self.alarm
pushi.e 1
cmp.i.v LT
bf [5]

:[4]
push.v other.bbox_left
push.v other.bbox_right
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.xxx
push.v other.bbox_top
push.v other.bbox_bottom
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.yyy
push.v self.yyy
push.v self.xxx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
push.v self.speed
pushi.e 1
conv.i.d
push.v self.size
div.v.d
push.d 0.1
add.d.v
add.v.v
pop.v.v self.speed
push.v self.hspeed
neg.v
pop.v.v self.hspeed
push.v self.vspeed
neg.v
pop.v.v self.vspeed
pushi.e 30
pop.v.i self.shrinko
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[5]
pushi.e 1
pop.v.i self.t

:[6]
pushi.e 1
pop.v.i self.timeincrease

:[end]