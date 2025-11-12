//
//  Game.h
//  GameDatabase
//
//  Created by Omer Pala on 8.11.2025.
//

#import <Foundation/Foundation.h>
#define player 0
#define npc 1
#define meshObject 3

NS_ASSUME_NONNULL_BEGIN

@interface Entity : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int ID;
@property (nonatomic, assign) int IndexN;
@property (nonatomic, assign) bool isPlayer;
- (instancetype)initWithName:(NSString *)name withID:(int)ID withIndexN:(int)IndexN;
- (instancetype)init;
- (NSArray<NSNumber *> *)toArray;
- (void)debug;
@end

@interface Game : NSObject
@property (nonatomic, strong) NSArray<NSNumber *> *Index;
- (instancetype)init;
- (void)saveToArray:(NSNumber *)IndexN;
@end

NS_ASSUME_NONNULL_END

