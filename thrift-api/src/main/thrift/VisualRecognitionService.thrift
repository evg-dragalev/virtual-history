namespace java com.virtualhistory.services
include "types.thrift"
service VisualRecognitionService{

     string PhotoAnylisis(
        1: list<Model> modelData;
        2: list<Geolocation> gelocationInfo;
        3: string  positionInfo;
     )
      string PathAnylisis(
          1: Location  nextPosition;
          2: string hint
          3: bool isEnd;
      )
}