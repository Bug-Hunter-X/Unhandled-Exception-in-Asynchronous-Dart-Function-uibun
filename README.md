# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in Dart asynchronous programming:  failure to handle exceptions properly in `async` functions.  The `bug.dart` file shows an example where an HTTP request might fail, and the exception is only printed to the console without proper error handling.  `bugSolution.dart` provides a corrected version that handles the exception more robustly.

The key is to understand how to catch and handle exceptions in asynchronous code to prevent unexpected behavior and ensure application stability.