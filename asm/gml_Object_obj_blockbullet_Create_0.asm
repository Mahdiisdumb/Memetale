.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
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
pushi.e 0
pop.v.i self.down
pushi.e 0
pop.v.i self.image_speed
push.v self.object_index
call.i instance_number(argc=1)
pop.v.v self.countdown
push.v self.countdown
pushi.e 1
cmp.i.v LTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_index

:[2]
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