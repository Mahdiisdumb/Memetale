.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [7]

:[2]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.pollenalpha
push.d 0.03
add.d.v
pop.i.v [array]self.pollenalpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pollenalpha
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.truepollenalpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pollenalpha
pushi.e 2
cmp.i.v GTE
bf [4]

:[3]
pushi.e 4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pollenalpha
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.truepollenalpha

:[4]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.pollenx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pollenhspeed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.truepollenalpha
mul.v.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.i.v [array]self.pollenx
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.polleny
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pollenvspeed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.truepollenalpha
mul.v.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.i.v [array]self.polleny
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.truepollenalpha
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
pushbltn.v self.room_width
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pollenx
pushbltn.v self.room_height
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.polleny
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 1
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pollensize
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pollenhspeed
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pollenvspeed
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.pollenalpha

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.truepollenalpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pollensize
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.polleny
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pollenx
call.i draw_circle(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]