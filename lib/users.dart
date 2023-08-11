class Users {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String phoneNumber;
  final String website;

  Users(this.id, this.name, this.userName, this.email, this.phoneNumber,
      this.website);

  Users.fromMap(Map<String, dynamic> users)
      : id = users["id"],
        name = users["name"],
        userName = users["userName"],
        email = users["email"],
        phoneNumber = users["phoneNumber"],
        website = users["website"];
}
