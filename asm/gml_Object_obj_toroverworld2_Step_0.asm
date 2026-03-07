.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v 1576.y
push.v self.y
pushi.e 80
add.i.v
cmp.v.v GT
bf [4]

:[1]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 30
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.t

:[3]
b [9]

:[4]
pushi.e 24
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.path_speed
push.v 1576.y
push.v self.y
pushi.e 65
add.i.v
cmp.v.v LT
bf [6]

:[5]
pushi.e 3
pop.v.i self.path_speed

:[6]
push.v 1576.y
push.v self.y
pushi.e 50
add.i.v
cmp.v.v LT
bf [8]

:[7]
pushi.e 4
pop.v.i self.path_speed

:[8]
push.d 0.2
pop.v.d self.image_speed

:[9]
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v

:[end]