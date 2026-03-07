.localvar 0 arguments

:[0]
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[2]
push.v self.blue
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[4]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v LTE
bf [6]

:[5]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.x
pushi.e 5
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 2
add.i.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[9]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 749
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.x
pushi.e 5
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 2
add.i.v
push.v self.x
call.i collision_rectangle(argc=7)
conv.v.b
bf [11]

:[10]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.x
pushi.e 5
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 2
add.i.v
push.v self.x
call.i collision_rectangle(argc=7)
conv.v.b
bf [13]

:[12]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]