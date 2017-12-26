namespace java com.virtualhistory.services
include "Types.thrift"
service GeolocationService{
    list<Types.Square> getSquares(
                    1: Types.Location squareCoordinate;
                    2: i32 zoom;
                    3: string authToken;
                )
                 throws (

                )



}