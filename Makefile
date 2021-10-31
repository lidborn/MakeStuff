CC = g++
CFLAGS  = -g -Wall

default: githubProject

githubProject: main.o header.o
	$(CC) $(CFLAGS) -o githubTest main.o header.o

main.o: main.cpp header.hpp
	$(CC) $(CFLAGS) -c main.cpp

functions.o: functions.cpp header.hpp
	$(CC) $(CFLAGS) -c header.cpp

SetupGit:
	git config --global user.name "$n"
	git config --global user.email "$e"
	git remote add origin https://github.com/Kraklarn/DV1624-fabian-felix-fredrik

git:
	git add .
	git commit -m "$m"
	git push --all origin

.PHONY : clean

compile:
	g++ main.cpp header.h -o Hello
clean:
	$(RM) *.o *~