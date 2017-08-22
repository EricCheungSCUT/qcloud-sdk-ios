#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "QCloudAbortMultipfartUploadRequest.h"
#import "QCloudACLGrant.h"
#import "QCloudACLGrantee.h"
#import "QCloudACLOwner.h"
#import "QCloudACLPolicy.h"
#import "QCloudAppendObjectRequest.h"
#import "QCloudBucketContents.h"
#import "QCloudBucketLocationConstraint.h"
#import "QCloudBucketOwner.h"
#import "QCloudBucketTag.h"
#import "QCloudBucketTagging.h"
#import "QCloudCommonPrefixes.h"
#import "QCloudCompleteMultipartUploadInfo.h"
#import "QCloudCompleteMultipartUploadRequest.h"
#import "QCloudCORSConfiguration.h"
#import "QCloudCORSRule.h"
#import "QCloudCOSAccountTypeEnum.h"
#import "QCloudCOSPermissionEnum.h"
#import "QCloudCOSStorageClassEnum.h"
#import "QCloudCOSXMLService.h"
#import "QCloudDeleteBucketCORSRequest.h"
#import "QCloudDeleteBucketTaggingRequest.h"
#import "QCloudDeleteInfo.h"
#import "QCloudDeleteMultipleObjectRequest.h"
#import "QCloudDeleteObjectInfo.h"
#import "QCloudDeleteObjectRequest.h"
#import "QCloudDeleteResult.h"
#import "QCloudDeleteResultRow.h"
#import "QCloudGetBucketACLRequest.h"
#import "QCloudGetBucketCORSRequest.h"
#import "QCloudGetBucketLocationRequest.h"
#import "QCloudGetBucketRequest.h"
#import "QCloudGetBucketTaggingRequest.h"
#import "QCloudGetObjectACLRequest.h"
#import "QCloudGetObjectRequest.h"
#import "QCloudHeadBucketRequest.h"
#import "QCloudHeadObjectRequest.h"
#import "QCloudInitiateMultipartUploadRequest.h"
#import "QCloudInitiateMultipartUploadResult.h"
#import "QCloudListBucketMultipartUploadsRequest.h"
#import "QCloudListBucketResult.h"
#import "QCloudListMultipartRequest.h"
#import "QCloudListMultipartUploadContent.h"
#import "QCloudListMultipartUploadsResult.h"
#import "QCloudListPartsResult.h"
#import "QCloudMultipartInfo.h"
#import "QCloudMultipartUploadInitiator.h"
#import "QCloudMultipartUploadOwner.h"
#import "QCloudMultipartUploadPart.h"
#import "QCloudOptionsObjectRequest.h"
#import "QCloudPutBucketACLRequest.h"
#import "QCloudPutBucketCORSRequest.h"
#import "QCloudPutBucketTaggingRequest.h"
#import "QCloudPutObjectACLRequest.h"
#import "QCloudPutObjectRequest+CustomBuild.h"
#import "QCloudPutObjectRequest.h"
#import "QCloudUploadObjectResult.h"
#import "QCloudUploadPartRequest+Custom.h"
#import "QCloudUploadPartRequest.h"
#import "QCloudUploadPartResult.h"
#import "QCloudCOSTransferMangerService.h"
#import "QCloudCOSXML.h"
#import "QCloudCOSXMLService+Configuration.h"
#import "QCloudCOSXMLService+Private.h"
#import "QCloudCOSXMLServiceUtilities.h"
#import "QCloudCOSXMLUploadObjectRequest.h"
#import "QCloudCOSXMLUploadObjectRequest_Private.h"
#import "QCloudCOSXMLVersion.h"

FOUNDATION_EXPORT double QCloudCOSXMLVersionNumber;
FOUNDATION_EXPORT const unsigned char QCloudCOSXMLVersionString[];
