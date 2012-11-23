//
//  RootViewController.m
//  LocalImagesList
//
//  Created by Macbook on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#import "RootViewController.h"


@implementation RootViewController

- (void)viewDidLoad { 
	//Initialize the arrays.
	
    flags = [NSArray arrayWithObjects:
			 [UIImage imageNamed:@"iceland.png"],
			 [UIImage imageNamed:@"greenland.png"],
			 [UIImage imageNamed:@"switzerland.png"],
			 [UIImage imageNamed:@"norway.png"],
			 [UIImage imageNamed:@"newzealand.png"],
			 [UIImage imageNamed:@"greece.png"],
			 [UIImage imageNamed:@"rome.png"],
			 [UIImage imageNamed:@"ireland.png"],
			 nil];
	listOfItems = [[NSMutableArray alloc] init]; // memory allocation and initializaion
	
	//Add items
	
	[listOfItems addObject:@"Iceland"];	
	[listOfItems addObject:@"Greenland"];
	[listOfItems addObject:@"Switzerland"];
	[listOfItems addObject:@"Norway"];
	[listOfItems addObject:@"New Zealand"];
	[listOfItems addObject:@"Greece"];
	[listOfItems addObject:@"Rome"];
	[listOfItems addObject:@"Ireland"];
	
	//Set the title
	self.navigationItem.title = @"Countries";  
	[super viewDidLoad];	
}

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return [listOfItems count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell"; 
    
	// if a cell can be reused, it returns a UITableViewCell with the associated identifier or nil if no such cell exists
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	// if no cell to reuse, then create a new one
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
	
	// Set up the cell...	
	cell.textLabel.text = [listOfItems objectAtIndex:indexPath.row];
	image = [[UIImageView alloc] initWithImage:[flags objectAtIndex:indexPath.row]];
	// image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"smiley.png"]]; // if you want the same image for each cell
	
	cell.accessoryView = image;
	
    return cell;
}


- (void)dealloc {
	
	[listOfItems release];
    [image release];
	[super dealloc]; 
}


@end
