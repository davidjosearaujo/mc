#include <stdio.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <stdbool.h>

void test_open( char * filename, int mode, char * mode_str, bool create)
{   
    int fd;

    if (create)
    	fd = open( filename, mode, S_IRWXU | S_IRWXG);
    else
    	fd = open( filename, mode );
    
    if (fd != -1) {
        printf( "Open %s %s\n", filename, mode_str );
        close( fd );
    }
    else {
        fprintf( stderr, "File %s cannot be open %s (errno = %d, %s)\n",
                filename, mode_str, errno, strerror( errno) );
    }
}

void
test_link( char * filename )
{
    char * new_name = malloc( strlen( filename ) + 5 );
    sprintf( new_name, "%s_new", filename );
    
    if (link( filename, new_name ) != -1) {
        printf( "Link %s to %s\n", filename, new_name );
    }
    else {
        fprintf( stderr, "Cannot link %s to %s (errno = %d, %s)\n",
                filename, new_name, errno, strerror( errno) );
    }

    unlink( new_name );
}


int main( int argc, char * argv[] )
{
    umask( 0 );

    if (argc >= 2) {
        while (--argc) {
            test_open( argv[argc], O_WRONLY | O_CREAT, "WC", true );
            test_open( argv[argc], O_RDONLY, "RO", false );
            test_open( argv[argc], O_WRONLY, "WO", false );
            test_open( argv[argc], O_WRONLY | O_APPEND, "WA", false );
            test_open( argv[argc], O_RDWR, "RW", false );
            test_link( argv[argc] );
            //unlink( argv[argc] );
        }

    }

    return 0;
}
