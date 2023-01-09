import 'dart:convert';

// define your model classes
String jsonString = '''{
  "title": "My Website",
  "tutorials": [
    {
      "title": "Tutorial 1",
      "description": "This is the first tutorial on my website",
      "tags": ["tag1", "tag2"],
      "author": {
        "name": "Jane Doe",
        "bio": "Jane is an expert in tutorial writing",
        "profile_image_url": "https://example.com/jane.jpg"
      }
    },
    {
      "title": "Tutorial 2",
      "description": "This is the second tutorial on my website",
      "tags": ["tag3", "tag4"],
      "author": {
        "name": "John Doe",
        "bio": "John is also an expert in tutorial writing",
        "profile_image_url": "https://example.com/john.jpg"
      }
    }
  ],
  "authors": [
    {
      "name": "Jane Doe",
      "bio": "Jane is an expert in tutorial writing",
      "profile_image_url": "https://example.com/jane.jpg"
    },
    {
      "name": "John Doe",
      "bio": "John is also an expert in tutorial writing",
      "profile_image_url": "https://example.com/john.jpg"
    }
  ]
}''';
class Pages {
  final String title;
  final List<Tutorial> tutorials;
  final List<Author> authors;

  Pages({
    required this.title,
    required this.tutorials,
    required this.authors,
  });

  factory Pages.fromJson(Map<String, dynamic> json) {
    return Pages(
      title: json['title'],
      tutorials: (json['tutorials'] as List)
          .map((tutorialJson) => Tutorial.fromJson(tutorialJson))
          .toList(),
      authors: (json['authors'] as List)
          .map((authorJson) => Author.fromJson(authorJson))
          .toList(),
    );
  }
}

class Tutorial {
  final String title;
  final String description;
  final List<String> tags;
  final Author author;

  Tutorial({
   required this.title,
   required this.description,
   required this.tags,
   required this.author,
  });

  factory Tutorial.fromJson(Map<String, dynamic> json) {
    return Tutorial(
      title: json['title'],
      description: json['description'],
      tags: List<String>.from(json['tags']),
      author: Author.fromJson(json['author']),
    );
  }
}

class Author {
  final String name;
  final String bio;
  final String profileImageUrl;

  Author({
   required this.name,
   required this.bio,
   required this.profileImageUrl,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      name: json['name'],
      bio: json['bio'],
      profileImageUrl: json['profile_image_url'],
    );
  }
}

void main() {

var pageDataTutorial = jsonDecode(jsonString)['tutorials'] as List;
List<Tutorial> tutorialJson = pageDataTutorial.map((tutoJson)=>Tutorial.fromJson(tutoJson)).toList();

var pageDataAuthor = jsonDecode(jsonString)['authors'] as List;
  List<Author> authorJson = pageDataAuthor.map((authdate)=>Author.fromJson(authdate)).toList();

 String titles = jsonDecode(jsonString)['title'];
 Pages pagina = Pages(title:titles, tutorials: tutorialJson, authors: authorJson);
//Pages pagina = Pages('{title:$titles, tutorials:${authors}, authors: ${pageDataAuthor}}');
 print(pagina.authors);
 
 pagina.authors.map((element) {print(element.name);});
 
}
