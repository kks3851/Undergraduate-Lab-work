 #include <LPC21xx.h>
void wait (void)
{
int d;
for(d=0;d<100000;d++)
;
}
int main(void)
{
int i;
int disp[ 

]={0x003F0000,0x00060000,0x005B0000,0x004F0000,0x00660000,0x006D0000,0x007D0000,
0x00070000,0x007F0000,0x006F0000};
IODIR1=0x007F0000;
while(1)
{
for(i=0;i<10;i++)
{
IOPIN1=disp[i];
wait();
}
}
}
