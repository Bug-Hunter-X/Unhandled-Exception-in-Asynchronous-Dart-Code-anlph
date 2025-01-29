```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response here
      final jsonData = jsonDecode(response.body);
      //Process jsonData and handle potential exceptions within this block
       try{
        //Your code to process JsonData
       } catch(e){
         print("Error processing JsonData: $e");
       }
    } else {
      // Handle the error gracefully
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors specifically
    print('JSON decoding error: $e');
  } catch (e) {
    // Handle other exceptions
    print('Error: $e');
    //Consider rethrowing exception if necessary
  }
}
```