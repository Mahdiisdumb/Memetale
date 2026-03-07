.localvar 0 arguments
.localvar 1 texty 1742

:[0]
push.v self.tough
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [4]

:[3]
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.point
add.v.v
push.v self.x
push.v self.i
pushi.e 10
mul.i.v
add.v.v
pushi.e 10
add.i.v
push.v self.off
sub.v.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.point
add.v.v
push.v self.x
push.v self.i
pushi.e 10
mul.i.v
add.v.v
push.v self.off
sub.v.v
call.i draw_line_width(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.off
pushi.e 1
add.i.v
pop.v.v self.off
push.v self.off
pushi.e 9
cmp.i.v GT
bf [9]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [8]

:[7]
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.point
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.point
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 50
conv.i.v
call.i random(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.point
pushi.e 0
pop.v.i self.off

:[9]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 70
add.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.s "obj_populationgraph_81"@32881
conv.s.v
call.i scr_gettext(argc=1)
push.v self.y
pushi.e 54
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i draw_text(argc=3)
popz.v

:[10]
push.v self.tough
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [14]

:[13]
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.point
add.v.v
push.v self.x
push.v self.i
pushi.e 10
mul.i.v
add.v.v
pushi.e 10
add.i.v
push.v self.off
sub.v.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.point
add.v.v
push.v self.x
push.v self.i
pushi.e 10
mul.i.v
add.v.v
push.v self.off
sub.v.v
call.i draw_line_width(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
push.v self.off
pushi.e 3
add.i.v
pop.v.v self.off
push.v self.off
pushi.e 9
cmp.i.v GT
bf [19]

:[15]
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [18]

:[17]
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.point
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.point
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[18]
pushi.e 80
conv.i.v
call.i random(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.point
pushi.e 0
pop.v.i self.off

:[19]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 70
add.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.y
pushi.e 54
sub.i.v
pop.v.v local.texty
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [21]

:[20]
push.v local.texty
pushi.e 36
sub.i.v
pop.v.v local.texty

:[21]
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.s "obj_populationgraph_106"@32883
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.texty
push.v self.x
pushi.e 20
sub.i.v
call.i draw_text(argc=3)
popz.v

:[end]