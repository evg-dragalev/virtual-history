/**
* Service to provide quests feeds
**/
service QuestService {

    /**
    * @param questIds determine list of quests to be recieved by id
    * @param authToken user authentication token
    * @return list of quests
    **/
	list<types.Quest> quests(
					1: list<string> questIds,
					2: string authToken
				) throws (
                    1: exceptions.PBUserException PBUserException,
                    2: exceptions.PBServiceException PBServiceException
				)


    /**
    * Return list of quests by id
    *
    * @param questtIds determine list of quests to be recieved by id
    * @param authToken user authentication token
    * @return list of quests
    **/
	list<types.Quest> questsPaginated(
					1: list<string> questIds,
					2: i32 page,
					3: string authToken
				) throws (
                    1: exceptions.PBUserException PBUserException,
                    2: exceptions.PBServiceException PBServiceException
				)

    list<Quest> getQuests(
                    1: list<Strings> squares;
                    2: string: authToken
                ) throws (
                    1: SquareNotExist
                )
}