#import "Game.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Game *game = [[Game alloc] init];
        Entity *entity = [[Entity alloc] initWithName:@"Player123" withID:player withIndexN:0];
        [game saveToArray:@(entity.IndexN)];
        [entity debug];
    }
    return 0;
}
