valgrind ./test_gnl ./britney
sleep 5
valgrind ./test_gnl ./empty
sleep 5
valgrind ./test_gnl ./line8_with_n
sleep 5
valgrind ./test_gnl ./line8_no_n
sleep 5
valgrind ./test_gnl ./line16_with_n
sleep 5
valgrind ./test_gnl ./line16_no_n
sleep 5
valgrind ./test_gnl ./random
sleep 5
valgrind ./test_gnl ./Makefile
