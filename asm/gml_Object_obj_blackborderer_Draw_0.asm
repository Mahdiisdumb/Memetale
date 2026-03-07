.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 60
add.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 640
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 170
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]