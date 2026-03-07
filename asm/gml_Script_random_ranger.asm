.localvar 0 arguments

:[0]
pushbltn.v self.argument1
pushbltn.v self.argument0
sub.v.v
call.i abs(argc=1)
call.i random(argc=1)
pushbltn.v self.argument0
pushbltn.v self.argument1
call.i min(argc=2)
add.v.v
ret.v

:[end]