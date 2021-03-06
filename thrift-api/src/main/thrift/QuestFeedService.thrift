namespace java com.virtualhistory.services
include "types.thrift"

/**
* Service to provide quests feeds
**/
service QuestFeedService {
    /**
    *
    * Return quest info by its id 
    * 
    * @param questId
    * @return quest 
    **/
    types.Quest getQuestById(
            1: string questId,
        ) throws (
        )

    /**
    * Return list of quests by id  
    *
    * @param questIds determine list of quests to be recieved by id
    * @param authToken user authentication token
    * @return list of quests
    **/
	list<types.Quest> quests(
			1: list<string> questIds,
			2: string authToken
		) throws (
		)


    /**
    * Return list of quests by id paginated
    *
    * @param questtIds determine list of quests to be recieved by id
    * @param page determine quests to be sent
    * @param authToken user authentication token
    * @return list of quests
    **/
	list<types.Quest> questsPaginated(
			1: list<string> questIds,
			2: i32 page,
		    3: string authToken
		) throws (
		)


    /**
    *Return list of quests based on users location
    *
    * @param location point on the map for near guests
    * @param authToken user authentication token
    * @return list of quests near point on the map 
    **/
    list<types.Quest> getQuestsByLocation(
            1: list<types.Location> location;
            2: string authToken
        ) throws (
        )
}