.localvar 0 arguments

:[0]
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
push.v self.tt
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_snowpoff_100"@25956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
push.v self.tt
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_snowpoff_101"@25958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
push.v self.tt
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_snowpoff_102"@25960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.tt
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_snowpoff_103"@25962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.tt
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_snowpoff_104"@25964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.tt
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_snowpoff_105"@25966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.v self.tt
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_snowpoff_106"@25968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.tt
pushi.e 7
cmp.i.v GTE
bf [16]

:[15]
pushi.e -5
pushi.e 65
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.s "obj_snowpoff_107"@25970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.tt

:[19]
push.v self.tt
pushi.e 7
cmp.i.v GTE
bf [21]

:[20]
pushi.e -5
pushi.e 65
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.s "obj_snowpoff_108"@25972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v global.gold
pushi.e 30
add.i.v
pop.v.v global.gold
pushi.e 0
pop.v.i self.tt
pushi.e 1
pushi.e -5
pushi.e 65
pop.v.i [array]global.flag

:[24]
push.v self.tt
pop.v.v self.gg
push.v self.tt
pushi.e 1
add.i.v
pop.v.v 943.tt
push.v self.gg
pop.v.v self.tt
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]