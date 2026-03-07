.localvar 0 arguments

:[0]
push.v self.bonk
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.bonk
b [10]

:[2]
push.v 1575.left
conv.v.b
bf [4]

:[3]
push.v self.hspeed
push.d 0.6
push.v self.size
div.v.d
push.d 0.05
add.d.v
sub.v.v
pop.v.v self.hspeed

:[4]
push.v 1575.up
conv.v.b
bf [6]

:[5]
push.v self.vspeed
push.d 0.6
push.v self.size
div.v.d
push.d 0.05
add.d.v
sub.v.v
pop.v.v self.vspeed

:[6]
push.v 1575.right
conv.v.b
bf [8]

:[7]
push.v self.hspeed
push.d 0.6
push.v self.size
div.v.d
push.d 0.05
add.d.v
add.v.v
pop.v.v self.hspeed

:[8]
push.v 1575.down
conv.v.b
bf [10]

:[9]
push.v self.vspeed
push.d 0.6
push.v self.size
div.v.d
push.d 0.05
add.d.v
add.v.v
pop.v.v self.vspeed

:[10]
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y

:[end]