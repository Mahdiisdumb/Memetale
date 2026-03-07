.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.dmg
pushi.e 20
cmp.i.v LT
bt [10]

:[1]
push.v self.dmg
pushi.e 11
cmp.i.v EQ
bt [10]

:[2]
push.v self.dmg
pushi.e 21
cmp.i.v EQ
bt [10]

:[3]
push.v self.dmg
pushi.e 31
cmp.i.v EQ
bt [10]

:[4]
push.v self.dmg
pushi.e 41
cmp.i.v EQ
bt [10]

:[5]
push.v self.dmg
pushi.e 51
cmp.i.v EQ
bt [10]

:[6]
push.v self.dmg
pushi.e 61
cmp.i.v EQ
bt [10]

:[7]
push.v self.dmg
pushi.e 71
cmp.i.v EQ
bt [10]

:[8]
push.v self.dmg
pushi.e 81
cmp.i.v EQ
bt [10]

:[9]
push.v self.dmg
pushi.e 91
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.v self.y
push.v self.x
pushi.e 48
add.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
b [14]

:[13]
push.v self.y
push.v self.x
pushi.e 64
add.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[14]
pushi.e 6
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.i
pushi.e 0
cmp.i.v EQ
bt [16]

:[15]
push.v self.i
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[19]
push.v self.dmg
pushi.e 0
cmp.i.v GT
bf [21]

:[20]
push.v self.dmg
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.ystart
pushi.e 20
add.i.v
push.v self.x
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monstermaxhp
push.v self.stretchfactor
mul.v.v
add.v.v
push.v self.ystart
pushi.e 8
add.i.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.ystart
pushi.e 20
add.i.v
push.v self.x
push.v self.apparenthp
push.v self.stretchfactor
mul.v.v
add.v.v
push.v self.ystart
pushi.e 8
add.i.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
b [22]

:[21]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "MISS"@47955
conv.s.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v

:[22]
push.v self.y
push.v self.ystart
cmp.v.v GT
bf [end]

:[23]
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity

:[end]