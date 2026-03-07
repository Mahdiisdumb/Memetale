.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.down
pushi.e 265
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 265.rating
pop.v.v self.rating
b [3]

:[2]
pushi.e 10
pop.v.i self.rating

:[3]
pushi.e 0
pop.v.i self.image_speed
push.v self.object_index
call.i instance_number(argc=1)
pop.v.v self.countdown
push.v self.countdown
pushi.e 1
cmp.i.v LTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_index

:[5]
pushi.e 0
pop.v.i self.part
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.site
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.speedmod
pushi.e 0
pop.v.i self.alphoid
pushi.e 0
pop.v.i self.image_alpha
pushi.e 264
pop.v.i self.object0
pushi.e 7
pop.v.i self.dmg

:[end]