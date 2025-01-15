```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      // return jsonData; //Return processed data for better error handling
    } else {
      // Explicit error handling
      throw HttpException('Failed to load data: ${response.statusCode}', Uri.parse('https://api.example.com/data'));
    }
  } on SocketException catch (e) {
    // Handle network errors specifically
    print('Network error: $e');
    //Handle accordingly
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
    //Handle accordingly
  } on HttpException catch (e) {
      // Handle HTTP errors specifically
      print('HTTP error: ${e.message} at ${e.uri}');
      //Handle accordingly
  } catch (e) {
    // Handle other exceptions
    print('Unexpected error: $e');
    //Handle accordingly
    //Rethrow if appropriate
  }
}
```