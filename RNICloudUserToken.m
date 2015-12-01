//
//  RNICloudUserToken.m
//
//  Created by joshuakarjala on 01/12/15
//
//

#import "RCTBridgeModule.h"
#import "RCTEventDispatcher.h"
#import "RCTUtils.h"

@import CloudKit;

@interface RNICloudUserToken : NSObject <RCTBridgeModule>
//@property (nonatomic, retain) NSMetadataQuery *query;

@end

@implementation RNICloudUserToken


RCT_EXPORT_MODULE(RNICloudUserToken);

/*
 let iCloud = React.NativeModules.ICloudUserToken;
 iCloud.getToken((token)=>{});
 */

RCT_EXPORT_METHOD(getToken:(RCTResponseSenderBlock)callback){
  CKContainer *container = [CKContainer defaultContainer];
  [container fetchUserRecordIDWithCompletionHandler:^(CKRecordID * _Nullable recordID, NSError * _Nullable error) {
    if(recordID == nil) return callback(@[[[error userInfo] description]]);
    callback(@[@NO, [recordID recordName]]);
  }];
}


@end
