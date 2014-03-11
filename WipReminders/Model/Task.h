#import "_Task.h"

@interface Task : _Task {}
// Custom logic goes here.

/**
 *  <#Description#>
 *
 *  @param title <#title description#>
 *  @param notes <#notes description#>
 *
 *  @return <#return value description#>
 */
- (id)initWithTaskTitle:(NSString *)title notes:(NSString *)notes;

+ (NSArray *)allTasks;

@end
