.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 5
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v LT
bf [15]

:[2]
push.v self.y
push.v self.seed
push.v self.i
push.v self.factor
mul.v.v
add.v.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.toothyy
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.toothxx
push.v self.toothspeed
add.v.v
pop.i.v [array]self.toothxx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v GT
bf [4]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.toothxx

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
bf [6]

:[5]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.toothxx

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothyy
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [8]

:[7]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothyy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
call.i draw_line(argc=4)
popz.v

:[8]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothyy
push.v self.toothdist
add.v.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v LT
bf [10]

:[9]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothyy
push.v self.toothdist
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
call.i draw_line(argc=4)
popz.v

:[10]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothyy
pushi.e 3
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
call.i collision_line(argc=7)
conv.v.b
bf [12]

:[11]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothyy
push.v self.toothdist
add.v.v
pushi.e 3
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.toothxx
call.i collision_line(argc=7)
conv.v.b
bf [14]

:[13]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[14]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[15]
push.v self.toothdist
push.v self.vspeed
push.d 2.15
mul.d.v
sub.v.v
pop.v.v self.toothdist
push.v self.toothspeed
push.d 2.4
cmp.d.v LT
bf [end]

:[16]
push.v self.toothspeed
push.d 0.08
add.d.v
pop.v.v self.toothspeed

:[end]