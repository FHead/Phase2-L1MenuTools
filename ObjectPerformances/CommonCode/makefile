default: Prepare library/FourVector.o DHQuery

Prepare:
	mkdir -p library

library/FourVector.o: source/FourVector.cpp include/FourVector.h
	g++ source/FourVector.cpp -Iinclude -c -o library/FourVector.o -std=c++17

DHQuery: source/DHQuery.cpp
	g++ source/DHQuery.cpp -Iinclude -o DHQuery

Clean:
	rm -f DHQuery
	rm -f library/*


