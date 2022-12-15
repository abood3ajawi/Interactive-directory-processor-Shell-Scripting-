#!/bin/bash
ana="ana";del="del";arr="arr";
parameter_1=$1;parameter_2=$2;parameter_3=$3;

if test -z ${parameter_1}; then read -p "Directory :" parameter_1; fi
if test -z ${parameter_2}; then read -p "analytics(ana) or delete(del) or arrange(arr) : " parameter_2; fi

thirdM(){
if test -z ${parameter_3}; then read -p "$1 : " parameter_3; fi
}
analytics(){
thirdM "regex";
ls -R $parameter_1 | grep -oP $parameter_3 -c
}
delete(){
thirdM "biggest file size (byte)";
find $parameter_1 -type f -size +"$parameter_3"c -delete
}
arrange(){
thirdM "file type";
mkdir -p ../$parameter_1/newDirectory;find $parameter_1  -type f -regex  ".*\.$parameter_3$"   | xargs -r mv -t ../newDirectory
}

if [[ $parameter_2 == ana ]];then analytics;
elif [[ $parameter_2 == del ]];then delete;
elif [[ $parameter_2 == arr ]];then arrange;
fi

