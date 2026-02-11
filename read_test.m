
% quick tests of Matlab vs C versions of read_hitran

s1 = read_hitran(1000, 1002, 0, 2, 'test2012'); 
s2 = read_hitran2(1000, 1002, 0, 2, 'test2012');
isequal(s1, s2)

s1 = read_hitran(1000, 1002, 0, 3, 'test2012');
s2 = read_hitran2(1000, 1002, 0, 3, 'test2012');
isequal(s1, s2)

s1 = read_hitran(1010, 1020, 0, 3, 'test2012');
s2 = read_hitran2(1010, 1020, 0, 3, 'test2012');
isequal(s1, s2)

s1 = read_hitran(1210, 1220, 0, 6, 'test2012');
s2 = read_hitran2(1210, 1220, 0, 6, 'test2012');
isequal(s1, s2)

td = '/umbc/xfs3/strow/asl/rta/hitran/h24.by.gas/';

s1 = read_hitran(1210, 1220, 0, 6, td);
s2 = read_hitran2(1210, 1220, 0, 6, td);
isequal(s1, s2)

s1 = read_hitran(1210, 1220, 0, 2, td);
s2 = read_hitran2(1210, 1220, 0, 2, td);
isequal(s1, s2)

s1 = read_hitran(605, 615, 0, 2, td);
s2 = read_hitran2(605, 615, 0, 2, td);
isequal(s1, s2)

s1 = read_hitran(605, 1220, 0, 4, td);
s2 = read_hitran2(605, 1220, 0, 4, td);
isequal(s1, s2)

