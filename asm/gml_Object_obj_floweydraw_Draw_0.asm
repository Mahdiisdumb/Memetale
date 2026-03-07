.localvar 0 arguments

:[0]
pushi.e 760
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 5
pop.v.i self.depth
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v 762.y
push.v 761.x
push.v 760.y
pushi.e 5
add.i.v
push.v 760.x
pushi.e 5
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[2]
pushi.e 400
conv.i.v
pushi.e 270
conv.i.v
pushi.e 0
conv.i.v
pushi.e 23
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 420
conv.i.v
pushi.e 310
pushglb.v global.maxhp
push.d 1.2
mul.d.v
add.v.i
pushi.e 400
conv.i.v
pushi.e 310
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 420
conv.i.v
pushi.e 310
pushglb.v global.hp
push.d 1.2
mul.d.v
add.v.i
pushi.e 400
conv.i.v
pushi.e 310
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushglb.v global.hp
call.i string(argc=1)
pop.v.v self.hpwrite
pushglb.v global.hp
pushi.e 10
cmp.i.v LT
bf [4]

:[3]
push.s "0"@3159
pushglb.v global.hp
call.i string(argc=1)
add.v.s
pop.v.v self.hpwrite

:[4]
push.s "LV "@47978
pushglb.v global.lv
call.i string(argc=1)
add.v.s
pushi.e 400
conv.i.v
pushi.e 200
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.hpwrite
push.s " / "@5084
add.s.v
pushglb.v global.maxhp
call.i string(argc=1)
add.v.v
pushi.e 400
conv.i.v
pushi.e 330
pushglb.v global.maxhp
push.d 1.2
mul.d.v
add.v.i
call.i draw_text(argc=3)
popz.v

:[end]