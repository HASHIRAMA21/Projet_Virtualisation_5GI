#include<stdio.h>
#include<string.h>
#include<stdlib.h>


void feature_flag(char h[8], int tab[32]){

//sprintf(h,"%x",input);
for(int k=0;k<32;k++){
  tab[k]=0;
}
 int test=0;
 int t,l;
 for(int i=0;i<8;i++){
  if (h[i]=='\0'){
   test=1;
   printf("yes");
   t=i;
  }
 }
 int i;
 int o=32-4*t;
 if(test==1){
 i=o;
  for(int j=0;j<t;j++){
    switch(h[j]){
    
     case '0':
       i=i+4;
       break;
     case '1':
       tab[i+3]=1;
       i=i+4;
       break;
     case '2':
     tab[i+2]=1;
       i=i+4;
       break;
     case '3':
       tab[i+2]=1;
       tab[i+3]=1;
       i=i+4;
       break;
     case '4':
     tab[i+1]=1;
       i=i+4;
       break;
     case '5':
     tab[i+1]=1;
     tab[i+3]=1;
       i=i+4;
       break;
     case '6':
     tab[i+1]=1;
     tab[i+2]=1;
       i=i+4;
       break;
     case '7':
     tab[i+1]=1;
     tab[i+2]=1;
     tab[i+3]=1; 
       i=i+4;
       break;
     case '8':
     tab[i]=1;
       i=i+4;
       break;
     case '9':
     tab[i]=1;
     tab[i+3]=1;
       i=i+4;
       break;
     case 'a':
     tab[i]=1;
     tab[i+2]=1;
       i=i+4;
       break;
     case 'b':
     tab[i]=1;
     tab[i+2]=1;
     tab[i+3]=1;
       i=i+4;
       break;
     case 'c':
      tab[i]=1;
     tab[i+1]=1;
       i=i+4;
       break;
     case 'd':
      tab[i]=1;
     tab[i+1]=1;
     tab[i+3]=1;
       i=i+4;
       break;
     case 'e':
      tab[i]=1;
     tab[i+1]=1;
     tab[i+2]=1;
       i=i+4;
       break;
     case 'f':
      tab[i]=1;
     tab[i+1]=1;
     tab[i+2]=1;
     tab[i+3]=1;
       i=i+4;
       break;
    
    
    
    }
  }
 
 
 }
 else{
 i=0;
  for(int j=0;j<8;j++){
 // printf("%c\n",h[j]);
 // printf("------------\n");
    switch(h[j]){
    
     case '0':
       i=i+4;
       break;
     case '1':
       tab[i+3]=1;
       i=i+4;
      // printf("0001\n");
       break;
     case '2':
     tab[i+2]=1;
       i=i+4;
       //printf("0010\n");
       break;
     case '3':
       tab[i+2]=1;
       tab[i+3]=1;
       i=i+4;
     //  printf("0011\n");
       break;
     case '4':
     tab[i+1]=1;
       i=i+4;
      // printf("0100\n");
       break;
     case '5':
     tab[i+1]=1;
     tab[i+3]=1;
       i=i+4;
      // printf("0101\n");
       break;
     case '6':
     tab[i+1]=1;
     tab[i+2]=1;
       i=i+4;
     //  printf("0110\n");
       break;
     case '7':
     tab[i+1]=1;
     tab[i+2]=1;
     tab[i+3]=1; 
       i=i+4;
     //  printf("0111\n");
       break;
     case '8':
     tab[i]=1;
       i=i+4;
   //    printf("1000\n");
       break;
     case '9':
     tab[i]=1;
     tab[i+3]=1;
       i=i+4;
     //  printf("1001\n");
       break;
     case 'a':
     tab[i]=1;
     tab[i+2]=1;
       i=i+4;
  // printf("1010\n");
       break;
     case 'b':
     tab[i]=1;
     tab[i+2]=1;
     tab[i+3]=1;
       i=i+4;
     //  printf("1011\n");
       break;
     case 'c':
      tab[i]=1;
     tab[i+1]=1;
    // printf("1100\n");
       i=i+4;
       break;
     case 'd':
      tab[i]=1;
     tab[i+1]=1;
     tab[i+3]=1;
       i=i+4;
       break;
     case 'e':
      tab[i]=1;
     tab[i+1]=1;
     tab[i+2]=1;
       i=i+4;
    //   printf("1101\n");
       break;
     case 'f':
      tab[i]=1;
     tab[i+1]=1;
     tab[i+2]=1;
     tab[i+3]=1;
      i=i+4;
   //   printf("1111\n");
     break;
     
   
      //printf("yeee---------------\n");
    
    }
    
    
  }
 
 
 
 }



}



int main(){
FILE* f;
int y,x,z,c,d,e;
int a[4];
int b[4];
char buf[32];
char ecx1[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
char edx1[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
char ebx7[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
char ecx7[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
char edx7[8]={'0', '0', '0', '0', '0', '0', '0', '0'};

int ecx_1[32];
int edx_1[32];
int ebx_7[32];
int ecx_7[32];
int edx_7[32];
//cpuid instruction with value 1 in eax, return features in tab a

__asm__("mov $0x1 , %eax\n\t");
__asm__("cpuid\n\t");
__asm__("mov %%eax, %0\n\t":"=r" (a[0]));
__asm__("mov %%ebx, %0\n\t":"=r" (a[1]));
__asm__("mov %%ecx, %0\n\t":"=r" (a[2]));
__asm__("mov %%edx, %0\n\t":"=r" (a[3]));

//

//cpuid instruction with vakue 7 in eax and 0 in ecx, return extended features $

__asm__("mov $0x7 , %eax\n\t");
__asm__("mov $0x0 , %ecx\n\t");
__asm__("cpuid\n\t");
__asm__("mov %%eax, %0\n\t":"=r" (b[0]));
__asm__("mov %%ebx, %0\n\t":"=r" (b[1]));
__asm__("mov %%ecx, %0\n\t":"=r" (b[2]));
__asm__("mov %%edx, %0\n\t":"=r" (b[3]));


//
for(int v=0;v<32;v++){
 buf[v]='0';
}

y=sprintf(buf,"%x",a[2]);
x=y;
y+=sprintf(buf+y,"%x",a[3]);
z=y-x;
y+=sprintf(buf+y,"%x",b[1]);
c=y-z-x;
y+=sprintf(buf+y,"%x",b[2]);
d=y-c-z-x;
y+=sprintf(buf+y,"%x",b[3]);
e=y-d-c-z-x;

printf("%d\n",x);
printf("%d\n",z);
printf("%d\n",c);
printf("%d\n",d);
printf("%d\n",e);

/*for(int v=0;v<32;v++){
 printf("%c",buf[v]);
}
printf("\n");*/

for (int v=0; v<x;v++){
if(x<8){
 ecx1[v+(8-x)]=buf[v];
}
else{
ecx1[v]=buf[v];
}
}
for (int v=0; v<z;v++){
if(z<8){
edx1[v+(8-z)]=buf[v+x];
}else{
edx1[v]=buf[v+x];
}
}
for (int v=0; v<c;v++){
if(c<8){
ebx7[v+(8-c)]=buf[v+x+z];
}else{
ebx7[v]=buf[v+x+z];
}
}
for (int v=0; v<d;v++){
if(d<8){
ecx7[v+(8-d)]=buf[v+x+z+c];
}else{
ecx7[v]=buf[v+x+z+c];
}
}
for (int v=0; v<e;v++){
if(e<8){
 edx7[v+(8-e)]=buf[v+x+z+c+d];
}else{
edx7[v]=buf[v+x+z+c+d];
}
}
/*
z=sprintf(ecx1,"%x",a[2]);
y=sprintf(edx1,"%x",a[3]);
c=sprintf(ebx7,"%x",b[1]);
d=sprintf(ecx7,"%x",b[2]);
e=sprintf(edx7,"%x",b[3]);
//printf("%c\n",ecx1[1]);*/


feature_flag(ecx1,ecx_1);
feature_flag(edx1,edx_1);
feature_flag(ebx7,ebx_7);
feature_flag(ecx7,ecx_7);
feature_flag(edx7,edx_7);

int j;
for (j=0;j<8;j++){
printf("%c",ecx1[j]);
}
printf("\n"); 

for (j=0;j<8;j++){
printf("%c",edx1[j]);
}
printf("\n"); 

for (j=0;j<8;j++){
printf("%c",ebx7[j]);
}
printf("\n"); 

for (j=0;j<8;j++){
printf("%c",ecx7[j]);
}
printf("\n"); 

for (j=0;j<8;j++){
printf("%c",edx7[j]);
}
printf("\n"); 

////////////////////////////////////
for (j=0;j<32;j++){
printf("%d",ecx_1[j]);
}
printf("\n"); 

for (j=0;j<32;j++){
printf("%d",edx_1[j]);
}
printf("\n"); 

for (j=0;j<32;j++){
printf("%d",ebx_7[j]);
}
printf("\n"); 

for (j=0;j<32;j++){
printf("%d",ecx_7[j]);
}
printf("\n"); 

for (j=0;j<32;j++){
printf("%d",edx_7[j]);
}
printf("\n"); 

////useful features with dependencies graph in parallel mode

char ecx_1_features[32][32]={"sse3","pclmulqdq","dtes64","monitor","dscpl","vmx","smx","est","tm2","ssse3","cnxt-id","sdbg","fma","cmpxchg16","xtpr","pdcm","reserved","pcid","dca","sse4.1","sse4.2","x2apic","movbe","popcnt","tsc-deadline","aes","xsave","osxsave","avx","f16c","rdrand","hypervisor"} ;
char edx_1_features[32][32]={"fpu","vme","de","pse","tsc","msr","pae","mce","cmpxchg8","apic","reserved","sep","mtrr","pge","mca","cmov","pat","pse-36","psn","clfsh","reserved","ds","acpi","mmx","fxsr","sse","sse2","ss","ht","tm","ia64","pbe"};
char ebx_7_features[32][32]={"fsgsbase","IA32_TSC_ADJUST MSR","sgx","bmi1","hle","avx2","FDP_EXCPTN_ONLY","smep","bmi2","erms","invpcid","rtm","rdt-m/pqm","FPU CS and FPU DS deprecated","mpx","rdt-a/pqe","avx512-f","avx512-dq","redseed","adx","smap","avx512ifma","reserved","clflushopt","clwb","pt","avx512-pf","avx512-er","avx512-cd","sha","avx512-bw","avx512-vl"};
char ecx_7_features[32][32]={"prefetchwtl","avx512-vbmi","umip","pku","ospke","waitpkg","avx512-vbmi2","cet_ss","gfni","vaes","vpclmulqdq","avx512-vnni","avx512-bitalg","tme","avx512-vpopcntdq","reserved","ia57","mawau","mawau","mawau","mawau","mawau","rdpid","kl","BUS_LOCK_DETECT","cldemote","reserved","movdiri","movdir64b","enqcmd","sgx-lc","pks"};
char edx_7_features[32][32]={"sgx-keys","reserved","avx512-4vnniw","avx512-4fmaps","fsrm","uintr","reserved","reserved","avx512-vp2intersect","srdbs-ctrl","mc-clear","rtm-always-abort","reserved","TSX_FORCE_ABORT MSR","serialize","hybrid","tsxldtrk","reserved","pconfig","lbr","cet-ibt","reserved","amx-bf16","avx512-fp16","amx-tile","amx-int8","IBRS_IBPB / spec_ctrl","stibp","L1D_FLUSH","A32_ARCH_CAPABILITIES","IA32_CORE_CAPABILITIES MSR","ssbd"};



////features dependences for features 

char FPU[2][32]={"mmx", "rstr_fp_err_ptrs"};
char PSE[1][32]={"pse36"};
char PAE[2][32]={"lm", "nx"};
char TSC[4][32]={"tsc_deadline","rdtscp","tsc_adjust","itsc"};

   char APIC[3][32]={"x2apic","tsc_deadline","extapic"};
   char MMX[2][32]={"mmxext;_3dnow"};
   char FXSR[2][32]={"ffxsr","sse"};
   char SSE[2][32]={"sse2","misalignsse"};
   char SSE2[6][32]={"sse3","lm","aesni","pclmulqdq","sha","gfni"};
   char SSE3[2][32]={"ssse3","sse4a"};
   char SSSE3[1][32]={"sse4.1"};
   char SSE4_1[1][32]={"sse4.2"};
   char XSAVE[8][32]={"xsaveopt","xsavec","xgetbv1","xsaves","avx","mpx","pku","lwp"};
   char AVX[5][32]={"fma","fma4","f16c","avx2","xop"};
   char NX[1][32]={"smap"};
   char LM[6][32]={"cmpxchg16","pcid","lahf_lm","page1gb","pku","no_lmsl"};    
   char AVX2[4][32]={"avx512f","vaes","vpclmulqdq","avx_vnni"};               
   char AVX512F[12][32]={"avx512dq","avx512_ifma","avx512pf","avx512er","avx512cd","avx512bw","avx512vl","avx512_4vnniw","avx512_4fmaps","avx512_vnni","avx512_vpopcntdq","avx512_vp2intersect"};         
   char AVX512BW[5][32]={"avx512_vbmi","avx512_vbmi2","avx512_bitalg","avx512_bf16","avx512_fp16"};
   char PCLMULQDQ[1][32]={"vpclmulqdq"};
   char AESNI[1][32]={"vaes"};               
char IBRSB[3][32]={"stibp","ssbd","intel_psfd"};               
  char IBRS[6][32]={"amd_stibp","amd_ssbd","psfd","ibrs_always","ibrs_fast","ibrs_same_mode"};
  char AMD_STIBP[1][32]={"stibp_always"};
  char RTM[1][32]={"TSXLDTRK"};                 

///

char features_list[160][32];
int s=0,num_features;
int u=0;
for( u=0;u<32;u++){
 if(ecx_1[u]==1){
   strcpy(features_list[s],ecx_1_features[31-u]);
   //printf("%s ",ecx_1_features[31-u]);
   s++;
 }
  if(edx_1[u]==1){
   strcpy(features_list[s],edx_1_features[31-u]);
   //printf("%s ",edx_1_features[31-u]);
   s++;
 }
  if(ebx_7[u]==1){
   strcpy(features_list[s],ebx_7_features[31-u]);
   //printf("%s ",ebx_7_features[31-u]);
   s++;
 }
  if(ecx_7[u]==1){
   strcpy(features_list[s],ecx_7_features[31-u]);
   //printf("%s ",ecx_7_features[31-u]);
   s++;
 }
  if(edx_7[u]==1){
   strcpy(features_list[s],edx_7_features[31-u]);
   //printf("%s ",edx_7_features[31-u]);
   s++;
 }
 num_features=s;


}

char ordered_features_list[num_features][32];
char temp[32];
char feature_order[25][32]={"fpu","pse","pae","tsc","apic","mmx","fxsr","sse","sse2","sse3","ssse3","sse4.1","xsave","avx","nx","lm","avx2","avx512f","avx512bw","pclmulqdq","aesni","ibrsb","ibrs","amd_stibp","rtm"};
int g=0,w=0,r=0;
for(w=0;w<25;w++){
for (g=0;g<num_features;g++){
if(strcmp(feature_order[w],features_list[g])==0){
  strcpy(ordered_features_list[r],features_list[g]);
  r++;  
}
}
}

for (g=0;g<r;g++){

printf("%s ",ordered_features_list[g]);
}
g=0;
w=0;
int uio=r;
for (g=0;g<num_features;g++){
 int essaie=0;
   for (w=0;w<uio;w++){
   if(strcmp(features_list[g],ordered_features_list[w])==0){
     essaie=1;
   } 
   }
   if (essaie == 0){
     strcpy(ordered_features_list[r],features_list[g]);
    r++;
    }
   
}





f=fopen("features.txt","w");
if(f==NULL){
printf("error,can't open file 'features.txt'\n'");
exit(1);
}else{
for(u=0;u<num_features;u++){

fprintf(f,"%s\n",ordered_features_list[u]);

}
fputs("\n",f);
}
fclose(f);

printf("ECX : %x\n",a[2]);
printf("EDX : %x\n",a[3]);
printf("EBX : %x\n",b[1]);
printf("ECX : %x\n",b[2]);
printf("EDX : %x\n",b[3]);


return 0;

}
