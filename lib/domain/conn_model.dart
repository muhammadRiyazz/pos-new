class DatabaseConfig {
  String ip;
  String port;
  String databaseName;
  String username;
  String password;
  int timeoutInSeconds;

  DatabaseConfig({
    required this.ip,
    required this.port,
    required this.databaseName,
    required this.username,
    required this.password,
    required this.timeoutInSeconds,
  });

  factory DatabaseConfig.fromJson(Map<String, dynamic> json) {
    return DatabaseConfig(
      ip: json['ip'],                                  
      port: json['port'],
      databaseName: json['databaseName'],
      username: json['username'],
      password: json['password'],
      timeoutInSeconds: json['timeoutInSeconds'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ip'] = this.ip;
    data['port'] = this.port;
    data['databaseName'] = this.databaseName;
    data['username'] = this.username;
    data['password'] = this.password;
    data['timeoutInSeconds'] = this.timeoutInSeconds;
    return data;
  }
}
