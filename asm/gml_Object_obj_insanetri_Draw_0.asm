.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.no
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 1
conv.i.v
push.v self.targety
push.v self.h
call.i random(argc=1)
add.v.v
push.v self.targetx
push.v self.w
call.i random(argc=1)
add.v.v
push.v self.targety
push.v self.h
call.i random(argc=1)
add.v.v
push.v self.targetx
push.v self.w
call.i random(argc=1)
add.v.v
push.v self.targety
push.v self.h
call.i random(argc=1)
add.v.v
push.v self.targetx
push.v self.w
call.i random(argc=1)
add.v.v
call.i draw_triangle(argc=7)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i

:[end]