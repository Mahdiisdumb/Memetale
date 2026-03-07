.localvar 0 arguments

:[0]
push.v self.CoolHell
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 180
pop.v.i self.ry
pushi.e 430
conv.i.v
pushi.e 100
conv.i.v
call.i choose(argc=2)
pop.v.v self.rx
push.v self.alrnum
pushi.e 1
add.i.v
pop.v.v self.alrnum
push.v self.alrnum
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
pushi.e 1628
conv.i.v
push.v self.ry
push.v self.rx
call.i instance_create(argc=3)
popz.v
pushi.e 55
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [end]

:[3]
pushi.e 1629
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1
pop.v.i self.CoolHell
pushi.e 1629
conv.i.v
push.v self.ry
push.v self.rx
call.i instance_create(argc=3)
pop.v.v self.act
push.v self.act
conv.v.i
pushenv [6]

:[5]
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
add.i.v
add.v.v
pop.v.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[6]
popenv [5]
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]