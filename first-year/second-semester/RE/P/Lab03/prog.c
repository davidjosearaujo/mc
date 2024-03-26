#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

char* buffer = "Hello World\n";

void bar(void) {
  int fd = open("hello.txt", O_CREAT | O_WRONLY);
  write(fd, buffer, strlen(buffer));
  close(fd);
}

void foo(void){
  printf("%s", buffer);
}

int main(int argc, char **argv){
  foo();
  bar();
  return 0;
}
