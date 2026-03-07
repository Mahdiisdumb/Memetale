.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.interact
push.v 1575.left
conv.v.b
bf [2]

:[1]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[2]
push.v 1575.right
conv.v.b
bf [4]

:[3]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[4]
push.v 1575.up
conv.v.b
bf [6]

:[5]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[6]
push.v 1575.down
conv.v.b
bf [8]

:[7]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[8]
push.v self.bbox_left
push.v self.xbound
cmp.v.v LT
bf [10]

:[9]
push.v self.xprevious
pop.v.v self.x

:[10]
push.v self.bbox_right
push.v self.xbound2
cmp.v.v GT
bf [12]

:[11]
push.v self.xprevious
pop.v.v self.x

:[12]
push.v self.bbox_bottom
push.v self.ybound2
cmp.v.v GT
bf [14]

:[13]
push.v self.yprevious
pop.v.v self.y

:[14]
push.v self.bbox_top
push.v self.ybound
cmp.v.v LT
bf [16]

:[15]
push.v self.yprevious
pop.v.v self.y

:[16]
push.v self.buffer
pushi.e 1
cmp.i.v EQ
bf [22]

:[17]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [19]

:[18]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 1
pop.v.i self.dest

:[22]
push.v self.dest
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.dest_timer
pushi.e 1
add.i.v
pop.v.v self.dest_timer

:[24]
push.v self.dest_timer
pushi.e 2
cmp.i.v GTE
bf [end]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]