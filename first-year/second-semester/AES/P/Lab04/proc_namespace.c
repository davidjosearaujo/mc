/**
 * Copyright 2024 David Araújo
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *     https://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define _GNU_SOURCE
#include <sched.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/wait.h>

static char child_stack[1048576];

int child() {
    printf("Child: PID = %d, PPID = %d, EUID = %d\n", getpid(), getppid(), geteuid());
    return 0;
}

int main(){
    int child_pid, status;

    printf("Parent: PID = %d, PPID = %d\n", getpid(), getppid());

    child_pid = clone(child, child_stack + sizeof(child_stack), CLONE_NEWUSER | CLONE_NEWPID, 0);

    printf("Parent: child PID = %d (errno = %d)\n", child_pid, errno);

    return 0;
}