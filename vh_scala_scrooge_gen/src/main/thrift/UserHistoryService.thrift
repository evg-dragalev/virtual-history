namespace java com.virtualhistory.services
include "types.thrift"

/**
* Service to manipulate with user saved items
**/
service UserHistoryService {

    /**
    * Add sight to the list of passed quests
    *
    * @param questId an id of the quest
    * @param authToken user authentication token
    * @param userId id of the user who passed quest
    * @return id of the passed quest
    * */
	string passQuest(
			1: string questId,
			2: string userId,
			3: string authToken
		) throws (
		)

    /**
    * Remove quest from the list of 'history' quests
    *
    * @param questId an id of the quest to be removed from history
    * @param userId id of the user who what to unsave the item
    * @param authToken user authentication token
    * @return id of the quest 
    **/
	string unPass(
			1: string questId,
            2: string userId,
			3: string authToken
		) throws (
		)

    /**
    * Provide list of passed items of the given user for the given page
    *
    * @param userId id of the given user
    * @param page current page of result list
    * @param authToken user authentication token
    * @return list of quests passed by user for the given page
    **/

	list<types.Quest> listPassedPaginated(
            1: string userId,
            2: i32 page,
    		3: string authToken
    	) throws (
    	)
}
