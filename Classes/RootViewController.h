//
//  RootViewController.h
//  LocalImagesList
//
//  Created by Macbook on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
	NSMutableArray *listOfItems;	// modifiable array of objects
	NSArray *flags;
	UIImageView *image;
}

@end
