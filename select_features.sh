#!/bin/bash

username="krohn"
ip_address="192.168.1.102"
features_list=()
exclude_features=()
vm_cfg_path="/etc/xen/myvm.cfg"
vm_feature=()
vm_name="myvm"
i=0



function exclude_feature 
{ 
echo "entréé"
 local j="$1"
 local -n arr="$2"
 l=${#arr[@]}
 i=0
 K=0
 echo "$j"
 
 FPU=("mmx" "rstr_fp_err_ptrs" "mmxext" "_3dnow")
 PSE=("pse36")
 PAE=("lm" "nx" "smap")
 TSC=("tsc_deadline" "rdtscp" "tsc_adjust" "itsc")
 APIC=("x2apic" "tsc_deadline" "extapic")
 MMX=("mmxext" "_3dnow") 
 FXSR=("ffxsr" "sse" "sse2" "misalignsse" "sse3" "lm" "aesni" "pclmulqdq" "sha" "gfni" "ssse3" "sse4a" "sse4.1" "sse4.2" "vaes")
 SSE=("sse2" "misalignsse" "sse3" "lm" "aesni" "pclmulqdq" "sha" "gfni" "ssse3" "sse4a" "sse4.1" "sse4.2" "vaes")
 SSE2=("sse3" "lm" "aesni" "pclmulqdq" "sha" "gfni" "ssse3" "sse4a" "sse4.1" "sse4.2" "vaes")
 SSE3=("ssse3" "sse4a" "sse4.1" "sse4.2")
  SSSE3=("sse4.1" "sse4.2")
 SSE4_1=("sse4.2")
 XSAVE=("xsaveopt" "xsavec" "xgetbv1" "xsaves" "avx" "mpx" "pku" "lwp" "fma" "fma4" "f16c" "avx2" "xop" "avx512f" "vaes" "vpclmulqdq" "avx_vnni")
 AVX=("fma" "fma4" "f16c" "avx2" "xop" "avx512f" "vaes" "vpclmulqdq" "avx_vnni")
 NX=("smap")
 LM=("cmpxchg16" "pcid" "lahf_lm" "page1gb" "pku" "no_lmsl")
 AVX2=("avx512f" "vaes" "vpclmulqdq" "avx_vnni" "avx512dq" "avx512_ifma" "avx512pf" "avx512er" "avx512cd" "avx512bw" "avx512vl" "avx512_4vnniw" "avx512_4fmaps" "avx512_vnni" "avx512_vpopcntdq" "avx512_vp2intersect" "avx512_vbmi" "avx512_vbmi2" "avx512_bitalg" "avx512_bf16" "avx512_fp16")
 AVX512F=("avx512dq" "avx512_ifma" "avx512pf" "avx512er" "avx512cd" "avx512bw" "avx512vl" "avx512_4vnniw" "avx512_4fmaps" "avx512_vnni" "avx512_vpopcntdq" "avx512_vp2intersect" "avx512_vbmi" "avx512_vbmi2" "avx512_bitalg" "avx512_bf16" "avx512_fp16")   
  AVX512BW=("avx512_vbmi" "avx512_vbmi2" "avx512_bitalg" "avx512_bf16" "avx512_fp16")
 PCLMULQDQ=("vpclmulqdq")
  AESNI=("vaes")  
 IBRSB=("stibp" "ssbd" "intel_psfd")
 IBRS=("amd_stibp" "amd_ssbd" "psfd" "ibrs_always" "ibrs_fast" "ibrs_same_mode" "stibp_always")
 AMD_STIBP=("stibp_always")
 RTM=("TSXLDTRK") 
 
   if [ "${arr[j]}" = "fpu" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#FPU[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${FPU[i]}" = "${arr[k]}" ]]; then
           arr[k]="deleted"
       fi
      done
    done
    echo "${arr[@]}"
   elif [ "${arr[j]}" = "pse" ];then
    
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#PSE[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${PSE[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "pae" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#PAE[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${PAE[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "tsc" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#TSC[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${TSC[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "apic" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#APIC[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${APIC[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "mmx" ];then
   
    arr[j]="deleted"
    echo "yeah"
    for (( i=0 ; i < ${#MMX[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${MMX[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "fxsr" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#FXSR[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${FXSR[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "sse" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#SSE[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${SSE[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "sse2" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#SSE2[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${SSE2[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "sse3" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#SSE3[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${SSE3[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "ssse3" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#SSSE3[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${SSSE3[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "sse4.1" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#SSE4_1[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${SSE4_1[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "xsave" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#XSAVE[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${XSAVE[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "avx" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#AVX[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${AVX[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "nx" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#NX[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${NX[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "lm" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#LM[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${LM[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "avx2" ];then    
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#AVX2[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${AVX2[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "avx512f" ];then               
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#AVX512F[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${AVX512F[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done  
  elif [ "${arr[j]}" = "avx512bw" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#AVX512BW[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${AVX512BW[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
 elif [ "${arr[j]}" = "pclmulqdq" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#PCLMULQDQ[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${PCLMULQDQ[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "aesni" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#AESNI[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${AESNI[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done       
  elif [ "${arr[j]}" = "ibrsb" ];then  
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#IBRSB[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${IBSRB[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "ibrs" ];then               
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#IBRS[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${IBRS[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
  elif [ "${arr[j]}" = "amd_stibp" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#AMD_STIBP[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${AMD_STIBP[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
 elif [ "${arr[j]}" = "rtm" ];then
   
    arr[j]="deleted"
    for (( i=0 ; i < ${#RTM[@]} ; i++ ))
    do
      for (( k=0 ; k < ${#arr[@]} ; k++ ))
      do
       if [[ "${RTM[i]}" = "${arr[k]}" ]]; then
          arr[k]="deleted"
       fi
      done
    done
 fi
}

xl create $vm_cfg_path
sleep 20

ssh $username@$ip_address "./feature_dependance" 
ssh $username@$ip_address "cat features.txt" > features.txt
xl shutdown $vm_name
sleep 20

for word in $(cat features.txt)
do
  features_list[$i]=$word
  let i+=1
done
echo "${features_list[@]}"
xen_features=("3dnow" "3dnowext" "3dnowprefetch" "abm" "acpi" "adx" "aes" "altmovcr8" "apic" "arat" "avx" "avx2" "avx512-4fmaps" "avx512-4vnniw" "avx512bw" "avx512cd"
 "avx512dq" "avx512er" "avx512f" "avx512ifma" "avx512pf" "avx512vbmi" "avx512vl" "bmi1" "bmi2" "clflushopt" "clfsh" "clwb" "cmov" "cmplegacy" "cmpxchg16" "cmpxchg8" 
"cmt" "cntxid" "dca" "de" "ds" "dscpl" "dtes64" "erms" "est" "extapic" "f16c" "ffxsr" "fma" "fma4" "fpu" "fsgsbase" "fxsr" "hle" "htt" "hypervisor" "ia64" "ibs" 
"invpcid" "invtsc" "lahfsahf" "lm" "lwp" "mca" "mce" "misalignsse" "mmx" "mmxext" "monitor" "movbe" "mpx" "msr" "mtrr" "nodeid" "nx" "ospke" "osvw" "osxsave" "pae"
 "page1gb" "pat" "pbe" "pcid" "pclmulqdq" "pdcm" "perfctr_core" "perfctr_nb" "pge" "pku" "popcnt" "pse" "pse36" "psn" "rdrand" "rdseed" "rdtscp" "rtm" "sha" "skinit"
 "smap" "smep" "smx" "ss" "sse" "sse2" "sse3" "sse4.1" "sse4.2" "sse4_1" "sse4_2" "sse4a" "ssse3" "svm" "svm_decode" "svm_lbrv" "svm_npt" "svm_nrips" "svm_pausefilt"
 "svm_tscrate" "svm_vmcbclean" "syscall" "sysenter" "tbm" "tm" "tm2" "topoext" "tsc" "tsc-deadline" "tsc_adjust" "umip" "vme" "vmx" "wdt" "x2apic" "xop" "xsave" "xtpr")
 

vm_feat=0
j=0
ui=0

for (( j=0 ; j < ${#features_list[@]} ; j++ ))
do
  verity=0
  for (( ui=0 ; ui < ${#xen_features[@]} ; ui++ ))
  do
    if [ "${xen_features[ui]}" = "${features_list[j]}" ]; then
       echo "oui"
       let verity+=1
    fi
  done
  if [ $verity -eq 1 ];then
    sed -i -e '/cpuid/ d' $vm_cfg_file_path
    echo "cpuid=\"host,${features_list[j]}=0\"" >> $vm_cfg_file_path
    xl create $vm_cfg_file_path
    sleep 20
    vm_exist=$(xl list | grep $vm_name | awk {'print $1'})
    if [ "$vm_exist" = "$vm_name" ]; then
       echo "la vm a bien été crée"
       ssh $username@$ip_address "source test_suite.sh" > test.txt
       tmp=$(cat true_test.txt) 
       fix=$(cat test.txt)
       if [ "$tmp" = "$fix" ]; then 
          echo "test passed"
          exclude_feature "$j" features_list
       else
          echo " test shutdown failed"
       fi
    else
       echo "the feature selected donc correspond to the vm ${features_list[j]}"
       vm_feature[$vm_feat]=${features_list[j]}
       let vm_feat+=1
    fi
    sed -i -e '/cpuid/ d' $vm_cfg_file_path
    xl shutdown $vm_name
    sleep 20
  else
      echo "xen native feature"
  fi
done
 
io=0
lo=0
for (( lo=0 ; lo < ${#features_list[@]} ; lo++ ))
do
 if [ "${features_list[lo]}" = "deleted" ]; then
  echo "deleted"
 else
  echo "${features_list[lo]}" >> app_use_features.txt
 fi
done

for (( io=0 ; io < ${#vm_feature[@]} ; io++ ))
do
  echo "${vm_feature[io]}" >> vm_use_features.txt
done



