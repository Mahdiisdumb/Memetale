.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.party
add.v.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partx
add.v.v
push.v self.fakeanim
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.fakeanim
push.d 0.1
add.d.v
pop.v.v self.fakeanim
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -1
pushi.e 7
dup.i 1
push.v [array]self.party
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
add.v.v
pop.i.v [array]self.party
pushi.e -1
pushi.e 6
dup.i 1
push.v [array]self.party
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.i.v [array]self.party
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.party
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.i.v [array]self.party
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.party
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.i.v [array]self.party
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.party
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.i.v [array]self.party
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.party
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.v
pop.i.v [array]self.party

:[5]
pushi.e 636
pushi.e -1
pushi.e 7
pop.v.i [array]self.part
pushi.e 637
pushi.e -1
pushi.e 6
pop.v.i [array]self.part
pushi.e 634
pushi.e -1
pushi.e 5
pop.v.i [array]self.part
pushi.e 635
pushi.e -1
pushi.e 4
pop.v.i [array]self.part
pushi.e 638
pushi.e -1
pushi.e 3
pop.v.i [array]self.part
pushi.e 639
pushi.e -1
pushi.e 2
pop.v.i [array]self.part
pushi.e 640
pushi.e -1
pushi.e 1
pop.v.i [array]self.part
pushi.e 632
pushi.e -1
pushi.e 0
pop.v.i [array]self.part

:[end]