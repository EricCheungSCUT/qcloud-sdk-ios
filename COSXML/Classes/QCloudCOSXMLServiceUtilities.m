//
//  QCloudCOSXMLServiceUtilities.m
//  Pods
//
//  Created by Dong Zhao on 2017/5/26.
//
//

#import "QCloudCOSXMLServiceUtilities.h"
#import <QCloudCore/QCloudCore.h>

NSString* QCloudCOSXMLObjectLocation(QCloudRegionType region, NSString* appID,NSString* bucket, NSString* object) {
    QCloudEndPoint* endPoint = [[QCloudEndPoint alloc] initWithRegionType:region serviceType:QCloudServiceCOSXML useSSL:YES];
    return  [NSString stringWithFormat:@"%@-%@.%@.myqcloud.com/%@" , bucket, appID, [endPoint regionName],object];
}

