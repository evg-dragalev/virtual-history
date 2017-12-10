namespace java com.virtualhistory.services
include "types.thrift"

/**
*
* Service for delivering 3d VR objects on device
*
**/

service ModelsDeliveryService{

	types.Model getModelForQuest(
	    1:
	) throws(

	)

	types.Model getModelForStage(
	    1:
	) throws(

	)

	types.Model updateModel(
	    1:
	) throws(

	)
}