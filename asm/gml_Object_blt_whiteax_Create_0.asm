.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.hard
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.visible
pushi.e 114
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_alpha
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.axetype
b [3]

:[2]
pushi.e 0
pop.v.i self.axetype

:[3]
push.v self.axetype
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 130
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
b [6]

:[5]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed

:[6]
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 309
pop.v.i self.y
push.v self.x
pushi.e 140
cmp.i.v LT
bf [8]

:[7]
pushi.e 99
pop.v.i self.x
b [9]

:[8]
pushi.e 350
pop.v.i self.x

:[9]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.g
pushi.e 0
pop.v.i self.hurted
pushi.e 0
pop.v.i self.blconnum
pushi.e 0
pop.v.i self.move

:[end]