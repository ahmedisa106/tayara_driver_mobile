class ReformatTime {
  static String formatTime(String value) {
    var x = value.split(':');
    var y = '${x[0]}:${x[1]}';
    return y;
  }
}
