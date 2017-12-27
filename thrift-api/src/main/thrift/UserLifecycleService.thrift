namespace java com.virtualhistory.services
include "types.thrift"

service UserLifecycleService{
        string CreateUser(
        1: string  Username;
        2: string Password;
        3: string Email;
        4: string Phone
        )throws (
         		)
        string LogIn(
        1: string Username;
        2: string Password;
        )throws (
         		)
        string EditUserInfo(
         1: string  Username;
         2: string Password;
         3: string Email;
         4: string Phone
        )throws (

         		)
        string DeleteUser(
        1: string Username;
        2: string Password;
        )throws (
         		)
}