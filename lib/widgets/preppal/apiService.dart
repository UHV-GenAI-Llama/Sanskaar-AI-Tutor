import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl =
      "https://<your-ngrok-url>.ngrok-free.app/predict"; // Ensure the endpoint is correct

  Future<Map<String, dynamic>> fetchQuizData(String prompt) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'prompt': prompt}),
      );

      if (response.statusCode == 200) {
        var responseBody = response.body;
        if (responseBody.isEmpty) {
          throw Exception('Empty response from the server');
        }
        return json.decode(responseBody);
      } else {
        throw Exception('Failed to load quiz data: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error fetching quiz data: $e');
    }
  }
}