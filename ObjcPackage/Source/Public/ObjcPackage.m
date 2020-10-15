#import "ObjcPackage.h"
#import "ObjcPackage+Internal.h"

@interface ObjcPackage()

@property (nonatomic, readwrite, copy) NSString *title;

@end

@implementation ObjcPackage

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (self != nil) {
        self.title = title;
    }
    return self;
}

- (NSString *)generateInternalSecret {
    return [NSString stringWithFormat:@"%@_internal_secret", self.title];
}

@end
