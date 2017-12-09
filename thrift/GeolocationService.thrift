namespace java com.virtualhistory.services
include "types.thrift"

service GeolocationService{


    list<types.Square> getSquares(
                    1: types.Location currMapCenter;
                    2: i32 zoom;
                    3: string: authToken
                )
                 throws (
                )
}