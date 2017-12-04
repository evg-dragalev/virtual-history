/**
* Service to manipulate with user saved items
**/
service QuestHistoryService {

    /**
    * Add sight to the list of passed quests
    *
    * @param questId an id of the quest
    * @param authToken user authentication token
    * @param username user who passed quest
    * @return id of the item in 'history'
    * */
	string passedQuest(
			1: string questId,
			2: string username,
			3: string authToken
		) throws (
            1: exceptions.PBUserException PBUserException,
            2: exceptions.PBServiceException PBServiceException
		)

    /**
    * Remove quest from the list of 'history' quests
    *
    * @param questId an id of the quest
    * @param username  user who what to unsave the item
    * @param user authentication token
    **/
	void unPassed(
			1: string questId,
            2: string username,
			3: string authToken
		) throws (
            1: exceptions.PBUserException PBUserException,
            2: exceptions.PBServiceException PBServiceException
		)



    /**
    * Provide list of passed items of the given user
    *
    * @param username  user who what to unsave the item
    * @param page current page of result list
    * @param authToken user authentication token
    **/
	list<types.Quest> passed(
                1: string username,
                2: string page,
    			3: string authToken
    		) throws (
                1: exceptions.PBUserException PBUserException,
                2: exceptions.PBServiceException PBServiceException
    		)
}
