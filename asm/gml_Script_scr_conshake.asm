.localvar 0 arguments

:[0]
push.v self.consiner
pushi.e 1
add.i.v
pop.v.v self.consiner
push.v self.conshakex
push.v self.consiner
call.i sin(argc=1)
pushbltn.v self.argument0
mul.v.v
add.v.v
pushi.e -1
push.l 0
conv.l.i
pop.v.v [array]self.view_xview
push.v self.conshakey
push.v self.consiner
call.i cos(argc=1)
pushbltn.v self.argument0
mul.v.v
add.v.v
pushi.e -1
push.l 0
conv.l.i
pop.v.v [array]self.view_yview

:[end]