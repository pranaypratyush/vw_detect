# vw_detect

This repository holds a class that takes a hash table (formed from the output of vw) as input and predicts classifies pixels to 
yellow red or green.

The class must be initialized with 2 parameters, the path to hash and threads to intialized in the thread pool. The `getPredictions()`
method is passed with an original Mat (to classify the pixels from) and another Mat (to hold the results). The method pushes the tasks
the thread pool and is non-blocking. The method `wait_for_completion()` can be used to block the calling thread while the worker threads
are still busy.


Note : More than one frame can be prcessed at a time without a hazzle.
