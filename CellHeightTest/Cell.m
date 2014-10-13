//
//  Cell.m
//  CellHeightTest
//
//  Created by Ben Packard on 10/13/14.
//  Copyright (c) 2014 Ben Packard. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) return nil;
	
	self.titleLabel = [[UILabel alloc] init];
	self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
	self.titleLabel.text = @"This is a line of text that will span multiple lines. Notice how it's height changes when another view is pushed.";
	self.titleLabel.numberOfLines = 0;
	[self.contentView addSubview:self.titleLabel];
	
	NSDictionary *views = @{@"title":self.titleLabel};
	[self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[title]-|" options:0 metrics:nil views:views]];
	[self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[title]-|" options:0 metrics:nil views:views]];
	
    return self;
}

@end
