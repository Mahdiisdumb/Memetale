.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.skip
push.s "obj_artclass_sign_208"@9777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murd
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.skip
push.s "obj_artclass_sign_213"@9779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushi.e -5
pushi.e 281
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_artclass_sign_218"@9781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.skip

:[5]
pushi.e -5
pushi.e 281
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_artclass_sign_224"@9783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.skip

:[7]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_artclass_sign_231"@9785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.skip

:[9]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [20]

:[10]
pushbltn.v self.current_weekday
pushi.e 2
cmp.i.v EQ
bf [13]

:[11]
pushbltn.v self.current_month
pushi.e 10
cmp.i.v EQ
bf [13]

:[12]
pushbltn.v self.current_day
pushi.e 10
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [20]

:[15]
pushbltn.v self.current_hour
pushi.e 8
cmp.i.v EQ
bt [17]

:[16]
pushbltn.v self.current_hour
pushi.e 20
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.con

:[20]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]