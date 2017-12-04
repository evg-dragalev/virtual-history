service GeolocationService{
    list<Square> getSquares(
                    1: Location currMapCenter;
                    2: i32 zoom;
                    3: string: authToken
                )
                 throws (
                    1: SquareNotExist
                )
}