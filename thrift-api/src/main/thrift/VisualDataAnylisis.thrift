namespace java com.virtualhistory.services
include "types.thrift"

service UserLifecycleService{
      string MahoutPreferenceAnalysis(
        1: list<User>  UserData;
        2: list<UserPreference> UserPreferenceData;
        )throws (
         		)
       string SocialMediaAnalysis(
       1: list<Messages> socialMedia;
       2: list<SocialMediaPrioritets> SocialPrioritets;
       )throws (
                )


}