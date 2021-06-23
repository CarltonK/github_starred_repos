import 'package:http/http.dart' as http;

class ApiProvider {
  /// Initialize an empty constructor
  ApiProvider.empty();

  static const String API_URL = 'https://api.github.com/search/repositories';

  Future getStarredRepos() async {
    // Date right now
    DateTime dateRightNow = DateTime.now();
    // Date 30 days ago
    DateTime aMonthAgo = dateRightNow.subtract(Duration(days: 30));
    // Year
    int yearAMonthAgo = aMonthAgo.year;
    // Month
    int monthAmonthAgo = aMonthAgo.month;
    // Day
    int dayAmonthAGo = aMonthAgo.day;
    // Full date a month ago
    String fullDate = '$yearAMonthAgo-$monthAmonthAgo-$dayAmonthAGo';

    // Url
    String url = API_URL + '?q=created:>$fullDate&sort=stars&order=desc';

    // Request
    var dataRequest = await http.get(
      Uri.parse(url),
    );
    // Response
    dynamic dataResponse = dataRequest.body;
    print('Response: $dataResponse');
    return null;
  }
}
