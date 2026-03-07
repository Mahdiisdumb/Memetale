.localvar 0 arguments

:[0]
push.v self.knockfactor
pop.v.v 1592.knockfactor
pushi.e 1592
pushenv [12]

:[1]
push.v self.object_index
pushi.e 1593
cmp.i.v NEQ
bf [12]

:[2]
pushi.e 255
push.v self.knockfactor
pushi.e 5
mul.i.v
sub.v.i
pushi.e 255
push.v self.knockfactor
pushi.e 5
mul.i.v
sub.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend
pushi.e 255
push.v self.knockfactor
pushi.e 5
mul.i.v
sub.v.i
pushi.e 255
push.v self.knockfactor
pushi.e 5
mul.i.v
sub.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.blend2
push.v self.xstart
push.v self.knockfactor
pushi.e 3
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.knockfactor
pushi.e 3
mul.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
push.v self.knockfactor
pushi.e 3
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.knockfactor
pushi.e 3
mul.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y
push.v self.object_index
pushi.e 1594
cmp.i.v EQ
bt [4]

:[3]
push.v self.object_index
pushi.e 1596
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y

:[7]
push.v self.object_index
pushi.e 1661
cmp.i.v EQ
bf [12]

:[8]
push.v self.y
pushi.e 80
sub.i.v
pop.v.v self.y
push.v self.x
pushi.e 320
cmp.i.v GT
bf [10]

:[9]
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x

:[10]
push.v self.x
pushi.e 320
cmp.i.v LT
bf [12]

:[11]
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x

:[12]
popenv [1]
push.v self.knockfactor
pushi.e 1
sub.i.v
pop.v.v self.knockfactor
pushi.e 1
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm
push.v self.knockfactor
pushi.e 0
cmp.i.v LT
bf [end]

:[13]
pushi.e -1
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[end]