namespace java com.virtualhistory.services
include "types.thrift"


service SightsService {

    types.MapSight getSightById(
            1: string sightId,
        ) throws (
        )
list<types.MapSight> getSights(
            1: string sightIds,
              2: string page,
              3: string authToken
        ) throws (
        )

}