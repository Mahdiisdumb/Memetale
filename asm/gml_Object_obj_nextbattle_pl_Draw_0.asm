.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "waiting for the#next battle..."@48972
conv.s.v
pushi.e 100
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushglb.v global.attacktype
pushi.e 50
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "attack Number"@48973
pushglb.v global.attacktype
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.s
pushi.e 200
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [3]

:[2]
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "final attack"@48974
pushglb.v global.attacktype
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.s
pushi.e 200
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[3]
pushglb.v global.healno
call.i string(argc=1)
push.s " heal items left"@48975
add.s.v
pushi.e 200
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "press H to use one"@48976
conv.s.v
pushi.e 220
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "your HP is "@48977
pushglb.v global.testhp
call.i string(argc=1)
add.v.s
push.s "/20"@48978
add.s.v
pushi.e 300
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "press SPACE to continue"@48979
conv.s.v
pushi.e 400
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.attacktype
pushi.e 38
cmp.i.v EQ
bt [5]

:[4]
pushglb.v global.attacktype
pushi.e 39
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [end]

:[7]
push.i 16711680
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "blue lasers don't hit#you if you don't#move"@48980
conv.s.v
pushi.e 300
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]