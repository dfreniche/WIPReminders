//
//  WRTaskCell.m
//  WipReminders
//
//  Created by Diego Freniche Brito on 26/02/14.
//  Copyright (c) 2014 freniche. All rights reserved.
//

#import "WRTaskCell.h"

@interface WRTaskCell ()

@property (weak, nonatomic) IBOutlet UILabel *title;


@end

@implementation WRTaskCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - Setters

- (void)setTask:(Task *)task {
    _task = task;

    self.title.text = _task.title;
}


@end
