//
//  QCloudEndPoint.m
//  Pods
//
//  Created by Dong Zhao on 2017/3/31.
//
//

#import "QCloudEndPoint.h"
#import "QCloudError.h"

@interface QCloudEndPoint ()
@property (nonatomic) QCloudRegionType regionType;
@property (nonatomic, strong) QCloudRegion regionName;
@property (nonatomic) QCloudServiceType serviceType;
@property (nonatomic, strong) QCloudServiceName serviceName;
@property (nonatomic, strong) NSURL* url;
@property (nonatomic, strong) NSString* hostName;
@property (nonatomic, assign) BOOL useSSL;
@end

@implementation QCloudEndPoint
@synthesize hostName = _hostName;
+ (NSString*) regionNameForType:(QCloudRegionType)type
{
    switch (type) {
        case QCloudRegionCNEast:
            return @"cn-east";
        case QCloudRegionCNNorth:
            return @"cn-north";
        case QCloudRegionCNSouth:
            return @"cn-south";
        case QCloudRegionSingapore:
            return @"sg";
        case QCloudRegionBeijing:
            return @"bj";
        case QCloudRegionGuangzhou:
            return @"gz";
        default:
        {
            NSString* description = NSLocalizedString(@"region 没有对应的地域标记，请检查！！！！！", nil);
            @throw [NSException exceptionWithName:QCloudErrorDomain reason:description userInfo:@{NSLocalizedDescriptionKey:description}];
        }
            break;
    }
}

- (NSString*) serviceNameFroType:(QCloudServiceType)type
{
    switch (type) {
        case QCloudServiceCOS:
            return @"cos";
        case QCloudServiceCIOCR:
            return @"image";
        case QCloudServiceFaceIn:
            return @"image";
        case QCloudServiceCOSXML:
            return @"cos";
        case QCloudServiceUnkown:
            return @"unknown";
        default:
        {
            NSString* description = NSLocalizedString(@"service type 没有对应的服务标记，请检查！！！！！", nil);
            @throw [NSException exceptionWithName:QCloudErrorDomain reason:description userInfo:@{NSLocalizedDescriptionKey:description}];
        }
            break;
    }
}
- (instancetype) initWithRegionType:(QCloudRegionType)type
                        serviceType:(QCloudServiceType)serviceType
                                URL:(NSURL *)url
{
    self = [super init];
    if (!self) {
        return self;
    }
    _regionType = type;
    _regionName = [self.class regionNameForType:type];
    _serviceType = serviceType;
    _serviceName = [self serviceNameFroType:serviceType];
    _url = url;
    _hostName = [url host];
    return self;
}

- (instancetype) initWithRegionType:(QCloudRegionType)type
                        serviceType:(QCloudServiceType)serviceType
                                URL:(NSURL *)url
                           mockHost:(NSString*)host
{
    self = [self initWithRegionType:type serviceType:serviceType URL:url];
    if (!self) {
        return self;
    }
    _hostName = host;
    return self;
}

+ (NSURL*) urlForRegionType:(QCloudRegionType)regionType
                serviceType:(QCloudServiceType)serviceType
                     useSSL:(BOOL)useSSL
{
    NSString* scheme = @"https";
    if (!useSSL) {
        scheme = @"http";
    }
    if (serviceType == QCloudServiceCII) {
        return [NSURL URLWithString:[NSString stringWithFormat:@"%@://service.image.myqcloud.com", scheme]];
    } else if (serviceType == QCloudServiceCOS) {
        return [NSURL URLWithString:[NSString stringWithFormat:@"%@://%@.file.myqcloud.com/files/v2/",scheme, [self regionNameForType:regionType]]];
    } else if (serviceType == QCloudServiceCOSXML) {
        return [NSURL URLWithString:[NSString stringWithFormat:@"%@://myqcloud.com", scheme]];
    }
    @throw [NSException exceptionWithName:QCloudErrorDomain reason:[NSString stringWithFormat:@"没有设置改服务[region:%ld service:%ld]的默认地址，请联系开发人员stonedong@tencent.com",(long)regionType, (long)serviceType] userInfo:nil];
}

- (instancetype) initWithRegionType:(QCloudRegionType)type
                        serviceType:(QCloudServiceType)serviceType
                             useSSL:(BOOL)useSSL
{
    self = [super init];
    if (!self) {
        return self;
    }
    _regionType = type;
    _regionName = [self.class regionNameForType:type];
    _serviceType = serviceType;
    _serviceName = [self serviceNameFroType:serviceType];
    _url = [[self class] urlForRegionType:type serviceType:serviceType useSSL:useSSL];
    _hostName = _url.host;
    _useSSL = useSSL;
    return self;
}


- (instancetype) copyWithZone:(NSZone *)zone
{
    QCloudEndPoint* endPoint = [[QCloudEndPoint allocWithZone:zone] init];
    endPoint.regionType = self.regionType;
    endPoint.regionName = self.regionName;
    endPoint.serviceType = self.serviceType;
    endPoint.serviceName = self.serviceName;
    endPoint.url = self.url;
    endPoint.hostName = self.hostName;
    return endPoint;
}

- (NSURL*) cosXMLServerURLWithBucket:(NSString*)bucket appID:(NSString*)appID
{
    NSString* scheme = @"https";
    if (!_useSSL) {
        scheme = @"http";
    }
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@://%@-%@.%@.myqcloud.com", scheme, bucket, appID, [self regionName]]];
}


@end
