# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart:  unhandled exceptions within asynchronous operations.  The `bug.dart` file shows code with poor error handling, while `bugSolution.dart` provides an improved version. 

**Problem:** The original code lacks comprehensive error handling, potentially leading to crashes or unexpected behavior if the API call fails or if `jsonDecode` encounters an issue. 

**Solution:**  The improved code includes a `try-catch` block to handle potential exceptions gracefully and provides informative error messages.  It also checks the HTTP status code before processing the response.

This example highlights the importance of robust error handling in asynchronous Dart code to create more reliable and resilient applications.