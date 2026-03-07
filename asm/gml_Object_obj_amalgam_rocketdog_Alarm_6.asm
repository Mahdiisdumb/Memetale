.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.speed
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 1
pop.v.i self.shake
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i distance_to_point(argc=2)
pop.v.v self.betty
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i distance_to_point(argc=2)
pushi.e 50
cmp.i.v LT
bf [end]

:[1]
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.alarm
pushi.e 8
add.i.v
pop.i.v [array]self.alarm

:[end]