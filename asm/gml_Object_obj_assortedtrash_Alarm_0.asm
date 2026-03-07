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
push.v self.y
pushi.e 540
cmp.i.v GT
bf [2]

:[1]
push.s "obj_assortedtrash_79"@10422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_assortedtrash_80"@10424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.con

:[2]
push.v self.y
pushi.e 500
cmp.i.v LT
bf [4]

:[3]
push.v self.y
pushi.e 420
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.s "obj_assortedtrash_86"@10426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.y
pushi.e 340
cmp.i.v LT
bf [9]

:[8]
push.v self.y
pushi.e 280
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.s "obj_assortedtrash_91"@10428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_assortedtrash_92"@10430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[12]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.object_index
conv.v.i
dup.i 0
push.v [stacktop]self.talkedto
pushi.e 1
add.i.v
pop.i.v [stacktop]self.talkedto

:[end]