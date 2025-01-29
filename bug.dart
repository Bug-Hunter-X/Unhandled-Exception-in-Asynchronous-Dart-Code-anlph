```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response here
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      // Handle the error gracefully
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions properly
    print('Error: $e');
    // Consider rethrowing or handling the exception based on your needs.
  }
}
```