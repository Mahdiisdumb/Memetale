.localvar 0 arguments

:[0]
pushi.e 170
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.deleteafter
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.s "obj_dateheart_365"@11611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dateheart_366"@11613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dateheart_367"@11615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.deleteafter
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]