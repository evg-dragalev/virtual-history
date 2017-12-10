namespace java com.virtualhistory.services.structs

struct Location {
    1: required double latitude;
    2: required double longitude;
}

struct QuestStage{
    1: required string questId;
    2: optional Location completePoint;
    3: optional QuestStage nextStage;
    4: optional string description;
    5: optional i64 timer;
    //
}

struct Quest{
	1: required string id;
	2: required Location startPoint;
    3: optional list<QuestStage> stages;
    4: optional string description;
    5: optional i32 peopleEntered;
    6: optional i16 rating;
    //
}

struct Museum{
    1: required string id;
    2: required string name;
    3: required Location location;
    4: optional string description;
    //
}

struct User{
    1: required string id;
    2: required string username;
    3: required list<Quest> passedQuests;
    4: optional list<Quest> bookmarkedQuests;
    //
}

struct Model{

}