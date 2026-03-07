.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
pushbltn.v self.argument1
pushi.e 10
add.i.v
pushbltn.v self.argument0
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushbltn.v self.argument3
add.v.v
pop.i.v [stacktop]self.writingx
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushbltn.v self.argument3
add.v.v
pop.i.v [stacktop]self.writingxend
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingy
pushbltn.v self.argument4
add.v.v
pop.i.v [stacktop]self.writingy
pushi.e 189
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 30
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.v self.writer
push.v self.blcon
conv.v.i
pop.v.v [stacktop]self.parent
pushbltn.v self.argument2
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 39
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[2]
pushbltn.v self.argument2
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingy
pushi.e 20
sub.i.v
pop.i.v [stacktop]self.writingy
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 20
sub.i.v
pop.i.v [stacktop]self.writingx

:[4]
pushbltn.v self.argument2
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 38
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingy
pushi.e 20
sub.i.v
pop.i.v [stacktop]self.writingy

:[6]
pushbltn.v self.argument2
pushi.e 4
cmp.i.v EQ
bf [end]

:[7]
pushi.e 34
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingx
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.writingx

:[end]