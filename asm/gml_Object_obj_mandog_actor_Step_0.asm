.localvar 0 arguments

:[0]
push.v self.path_speed
conv.v.b
bt [2]

:[1]
push.v self.speed
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.d 0.2
pop.v.d self.image_speed
b [6]

:[5]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[6]
call.i scr_depth(argc=0)
popz.v

:[end]