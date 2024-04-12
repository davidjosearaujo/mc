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

int child()
{
    printf("Child network namespace\n");
    system("ip link");
    return 0;
}

int main()
{
    int status;

    printf("Parent network namespace\n");
    system("ip link");

    clone(child, child_stack + sizeof(child_stack), CLONE_NEWUSER | CLONE_NEWNET, 0);

    wait(&status);

    return 0;
}