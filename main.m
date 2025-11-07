#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, assign) NSInteger *age;
- (instancetype)initWithName:(NSString *)name;
- (instancetype)initWithName:(NSString *)name withSurname:(NSString *)surname;
- (instancetype)initWithName:(NSString *)name withSurname:(NSString *)surname withAge:(NSInteger *)age;
- (instancetype)initWithName:(NSString *)name withAge:(NSInteger *)age;
- (void)sayHello;
@end

@implementation Person
- (instancetype)initWithName:(NSString *)name withAge:(NSInteger *)age {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}
- (instancetype)initWithName:(NSString *)name withSurname:(NSString *)surname withAge:(NSInteger *)age {
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
        _age = age;
    }
    return self;
}
- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
- (instancetype)initWithName:(NSString *)name withSurname:(NSString *)surname {
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
    }
    return self;
}
- (void)sayHello {
    if (self.age && self.surname) {
        NSLog(@"Hello, i am %@ %@. I am %ld years old", self.name, self.surname, (long)self.age);
    } else if (self.surname) {
        NSLog(@"Hello, i am %@ %@", self.name, self.surname);
    } else if (self.name && self.age) {
        NSLog(@"Hello, i am %@. I am %ld years old", self.name, (long)self.age);
    } else {
        NSLog(@"Hello, i am %@", self.name);
    }
}
@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        //USAGE
        Person *person = [[Person alloc] initWithName:@"NAME" withSurname:@"SURNAME" withAge:0/*AGE*/];
        [person sayHello];
    }
    return 0;
}
