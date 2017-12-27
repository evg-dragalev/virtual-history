namespace java com.virtualhistory.services
include "types.thrift"

service UserLifecycleService.thrift{
        string CreateUser(
        1: string  Username;
        2: string Password;
        3: string Email;
        4: string Phone
        )
        string LogIn(
        1: string Username;
        2: string Password;
        )
        string EditUserInfo(
         1: string  Username;
         2: string Password;
         3: string Email;
         4: string Phone
        )
        string DeleteUser(
        1: string Username;
        2: string Password;
        )
}