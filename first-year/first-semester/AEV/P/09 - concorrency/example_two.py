import threading

class SharedResource:
    def __init__(self):
        self.counter = 0
        #self.counter_lock = threading.Lock()


def increment_counter(shared_resource):
    for _ in range(100000):
        #shared_resource.counter_lock.acquire()
        shared_resource.counter += 1
        #shared_resource.counter_lock.release()


def main():
    shared_resource = SharedResource()

    thread1 = threading.Thread(target=increment_counter, args=(shared_resource,))
    thread2 = threading.Thread(target=increment_counter, args=(shared_resource,))

    thread1.start()
    thread2.start()

    thread1.join()
    thread2.join()

    print("Final Counter Value:", shared_resource.counter)


if __name__ == "__main__":
    main()
