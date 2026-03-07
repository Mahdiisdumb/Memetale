.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pop.v.v self.yy
push.v self.writer
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[2]
push.v self.writer
conv.v.i
push.v [stacktop]self.writingy
push.v self.yy
pushi.e 80
add.i.v
cmp.v.v GT
bf [4]

:[3]
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingy
pushi.e 155
sub.i.v
pop.i.v [stacktop]self.writingy

:[4]
pushi.e 775
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[5]
push.v 775.y
push.v self.yy
pushi.e 80
add.i.v
cmp.v.v GT
bf [7]

:[6]
push.v 775.y
pushi.e 155
sub.i.v
pop.v.v 775.y

:[7]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 80
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 304
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 5
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 16
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 77
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 301
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 8
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 19
add.i.v
call.i draw_rectangle(argc=5)
popz.v
b [15]

:[8]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pop.v.v self.yy
push.v self.writer
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[9]
push.v self.writer
conv.v.i
push.v [stacktop]self.writingy
push.v self.yy
pushi.e 80
add.i.v
cmp.v.v LT
bf [11]

:[10]
push.v self.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingy
pushi.e 155
add.i.v
pop.i.v [stacktop]self.writingy

:[11]
pushi.e 775
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[12]
push.v 775.y
push.v self.yy
pushi.e 80
add.i.v
cmp.v.v LT
bf [14]

:[13]
push.v 775.y
pushi.e 155
add.i.v
pop.v.v 775.y

:[14]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 235
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 304
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 160
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 16
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 232
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 301
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 163
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 19
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[15]
pushi.e 1
pop.v.i self.count

:[end]