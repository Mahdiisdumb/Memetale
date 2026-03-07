.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i draw_rectangle(argc=5)
popz.v
push.v 1575.right
conv.v.b
bf [2]

:[1]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[5]
push.v 1575.left
conv.v.b
bf [7]

:[6]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[10]
push.v 1575.down
conv.v.b
bf [12]

:[11]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[15]
push.v 1575.up
conv.v.b
bf [17]

:[16]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
b [18]

:[17]
push.e 0

:[18]
bf [end]

:[19]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[end]