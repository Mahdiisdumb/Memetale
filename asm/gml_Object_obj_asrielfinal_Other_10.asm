.localvar 0 arguments

:[0]
push.s "obj_asrielfinal_1007"@10414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_1008"@10416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_1009"@10417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_1010"@10419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 505
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [4]

:[1]
pushi.e -5
pushi.e 506
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [4]

:[2]
pushi.e -5
pushi.e 507
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
pushi.e -5
pushi.e 508
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
push.s "obj_asrielfinal_1014"@10420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushi.e 1
pop.v.i self.gocon

:[end]