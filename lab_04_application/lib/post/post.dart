class Post {
  final int age;


  const Post({required this.age});

  factory Post.fromJSON(Map<int, dynamic> data) {
    return Post(
      age: data['age'],

    );
  }
}
