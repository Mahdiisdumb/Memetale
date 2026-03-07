.localvar 0 arguments

:[0]
push.v self.canttalk
pushi.e 0
cmp.i.v EQ
bf [21]

:[1]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_kitchenforcefield_123"@14714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 166
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_kitchenforcefield_124"@14716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushbltn.v self.room
pushi.e 162
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_kitchenforcefield_125"@14718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
pushbltn.v self.room
pushi.e 192
cmp.i.v EQ
bt [7]

:[6]
pushbltn.v self.room
pushi.e 202
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
push.s "obj_kitchenforcefield_126"@14720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
pushbltn.v self.room
pushi.e 195
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_kitchenforcefield_127"@14722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
bt [17]

:[13]
pushbltn.v self.room
pushi.e 159
cmp.i.v EQ
bt [17]

:[14]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bt [17]

:[15]
pushbltn.v self.room
pushi.e 168
cmp.i.v EQ
bt [17]

:[16]
pushbltn.v self.room
pushi.e 157
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
push.s "obj_kitchenforcefield_128"@14723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 3
pop.v.i self.myinteract
b [end]

:[21]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]