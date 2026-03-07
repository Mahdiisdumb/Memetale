.localvar 0 arguments
.localvar 1 new_state 873
.localvar 2 i 878

:[0]
pushi.e 90
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [2]

:[1]
pushi.e 13
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
pop.v.b local.new_state
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [8]

:[4]
pushloc.v local.new_state
conv.v.b
bt [6]

:[5]
pushglb.v global.button0
pushi.e 0
conv.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
b [7]

:[6]
push.e 1

:[7]
pop.v.b local.new_state
b [13]

:[8]
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [13]

:[9]
pushloc.v local.new_state
conv.v.b
bt [11]

:[10]
pushglb.v global.button0
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
b [12]

:[11]
push.e 1

:[12]
pop.v.b local.new_state

:[13]
pushloc.v local.new_state
pushi.e -5
pushi.e 0
pop.v.v [array]global.control_new_state
pushi.e 88
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [15]

:[14]
pushi.e 16
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [16]

:[15]
push.e 1

:[16]
pop.v.b local.new_state
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [21]

:[17]
pushloc.v local.new_state
conv.v.b
bt [19]

:[18]
pushglb.v global.button1
pushi.e 0
conv.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
b [20]

:[19]
push.e 1

:[20]
pop.v.b local.new_state
b [26]

:[21]
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [26]

:[22]
pushloc.v local.new_state
conv.v.b
bt [24]

:[23]
pushglb.v global.button1
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
b [25]

:[24]
push.e 1

:[25]
pop.v.b local.new_state

:[26]
pushloc.v local.new_state
pushi.e -5
pushi.e 1
pop.v.v [array]global.control_new_state
pushi.e 67
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [28]

:[27]
pushi.e 17
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [29]

:[28]
push.e 1

:[29]
pop.v.b local.new_state
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [34]

:[30]
pushloc.v local.new_state
conv.v.b
bt [32]

:[31]
pushglb.v global.button2
pushi.e 0
conv.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
b [33]

:[32]
push.e 1

:[33]
pop.v.b local.new_state
b [39]

:[34]
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [39]

:[35]
pushloc.v local.new_state
conv.v.b
bt [37]

:[36]
pushglb.v global.button2
push.v 1575.j_ch
call.i joystick_check_button(argc=2)
conv.v.b
b [38]

:[37]
push.e 1

:[38]
pop.v.b local.new_state

:[39]
pushloc.v local.new_state
pushi.e -5
pushi.e 2
pop.v.v [array]global.control_new_state
pushi.e 0
pop.v.i local.i

:[40]
pushloc.v local.i
pushi.e 2
cmp.i.v LTE
bf [45]

:[41]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.control_state
conv.v.b
not.b
bf [43]

:[42]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.control_new_state
conv.v.b
b [44]

:[43]
push.e 0

:[44]
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.b [array]global.control_pressed
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.control_new_state
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.control_state
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [40]

:[45]
pushi.e 17
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [47]

:[46]
pushi.e 67
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [51]

:[50]
push.e 0

:[51]
bf [end]

:[52]
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.control_pressed
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.control_pressed

:[end]