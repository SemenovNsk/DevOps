#include <stdio.h>
#include <fcgi_stdio.h>

int main () {
    while (FCGI_Accept() >= 0) {
        printf("Content-Type: text/html\r\n\r\n");
        printf("<html><body><h1>Hello world!<h1><html><body>");

    }
    return 0;
}
