.localvar 0 arguments

:[0]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.speed
push.d 0.03
sub.d.v
pop.v.v self.speed

:[3]
push.v self.speed
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pop.v.i self.speed

:[5]
push.v self.x
pushi.e 405
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.i
cmp.v.v GT
bf [8]

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[8]
push.v self.x
pushi.e 250
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.i
cmp.v.v LT
bf [end]

:[9]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [end]

:[10]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[end]