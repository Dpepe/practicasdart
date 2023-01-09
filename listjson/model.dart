// To parse this JSON data, do
//
//     final artist = artistFromMap(jsonString);
//     final album = albumFromMap(jsonString);
//     final track = trackFromMap(jsonString);

import 'dart:convert';

class Artist {
    Artist({
        this.results,
        this.info,
        this.name,
        this.founded,
        this.members,
    });

    final List<Result> results;
    final Info info;
    final String name;
    final int founded;
    final List<String> members;

    factory Artist.fromJson(String str) => Artist.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Artist.fromMap(Map<String, dynamic> json) => Artist(
        results: json["results"] == null ? null : List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        info: json["info"] == null ? null : Info.fromMap(json["info"]),
        name: json["name"] == null ? null : json["name"],
        founded: json["founded"] == null ? null : json["founded"],
        members: json["members"] == null ? null : List<String>.from(json["members"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "results": results == null ? null : List<dynamic>.from(results.map((x) => x.toMap())),
        "info": info == null ? null : info.toMap(),
        "name": name == null ? null : name,
        "founded": founded == null ? null : founded,
        "members": members == null ? null : List<dynamic>.from(members.map((x) => x)),
    };
}

class Info {
    Info({
        this.seed,
        this.results,
        this.page,
        this.version,
    });

    final String seed;
    final int results;
    final int page;
    final String version;

    factory Info.fromJson(String str) => Info.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Info.fromMap(Map<String, dynamic> json) => Info(
        seed: json["seed"],
        results: json["results"],
        page: json["page"],
        version: json["version"],
    );

    Map<String, dynamic> toMap() => {
        "seed": seed,
        "results": results,
        "page": page,
        "version": version,
    };
}

class Result {
    Result({
        this.gender,
        this.name,
        this.location,
        this.email,
        this.login,
        this.dob,
        this.registered,
        this.phone,
        this.cell,
        this.id,
        this.picture,
        this.nat,
    });

    final String gender;
    final Name name;
    final Location location;
    final String email;
    final Login login;
    final Dob dob;
    final Dob registered;
    final String phone;
    final String cell;
    final Id id;
    final Picture picture;
    final String nat;

    factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Result.fromMap(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        name: Name.fromMap(json["name"]),
        location: Location.fromMap(json["location"]),
        email: json["email"],
        login: Login.fromMap(json["login"]),
        dob: Dob.fromMap(json["dob"]),
        registered: Dob.fromMap(json["registered"]),
        phone: json["phone"],
        cell: json["cell"],
        id: Id.fromMap(json["id"]),
        picture: Picture.fromMap(json["picture"]),
        nat: json["nat"],
    );

    Map<String, dynamic> toMap() => {
        "gender": gender,
        "name": name.toMap(),
        "location": location.toMap(),
        "email": email,
        "login": login.toMap(),
        "dob": dob.toMap(),
        "registered": registered.toMap(),
        "phone": phone,
        "cell": cell,
        "id": id.toMap(),
        "picture": picture.toMap(),
        "nat": nat,
    };
}

class Dob {
    Dob({
        this.date,
        this.age,
    });

    final DateTime date;
    final int age;

    factory Dob.fromJson(String str) => Dob.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Dob.fromMap(Map<String, dynamic> json) => Dob(
        date: DateTime.parse(json["date"]),
        age: json["age"],
    );

    Map<String, dynamic> toMap() => {
        "date": date.toIso8601String(),
        "age": age,
    };
}

class Id {
    Id({
        this.name,
        this.value,
    });

    final String name;
    final String value;

    factory Id.fromJson(String str) => Id.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Id.fromMap(Map<String, dynamic> json) => Id(
        name: json["name"],
        value: json["value"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "value": value,
    };
}

class Location {
    Location({
        this.street,
        this.city,
        this.state,
        this.country,
        this.postcode,
        this.coordinates,
        this.timezone,
    });

    final Street street;
    final String city;
    final String state;
    final String country;
    final String postcode;
    final Coordinates coordinates;
    final Timezone timezone;

    factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Location.fromMap(Map<String, dynamic> json) => Location(
        street: Street.fromMap(json["street"]),
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postcode: json["postcode"],
        coordinates: Coordinates.fromMap(json["coordinates"]),
        timezone: Timezone.fromMap(json["timezone"]),
    );

    Map<String, dynamic> toMap() => {
        "street": street.toMap(),
        "city": city,
        "state": state,
        "country": country,
        "postcode": postcode,
        "coordinates": coordinates.toMap(),
        "timezone": timezone.toMap(),
    };
}

class Coordinates {
    Coordinates({
        this.latitude,
        this.longitude,
    });

    final String latitude;
    final String longitude;

    factory Coordinates.fromJson(String str) => Coordinates.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Coordinates.fromMap(Map<String, dynamic> json) => Coordinates(
        latitude: json["latitude"],
        longitude: json["longitude"],
    );

    Map<String, dynamic> toMap() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}

class Street {
    Street({
        this.number,
        this.name,
    });

    final int number;
    final String name;

    factory Street.fromJson(String str) => Street.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Street.fromMap(Map<String, dynamic> json) => Street(
        number: json["number"],
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "number": number,
        "name": name,
    };
}

class Timezone {
    Timezone({
        this.offset,
        this.description,
    });

    final String offset;
    final String description;

    factory Timezone.fromJson(String str) => Timezone.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Timezone.fromMap(Map<String, dynamic> json) => Timezone(
        offset: json["offset"],
        description: json["description"],
    );

    Map<String, dynamic> toMap() => {
        "offset": offset,
        "description": description,
    };
}

class Login {
    Login({
        this.uuid,
        this.username,
        this.password,
        this.salt,
        this.md5,
        this.sha1,
        this.sha256,
    });

    final String uuid;
    final String username;
    final String password;
    final String salt;
    final String md5;
    final String sha1;
    final String sha256;

    factory Login.fromJson(String str) => Login.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Login.fromMap(Map<String, dynamic> json) => Login(
        uuid: json["uuid"],
        username: json["username"],
        password: json["password"],
        salt: json["salt"],
        md5: json["md5"],
        sha1: json["sha1"],
        sha256: json["sha256"],
    );

    Map<String, dynamic> toMap() => {
        "uuid": uuid,
        "username": username,
        "password": password,
        "salt": salt,
        "md5": md5,
        "sha1": sha1,
        "sha256": sha256,
    };
}

class Name {
    Name({
        this.title,
        this.first,
        this.last,
    });

    final String title;
    final String first;
    final String last;

    factory Name.fromJson(String str) => Name.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Name.fromMap(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
    );

    Map<String, dynamic> toMap() => {
        "title": title,
        "first": first,
        "last": last,
    };
}

class Picture {
    Picture({
        this.large,
        this.medium,
        this.thumbnail,
    });

    final String large;
    final String medium;
    final String thumbnail;

    factory Picture.fromJson(String str) => Picture.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Picture.fromMap(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toMap() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
    };
}

class Album {
    Album({
        this.name,
        this.artist,
        this.tracks,
    });

    final String name;
    final ArtistClass artist;
    final List<Track> tracks;

    factory Album.fromJson(String str) => Album.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Album.fromMap(Map<String, dynamic> json) => Album(
        name: json["name"],
        artist: ArtistClass.fromMap(json["artist"]),
        tracks: List<Track>.from(json["tracks"].map((x) => Track.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "artist": artist.toMap(),
        "tracks": List<dynamic>.from(tracks.map((x) => x.toMap())),
    };
}

class ArtistClass {
    ArtistClass({
        this.name,
        this.founded,
        this.members,
    });

    final String name;
    final int founded;
    final List<String> members;

    factory ArtistClass.fromJson(String str) => ArtistClass.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ArtistClass.fromMap(Map<String, dynamic> json) => ArtistClass(
        name: json["name"],
        founded: json["founded"],
        members: List<String>.from(json["members"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "founded": founded,
        "members": List<dynamic>.from(members.map((x) => x)),
    };
}

class Track {
    Track({
        this.name,
        this.duration,
    });

    final String name;
    final int duration;

    factory Track.fromJson(String str) => Track.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Track.fromMap(Map<String, dynamic> json) => Track(
        name: json["name"],
        duration: json["duration"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "duration": duration,
    };
}
