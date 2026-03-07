.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.s ""@36
pop.v.s self.stringo
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "DATE POWER"@47861
pop.v.s self.stringo

:[2]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.s "FRIENDSHIP"@47862
pop.v.s self.stringo

:[4]
push.v self.stringo
push.v self.y
pushi.e 36
sub.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v
push.v self.y
pushi.e 27
add.i.v
push.v self.x
push.v self.maxlength
add.v.v
pushi.e 3
add.i.v
push.v self.y
pushi.e 3
sub.i.v
push.v self.x
pushi.e 3
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 25
add.i.v
push.v self.x
push.v self.maxlength
add.v.v
pushi.e 1
add.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
pushi.e 1
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 24
add.i.v
push.v self.x
push.v self.maxlength
add.v.v
push.v self.y
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 200
push.v self.siner
pushi.e 10
push.v self.length
mul.v.i
push.v self.maxlength
div.v.v
mul.v.v
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
pushi.e 35
push.v self.length
push.v self.maxlength
div.v.v
mul.v.i
add.v.i
mul.v.v
add.v.i
pop.v.v self.value
push.v self.value
pushi.e 255
cmp.i.v GT
bf [6]

:[5]
pushi.e 255
pop.v.i self.value

:[6]
push.v self.value
pushi.e 180
cmp.i.v LT
bf [8]

:[7]
pushi.e 180
pop.v.i self.value

:[8]
push.v self.value
pushi.e 255
conv.i.v
pushi.e 160
conv.i.v
call.i make_color_hsv(argc=3)
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 24
add.i.v
push.v self.x
push.v self.length
add.v.v
push.v self.y
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.ideallength
push.v self.length
cmp.v.v GT
bf [10]

:[9]
push.v self.length
pushi.e 1
add.i.v
pop.v.v self.length

:[10]
push.v self.ideallength
push.v self.length
cmp.v.v LT
bf [end]

:[11]
push.v self.length
pushi.e 1
sub.i.v
pop.v.v self.length

:[end]