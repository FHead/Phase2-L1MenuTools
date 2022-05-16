default: Prepare library/TauHelperFunctions3.o DHQuery

Prepare:
	mkdir -p library

library/TauHelperFunctions3.o: source/TauHelperFunctions3.cpp include/TauHelperFunctions3.h
	g++ source/TauHelperFunctions3.cpp -Iinclude -c -o library/TauHelperFunctions3.o -std=c++17

DHQuery: source/DHQuery.cpp
	g++ source/DHQuery.cpp -Iinclude -o DHQuery

Clean:
	rm -f DHQuery
	rm -f library/*


