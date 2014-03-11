#import "Task.h"


@interface Task ()

// Private interface goes here.

@end


@implementation Task

- (id)initWithTaskTitle:(NSString *)title notes:(NSString *)notes {
    self = [super init];
    if (self) {
        self.title = title;
        [self setNotes:notes];
    }
    return self;
}

+ (NSArray *)allTasks {
    return nil;
}
@end
