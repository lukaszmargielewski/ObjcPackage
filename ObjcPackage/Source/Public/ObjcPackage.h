#import <Foundation/Foundation.h>

@interface ObjcPackage : NSObject

- (nullable instancetype)initWithTitle:(nonnull NSString *)title NS_DESIGNATED_INITIALIZER;

- (nonnull instancetype)init NS_UNAVAILABLE;

@property (nonnull, readonly, nonatomic, copy) NSString *title;

@end
