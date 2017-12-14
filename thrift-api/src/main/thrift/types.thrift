namespace java com.virtualhistory.services.structs

struct Location {
    1: required double latitude;
    2: required double longitude;
}

struct QuestStage{
    1: required string id;
    2: required string questId;
    3: optional Location completePoint;
    4: optional QuestStage nextStage;
    5: optional string description;
    6: optional i64 timer;
    7: optional list<Model> models;
}

struct Quest{
	1: required string id;
	2: required Location startPoint;
    3: optional string description;
    4: optional list<QuestStage> stages;
    5: optional i32 peopleEntered;
    6: optional i16 rating;
    7: optional list<Model> models
}

struct Museum{
    1: required string id;
    2: required string name;
    3: required Location location;
    4: optional string description;
    5: optional list<Quest> connectedQuests;
}

struct User{
    1: required string id;
    2: required string username;
    3: required list<Quest> passedQuests;
    4: optional list<Quest> bookmarkedQuests;
}

struct Model{
    1: required i32 modelId;
    2: required string srcPath;
//    3: required string version;
}