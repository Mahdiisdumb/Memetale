.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.testhp
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "Game Under"@48966
conv.s.v
pushi.e 20
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "Big Wienener Zone."@48967
conv.s.v
pushi.e 20
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[3]
push.s "Hall of failure."@48968
conv.s.v
pushi.e 80
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 26
pop.v.i self.i

:[4]
push.v self.i
pushi.e 57
cmp.i.v LT
bf [6]

:[5]
push.s "Attack "@48969
push.v self.i
call.i string(argc=1)
add.v.s
push.s " : "@46955
add.s.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.failure
call.i string(argc=1)
add.v.v
pushi.e 100
push.v self.i
pushi.e 26
sub.i.v
pushi.e 12
mul.i.v
add.v.i
pushi.e 50
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.s "TAke a screenshot#of this every time#for balancing purposes."@48970
conv.s.v
pushi.e 240
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Hold SPACEBAR to restart from#Attack 30"@48971
conv.s.v
pushi.e 360
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]