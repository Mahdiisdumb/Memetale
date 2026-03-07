.localvar 0 arguments

:[0]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[1]
push.v self.selected3
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.selected3

:[3]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [6]

:[4]
push.v self.selected3
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.selected3

:[6]
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [8]

:[7]
push.v self.selected3
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
push.v self.buffer
pushi.e 20
cmp.i.v GT
bf [12]

:[11]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[12]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [14]

:[13]
push.v self.selected3
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
push.v self.buffer
pushi.e 10
cmp.i.v GT
bf [end]

:[17]
pushi.e 0
pop.v.i self.selected3

:[end]