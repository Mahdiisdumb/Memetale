.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
cmp.v.v LT
bf [4]

:[2]
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.side
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
pushi.e 494
pop.v.i self.sprite_index
pushi.e -90
pop.v.i self.image_angle
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.lazy
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[4]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
add.i.v
cmp.v.v LT
bf [7]

:[5]
pushi.e 0
pop.v.i self.active
pushi.e 2
pop.v.i self.side
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
pushi.e 494
pop.v.i self.sprite_index
pushi.e 180
pop.v.i self.image_angle
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.lazy
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[7]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
sub.i.v
cmp.v.v GT
bf [10]

:[8]
pushi.e 0
pop.v.i self.active
pushi.e 3
pop.v.i self.side
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
pushi.e 494
pop.v.i self.sprite_index
pushi.e 90
pop.v.i self.image_angle
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.lazy
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[10]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
sub.i.v
cmp.v.v GT
bf [end]

:[11]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.side
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
pushi.e 494
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_angle
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.lazy
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]