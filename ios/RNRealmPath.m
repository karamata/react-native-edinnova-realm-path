
#import "RNRealmPath.h"

@implementation RNRealmPath

- (NSDictionary *)constantsToExport
{
  NSURL *realmPathUrl = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:@"group.ios.edinnova.app"];
  NSString *realmPath = [[realmPathUrl path] stringByAppendingString:@"/"];
  return @{@"realmPath" : realmPath};
}
RCT_EXPORT_MODULE()

@end
