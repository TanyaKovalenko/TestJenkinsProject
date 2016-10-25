all: hello

hello: main.o factorial.o hello.o
	link.exe /OUT:hello.exe main.o factorial.o hello.o

main.o: main.cpp
	cl.exe /c main.cpp

factorial.o: factorial.cpp
	cl.exe /c factorial.cpp  

hello.o: hello.cpp
	cl.exe /c hello.cpp

clean:
	del *.o hello.exe
