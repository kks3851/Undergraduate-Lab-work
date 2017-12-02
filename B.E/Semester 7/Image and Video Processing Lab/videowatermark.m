vid = VideoReader('xylophone.mpg');
get(vid)
nFrames = vid.NumberOfFrames;

for k = 1 : nFrames
    mov(k).cdata = read(vid, k);
end

a = mov(1).cdata;
b = mov(2).cdata;
c = mov(3).cdata;
d = mov(4).cdata;
a1 = dec2bin(a);
b1 = dec2bin(b);
c1 = dec2bin(c);
d1 = dec2bin(d);
[m n] = size(a);

a1(:,8) = b1(:,1);
a1(:,7) = b1(:,2);
a1(:,6) = b1(:,3);
a1(:,5) = b1(:,4);
b1(:,8) = c1(:,1);
b1(:,7) = c1(:,2);
b1(:,6) = c1(:,3);
b1(:,5) = c1(:,4);
c1(:,8) = d1(:,1);
c1(:,7) = d1(:,2);
c1(:,6) = d1(:,3);
c1(:,5) = d1(:,4);
 
a1 = bin2dec(a1);
a1 = reshape(a1,[m n]);
b1 = bin2dec(b1);
a2 = reshape(b1,[m n]);
c1 = bin2dec(c1);
a3 = reshape(c1,[m n]);
d1 = bin2dec(d1);
a4 = reshape(d1,[m n]);


mov(1).cdata = a1;
mov(2).cdata = b1;
mov(3).cdata = c1;
mov(4).cdata = d1;

implay('xylophone.mpg')