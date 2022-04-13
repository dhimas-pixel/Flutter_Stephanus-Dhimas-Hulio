class User {
  String id;
  String phone;
  String name;
  String avatar;

  User({
    required this.id,
    required this.phone,
    required this.name,
    required this.avatar,
  });

  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'],
        phone: object['phone'],
        name: object['name'],
        avatar: object['avatar']);
  }
}
