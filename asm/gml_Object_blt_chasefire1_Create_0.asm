.localvar 0 arguments

:[0]
pushi.e 684
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.dmg
pushglb.v global.hp
pushi.e 7
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
pop.v.i self.dmg

:[2]
push.d 0.5
pop.v.d self.image_speed
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 45
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.bounced

:[end]