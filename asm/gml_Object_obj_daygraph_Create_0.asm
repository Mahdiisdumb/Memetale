.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.die
pushbltn.v self.current_hour
pop.v.v self.currenthour
push.v self.currenthour
pushi.e 6
cmp.i.v LTE
bt [2]

:[1]
push.v self.currenthour
pushi.e 18
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_index
b [6]

:[5]
pushi.e 1
pop.v.i self.image_index

:[6]
pushi.e 1800
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushbltn.v self.current_weekday
pop.v.v self.weekday
push.v self.weekday
pushi.e 7
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_daygraph_0"@32887
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.day
b [9]

:[8]
push.s "obj_daygraph_"@47870
push.v self.weekday
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v self.day

:[9]
pushi.e 0
pop.v.i self.rot

:[end]