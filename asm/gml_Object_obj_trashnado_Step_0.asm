.localvar 0 arguments

:[0]
push.v self.siner1
pushi.e 20
add.i.v
pop.v.v self.siner1
push.v self.siner2
pushi.e 20
sub.i.v
pop.v.v self.siner2
push.v self.siner3
pushi.e 20
add.i.v
pop.v.v self.siner3
push.v self.siner4
pushi.e 20
sub.i.v
pop.v.v self.siner4
push.v self.siner5
pushi.e 20
add.i.v
pop.v.v self.siner5
push.v self.sinerx
pushi.e 1
add.i.v
pop.v.v self.sinerx
pushi.e 3
pop.v.i self.rr
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.v self.x
push.v self.siner1
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i sin(argc=1)
push.v self.rr
mul.v.v
add.v.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash1
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.siner1
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i cos(argc=1)
push.v self.rr
mul.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash1
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 6
pop.v.i self.rr
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [6]

:[5]
push.v self.x
push.v self.siner2
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i sin(argc=1)
push.v self.rr
mul.v.v
add.v.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash2
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.siner2
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i cos(argc=1)
push.v self.rr
mul.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pushi.e 12
sub.i.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash2
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 10
pop.v.i self.rr
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
push.v self.x
push.v self.siner3
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i sin(argc=1)
push.v self.rr
mul.v.v
add.v.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash3
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.siner3
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i cos(argc=1)
push.v self.rr
mul.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pushi.e 24
sub.i.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash3
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
pushi.e 13
pop.v.i self.rr
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
push.v self.x
push.v self.siner4
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i sin(argc=1)
push.v self.rr
mul.v.v
add.v.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash4
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.siner4
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i cos(argc=1)
push.v self.rr
mul.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pushi.e 36
sub.i.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash4
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
pushi.e 16
pop.v.i self.rr
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[14]
push.v self.x
push.v self.siner5
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i sin(argc=1)
push.v self.rr
mul.v.v
add.v.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash5
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.siner5
pushi.e 120
push.v self.i
mul.v.i
add.v.v
call.i degtorad(argc=1)
call.i cos(argc=1)
push.v self.rr
mul.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pushi.e 48
sub.i.v
push.v self.sinerx
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.trash5
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[end]