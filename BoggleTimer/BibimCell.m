//
//  BibimCell.m
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "BibimCell.h"

@implementation BibimCell
-(void)setProductInfo:(ListOfRamen *)item{
    self.bname.text = item.name;
    self.bRamenTime.text = item.time;
    self.bImage.image = [UIImage imageNamed:item.imageName];
}
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
@end
