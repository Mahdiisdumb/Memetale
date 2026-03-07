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
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 20
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_line(argc=7)
conv.v.b
bf [3]

:[2]
pushi.e 3
pop.v.i self.con
b [4]

:[3]
pushi.e 20
pop.v.i self.con

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [8]

:[5]
push.v 1576.x
push.v self.x
cmp.v.v LT
bf [7]

:[6]
pushi.e 2
pop.v.i self.hspeed
pushi.e 9
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.con
b [8]

:[7]
pushi.e -2
pop.v.i self.hspeed
pushi.e 9
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.con

:[8]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.hspeed
pushi.e 20
pop.v.i self.con

:[10]
push.v self.gtfo
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
pushi.e 5
pop.v.i self.vspeed

:[end]