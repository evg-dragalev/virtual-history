namespace java com.virtualhistory.services
include "types.thrift"

/**
*
* Service for delivering 3d VR objects on device
*
**/

service ModelsDeliveryService{

    types.Model getModelById(
        1: string authToken
        2: string modelId
    ) throws(

    )

    list<types.Model> getModelsForQuest(
	    1: string authToken
	    2: string questId
	) throws(

	)

    list<types.Model> getModelForStage(
            1: string authToken
	    2: string stageId
	) throws(

	)
}
