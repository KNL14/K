 #!/bin/sh

 # use this file after copy to /usr/bin
 #
 rm -rf cscope.files cscope.files
 find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files
 cscope -i cscope.files
