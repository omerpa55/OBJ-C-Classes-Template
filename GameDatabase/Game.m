//
//  Game.m
//  GameDatabase
//
//  Created by Omer Pala on 8.11.2025.
//

#import "Game.h"


@implementation Entity

-(instancetype)init {
    self = [super init];
    return self;
}

- (instancetype)initWithName:(NSString *)name withID:(int)ID withIndexN:(int)IndexN {
    self = [super init];
    if (self) {
        _name = [name copy];
        _ID = ID;
        _IndexN = IndexN;
        if (ID == player) {
            _isPlayer = YES;
        }
    }
    return self;
}

- (NSArray<NSNumber *> *)toArray {
    return @[ @(self.ID), @(self.IndexN) ];
}

- (void)debug {
    NSLog(@"[Debug Log]Name -> %@; ID -> %d; IndexN -> %d; isPlayer -> %d", self.name, self.ID, self.IndexN, self.isPlayer);
}
@end

@implementation Game
- (instancetype)init {
    self = [super init];
    if (self) {
        _Index = @[];
    }
    return self;
}
- (void)saveToArray:(NSNumber *)IndexN {
    if (!IndexN) { return; }
    NSArray<NSNumber *> *newIndex = self.Index ? [self.Index arrayByAddingObject:IndexN] : @[ IndexN ];
    self.Index = newIndex;
}
@end
