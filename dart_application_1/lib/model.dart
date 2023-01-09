// To parse this JSON data, do
//
//     final artist = artistFromMap(jsonString);
//     final album = albumFromMap(jsonString);
//     final track = trackFromMap(jsonString);

import 'dart:convert';

class ArtistElement {
    ArtistElement({
        this.fairings,
        this.links,
        this.staticFireDateUtc,
        this.staticFireDateUnix,
        this.net,
        this.window,
        this.rocket,
        this.success,
        this.failures,
        this.details,
        this.crew,
        this.ships,
        this.capsules,
        this.payloads,
        this.launchpad,
        this.flightNumber,
        this.name,
        this.dateUtc,
        this.dateUnix,
        this.dateLocal,
        this.datePrecision,
        this.upcoming,
        this.cores,
        this.autoUpdate,
        this.tbd,
        this.launchLibraryId,
        this.id,
    });

    final Fairings? fairings;
    final Links links;
    final DateTime staticFireDateUtc;
    final int staticFireDateUnix;
    final bool net;
    final int window;
    final Rocket rocket;
    final bool success;
    final List<Failure> failures;
    final String details;
    final List<Crew> crew;
    final List<String> ships;
    final List<String> capsules;
    final List<String> payloads;
    final Launchpad launchpad;
    final int flightNumber;
    final String name;
    final DateTime dateUtc;
    final int dateUnix;
    final DateTime dateLocal;
    final DatePrecision datePrecision;
    final bool upcoming;
    final List<Core> cores;
    final bool autoUpdate;
    final bool tbd;
    final String launchLibraryId;
    final String id;

    factory ArtistElement.fromJson(String str) => ArtistElement.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ArtistElement.fromMap(Map<String, dynamic> json) => ArtistElement(
        fairings: json["fairings"] == null ? null : Fairings.fromMap(json["fairings"]),
        links: Links.fromMap(json["links"]),
        staticFireDateUtc: json["static_fire_date_utc"] == null ? null : DateTime.parse(json["static_fire_date_utc"]),
        staticFireDateUnix: json["static_fire_date_unix"] == null ? null : json["static_fire_date_unix"],
        net: json["net"],
        window: json["window"] == null ? null : json["window"],
        rocket: rocketValues.map[json["rocket"]],
        success: json["success"] == null ? null : json["success"],
        failures: List<Failure>.from(json["failures"].map((x) => Failure.fromMap(x))),
        details: json["details"] == null ? null : json["details"],
        crew: List<Crew>.from(json["crew"].map((x) => Crew.fromMap(x))),
        ships: List<String>.from(json["ships"].map((x) => x)),
        capsules: List<String>.from(json["capsules"].map((x) => x)),
        payloads: List<String>.from(json["payloads"].map((x) => x)),
        launchpad: launchpadValues.map[json["launchpad"]],
        flightNumber: json["flight_number"],
        name: json["name"],
        dateUtc: DateTime.parse(json["date_utc"]),
        dateUnix: json["date_unix"],
        dateLocal: DateTime.parse(json["date_local"]),
        datePrecision: datePrecisionValues.map[json["date_precision"]],
        upcoming: json["upcoming"],
        cores: List<Core>.from(json["cores"].map((x) => Core.fromMap(x))),
        autoUpdate: json["auto_update"],
        tbd: json["tbd"],
        launchLibraryId: json["launch_library_id"] == null ? null : json["launch_library_id"],
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "fairings": fairings == null ? null : fairings.toMap(),
        "links": links.toMap(),
        "static_fire_date_utc": staticFireDateUtc == null ? null : staticFireDateUtc.toIso8601String(),
        "static_fire_date_unix": staticFireDateUnix == null ? null : staticFireDateUnix,
        "net": net,
        "window": window == null ? null : window,
        "rocket": rocketValues.reverse[rocket],
        "success": success == null ? null : success,
        "failures": List<dynamic>.from(failures.map((x) => x.toMap())),
        "details": details == null ? null : details,
        "crew": List<dynamic>.from(crew.map((x) => x.toMap())),
        "ships": List<dynamic>.from(ships.map((x) => x)),
        "capsules": List<dynamic>.from(capsules.map((x) => x)),
        "payloads": List<dynamic>.from(payloads.map((x) => x)),
        "launchpad": launchpadValues.reverse[launchpad],
        "flight_number": flightNumber,
        "name": name,
        "date_utc": dateUtc.toIso8601String(),
        "date_unix": dateUnix,
        "date_local": dateLocal.toIso8601String(),
        "date_precision": datePrecisionValues.reverse[datePrecision],
        "upcoming": upcoming,
        "cores": List<dynamic>.from(cores.map((x) => x.toMap())),
        "auto_update": autoUpdate,
        "tbd": tbd,
        "launch_library_id": launchLibraryId == null ? null : launchLibraryId,
        "id": id,
    };
}

class Core {
    Core({
        this.core,
        this.flight,
        this.gridfins,
        this.legs,
        this.reused,
        this.landingAttempt,
        this.landingSuccess,
        this.landingType,
        this.landpad,
    });

    final String core;
    final int flight;
    final bool gridfins;
    final bool legs;
    final bool reused;
    final bool landingAttempt;
    final bool landingSuccess;
    final LandingType landingType;
    final Landpad landpad;

    factory Core.fromJson(String str) => Core.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Core.fromMap(Map<String, dynamic> json) => Core(
        core: json["core"] == null ? null : json["core"],
        flight: json["flight"] == null ? null : json["flight"],
        gridfins: json["gridfins"] == null ? null : json["gridfins"],
        legs: json["legs"] == null ? null : json["legs"],
        reused: json["reused"] == null ? null : json["reused"],
        landingAttempt: json["landing_attempt"] == null ? null : json["landing_attempt"],
        landingSuccess: json["landing_success"] == null ? null : json["landing_success"],
        landingType: json["landing_type"] == null ? null : landingTypeValues.map[json["landing_type"]],
        landpad: json["landpad"] == null ? null : landpadValues.map[json["landpad"]],
    );

    Map<String, dynamic> toMap() => {
        "core": core == null ? null : core,
        "flight": flight == null ? null : flight,
        "gridfins": gridfins == null ? null : gridfins,
        "legs": legs == null ? null : legs,
        "reused": reused == null ? null : reused,
        "landing_attempt": landingAttempt == null ? null : landingAttempt,
        "landing_success": landingSuccess == null ? null : landingSuccess,
        "landing_type": landingType == null ? null : landingTypeValues.reverse[landingType],
        "landpad": landpad == null ? null : landpadValues.reverse[landpad],
    };
}

enum LandingType { OCEAN, ASDS, RTLS }

final landingTypeValues = EnumValues({
    "ASDS": LandingType.ASDS,
    "Ocean": LandingType.OCEAN,
    "RTLS": LandingType.RTLS
});

enum Landpad { THE_5_E9_E3032383_ECB761634_E7_CB, THE_5_E9_E3032383_ECB6_BB234_E7_CA, THE_5_E9_E3032383_ECB267_A34_E7_C7, THE_5_E9_E3033383_ECBB9_E534_E7_CC, THE_5_E9_E3032383_ECB90_A834_E7_C8, THE_5_E9_E3032383_ECB554034_E7_C9, THE_5_E9_E3033383_ECB075134_E7_CD }

final landpadValues = EnumValues({
    "5e9e3032383ecb267a34e7c7": Landpad.THE_5_E9_E3032383_ECB267_A34_E7_C7,
    "5e9e3032383ecb554034e7c9": Landpad.THE_5_E9_E3032383_ECB554034_E7_C9,
    "5e9e3032383ecb6bb234e7ca": Landpad.THE_5_E9_E3032383_ECB6_BB234_E7_CA,
    "5e9e3032383ecb761634e7cb": Landpad.THE_5_E9_E3032383_ECB761634_E7_CB,
    "5e9e3032383ecb90a834e7c8": Landpad.THE_5_E9_E3032383_ECB90_A834_E7_C8,
    "5e9e3033383ecb075134e7cd": Landpad.THE_5_E9_E3033383_ECB075134_E7_CD,
    "5e9e3033383ecbb9e534e7cc": Landpad.THE_5_E9_E3033383_ECBB9_E534_E7_CC
});

class Crew {
    Crew({
        this.crew,
        this.role,
    });

    final String crew;
    final String role;

    factory Crew.fromJson(String str) => Crew.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Crew.fromMap(Map<String, dynamic> json) => Crew(
        crew: json["crew"],
        role: json["role"],
    );

    Map<String, dynamic> toMap() => {
        "crew": crew,
        "role": role,
    };
}

enum DatePrecision { HOUR, DAY, MONTH, QUARTER }

final datePrecisionValues = EnumValues({
    "day": DatePrecision.DAY,
    "hour": DatePrecision.HOUR,
    "month": DatePrecision.MONTH,
    "quarter": DatePrecision.QUARTER
});

class Failure {
    Failure({
        this.time,
        this.altitude,
        this.reason,
    });

    final int time;
    final int altitude;
    final String reason;

    factory Failure.fromJson(String str) => Failure.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Failure.fromMap(Map<String, dynamic> json) => Failure(
        time: json["time"],
        altitude: json["altitude"] == null ? null : json["altitude"],
        reason: json["reason"],
    );

    Map<String, dynamic> toMap() => {
        "time": time,
        "altitude": altitude == null ? null : altitude,
        "reason": reason,
    };
}

class Fairings {
    Fairings({
        this.reused,
        this.recoveryAttempt,
        this.recovered,
        this.ships,
    });

    final bool reused;
    final bool recoveryAttempt;
    final bool recovered;
    final List<String> ships;

    factory Fairings.fromJson(String str) => Fairings.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Fairings.fromMap(Map<String, dynamic> json) => Fairings(
        reused: json["reused"] == null ? null : json["reused"],
        recoveryAttempt: json["recovery_attempt"] == null ? null : json["recovery_attempt"],
        recovered: json["recovered"] == null ? null : json["recovered"],
        ships: List<String>.from(json["ships"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "reused": reused == null ? null : reused,
        "recovery_attempt": recoveryAttempt == null ? null : recoveryAttempt,
        "recovered": recovered == null ? null : recovered,
        "ships": List<dynamic>.from(ships.map((x) => x)),
    };
}

enum Launchpad { THE_5_E9_E4502_F5090995_DE566_F86, THE_5_E9_E4501_F509094_BA4566_F84, THE_5_E9_E4502_F509092_B78566_F87, THE_5_E9_E4502_F509094188566_F88 }

final launchpadValues = EnumValues({
    "5e9e4501f509094ba4566f84": Launchpad.THE_5_E9_E4501_F509094_BA4566_F84,
    "5e9e4502f509092b78566f87": Launchpad.THE_5_E9_E4502_F509092_B78566_F87,
    "5e9e4502f509094188566f88": Launchpad.THE_5_E9_E4502_F509094188566_F88,
    "5e9e4502f5090995de566f86": Launchpad.THE_5_E9_E4502_F5090995_DE566_F86
});

class Links {
    Links({
        this.patch,
        this.reddit,
        this.flickr,
        this.presskit,
        this.webcast,
        this.youtubeId,
        this.article,
        this.wikipedia,
    });

    final Patch patch;
    final Reddit reddit;
    final Flickr flickr;
    final String presskit;
    final String webcast;
    final String youtubeId;
    final String article;
    final String wikipedia;

    factory Links.fromJson(String str) => Links.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Links.fromMap(Map<String, dynamic> json) => Links(
        patch: Patch.fromMap(json["patch"]),
        reddit: Reddit.fromMap(json["reddit"]),
        flickr: Flickr.fromMap(json["flickr"]),
        presskit: json["presskit"] == null ? null : json["presskit"],
        webcast: json["webcast"] == null ? null : json["webcast"],
        youtubeId: json["youtube_id"] == null ? null : json["youtube_id"],
        article: json["article"] == null ? null : json["article"],
        wikipedia: json["wikipedia"] == null ? null : json["wikipedia"],
    );

    Map<String, dynamic> toMap() => {
        "patch": patch.toMap(),
        "reddit": reddit.toMap(),
        "flickr": flickr.toMap(),
        "presskit": presskit == null ? null : presskit,
        "webcast": webcast == null ? null : webcast,
        "youtube_id": youtubeId == null ? null : youtubeId,
        "article": article == null ? null : article,
        "wikipedia": wikipedia == null ? null : wikipedia,
    };
}

class Flickr {
    Flickr({
        this.small,
        this.original,
    });

    final List<dynamic> small;
    final List<String> original;

    factory Flickr.fromJson(String str) => Flickr.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Flickr.fromMap(Map<String, dynamic> json) => Flickr(
        small: List<dynamic>.from(json["small"].map((x) => x)),
        original: List<String>.from(json["original"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "small": List<dynamic>.from(small.map((x) => x)),
        "original": List<dynamic>.from(original.map((x) => x)),
    };
}

class Patch {
    Patch({
        this.small,
        this.large,
    });

    final String small;
    final String large;

    factory Patch.fromJson(String str) => Patch.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Patch.fromMap(Map<String, dynamic> json) => Patch(
        small: json["small"] == null ? null : json["small"],
        large: json["large"] == null ? null : json["large"],
    );

    Map<String, dynamic> toMap() => {
        "small": small == null ? null : small,
        "large": large == null ? null : large,
    };
}

class Reddit {
    Reddit({
        this.campaign,
        this.launch,
        this.media,
        this.recovery,
    });

    final String campaign;
    final String launch;
    final String media;
    final String recovery;

    factory Reddit.fromJson(String str) => Reddit.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Reddit.fromMap(Map<String, dynamic> json) => Reddit(
        campaign: json["campaign"] == null ? null : json["campaign"],
        launch: json["launch"] == null ? null : json["launch"],
        media: json["media"] == null ? null : json["media"],
        recovery: json["recovery"] == null ? null : json["recovery"],
    );

    Map<String, dynamic> toMap() => {
        "campaign": campaign == null ? null : campaign,
        "launch": launch == null ? null : launch,
        "media": media == null ? null : media,
        "recovery": recovery == null ? null : recovery,
    };
}

enum Rocket { THE_5_E9_D0_D95_EDA69955_F709_D1_EB, THE_5_E9_D0_D95_EDA69973_A809_D1_EC, THE_5_E9_D0_D95_EDA69974_DB09_D1_ED }

final rocketValues = EnumValues({
    "5e9d0d95eda69955f709d1eb": Rocket.THE_5_E9_D0_D95_EDA69955_F709_D1_EB,
    "5e9d0d95eda69973a809d1ec": Rocket.THE_5_E9_D0_D95_EDA69973_A809_D1_EC,
    "5e9d0d95eda69974db09d1ed": Rocket.THE_5_E9_D0_D95_EDA69974_DB09_D1_ED
});

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

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
