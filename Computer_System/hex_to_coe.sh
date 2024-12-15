#!/bin/bash

#hex_to_coe: $1 is hex file name, $2 is the number of memory units 
#ex: ./hex_to_coe.sh rv32ui-p-fence_i.hex 65536
#    ./hex_to_coe.sh rv32ui-p-fence_i_d.hex 32768
FILE=$1
if [ -r $FILE ] && [ ${FILE##.}=="hex" ];then
    OBJ=${FILE%%.*}".coe"
    awk 'BEGIN{printf "memory_initialization_radix=16;\nmemory_initialization_vector=\n";
            UNIT_CUR=0; UNIT_STT=0; UNIT_END='"$2"'}
        {if (/@[0-9a-fA-F]+/) {
            UNIT_STT=strtonum("0x"""substr($0, 2));
            while (UNIT_CUR<UNIT_STT-1) {
                printf "00000000,\n"; ++UNIT_CUR
            }
        }else { printf "%s,\n", substr($0,1,8); ++UNIT_CUR }
        }
        END{while (UNIT_CUR<UNIT_END-1) {printf "00000000,\n"; ++UNIT_CUR} printf "00000000;"}' $FILE > $OBJ
fi