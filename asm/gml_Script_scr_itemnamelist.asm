.localvar 0 arguments

:[0]
push.s "item_name_"@3562
push.v self.itemid
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname

:[end]