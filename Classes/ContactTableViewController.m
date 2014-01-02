//
//  ContactTableViewController.m
//  ARSC_bobs
//
//  Created by Rijo Simon on 6/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ContactTableViewController.h"
#import "ARSCAppDelegate.h"
#import "DetailContactViewController.h"

@implementation ContactTableViewController

@synthesize staffDetails;
@synthesize staffTitle;
@synthesize staffEmail;
//@synthesize staffPhone;

#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
	[super viewDidLoad];
	self.title = @"ARSC Contacts";	
	self.staffDetails = [NSArray arrayWithObjects: @"Don Bahls", @"Tom Bachert", @"Brandon Becker", @"Kurt Carlson", @"Rob Cermak", @"Sabrina Cook", @"Dale Clark",  @"Jeremiah Dabney", @"Chris Fallen", @"Liam Forbes", @"Jeff Harrison", @"Brad Havel", @"Kayla Harrison", @"Kate Hedstrom", @"Jonathan Horen", @"Jan Julian", @"Ed Kornkven", @"Jeremy Krieger", @"Anton Kulchitsky", @"Tom Logan", @"Jamie Marschner", @"Sergei Maurits", @"Gene McGill", @"Beth Mercer", @"Craig Millard", @"Don Morton", @"Lawrence Murakami", @"Greg Newby", @"Oralee Nudson", @"Rijo Simon", @"Bob Torgerson", nil];
	self.staffTitle = [NSArray arrayWithObjects: @"User Consultant", @"Network Systems Analyst", @"Systems Analyst", @"Systems Programmer", @"Systems Analyst", @"Fiscal Technician", @"HPC Systems Analyst", @"HPC Systems Analyst", @"Research Asst. Professor", @"Group Leader", @"Network Engineer", @"HPC Systems Analyst", @"Research Project Assistant", @"Oceanographic Specialist", @"HPC Systems Analyst", @"HPC Systems Analyst", @"HPC Specialist", @"HPC Specialist", @"HPC Specialist", @"HPC Specialist", @"User Consultant", @"HPC Specialist", @"Group Leader", @"Database Administrator", @"Research Project Assistant", @"Research Professor", @"User Consultant", @"Director", @"User Consultant", @"Research Project Assistant", @"Research Project Assistant", nil];		
	self.staffEmail = [NSArray arrayWithObjects:@"donald.bahls", @"tom.bachertu", @"brandon.becker", @"kurt.carlson", @"rob.cermak", @"sabrina.cook", @"dale.clark", @"jeremiah.dabney", @"chris.fallen", @"liam.forbes", @"jeff.harrison", @"brad.havel", @"kayla.harrison", @"kate.hedtrom", @"jonathan.horen", @"jan.julian", @"ed.kornkven", @"jeremy.krieger", @"anton.kulchitsky", @"tom.logan", @"jamie.marschner", @"sergei.maurits", @"gene.mcgill", @"beth.mercer", @"millard", @"don.morton", @"lawrnece.murakami", @"greg.newby", @"oralee.nudson", @"rsimon", @"bob.torgerson", nil];
	//self.staffPhone = 
}


/*

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	[detailViewController release];
}*/

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
	//NSInteger rowCount = [staffDetails count];
	//NSLog(@"Is it getting the value of count as : %d, inside the section counter", [staffDetails count]);
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
	   return [self.staffDetails count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
	
    }
    
	NSArray *textForCell = [NSArray arrayWithArray:self.staffDetails];	
	
	
    cell.textLabel.text = [textForCell objectAtIndex:indexPath.row];
	NSString *imageNameForCell = [[NSString alloc] initWithFormat:@"%@.jpg", [[staffDetails self] objectAtIndex:indexPath.row]];
	UIImage *imageForCell = [UIImage imageNamed:imageNameForCell];
	cell.imageView.image = imageForCell;
	[imageNameForCell release];
	//[imageForCell release];
    return cell;
}




#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
        
	[tableView deselectRowAtIndexPath:indexPath animated:NO];
	
	DetailContactViewController *detailViewController = [[DetailContactViewController alloc] init];
	NSMutableArray *passForDetail = [[NSMutableArray alloc] init];
	detailViewController.title = [[staffDetails self] objectAtIndex:indexPath.row];
	NSString *imagePathName = [[NSString alloc] initWithFormat:@"%@.jpg", [[staffDetails self] objectAtIndex:indexPath.row]];
	NSLog(@"Current Value of imagePathName %@", imagePathName);
	NSString *aboutText = [[NSString alloc] initWithFormat:@"%@", [[staffDetails self] objectAtIndex:indexPath.row]];
	NSString *titleText = [[NSString alloc] initWithFormat:@"%@", [[staffTitle self] objectAtIndex:indexPath.row]];
	NSString *detailText = [[NSString alloc] initWithFormat:@"%@@arsc.edu\n907-450-8600\n\nUniversity of Alaska - Fairbanks\n909Koyukuk Drive, Suite 105\nPO Box 756020\nFairbanks, AK 99775-6020", [[staffEmail self] objectAtIndex:indexPath.row]];
	NSLog(@"Current Value of aboutText %@", aboutText);
	[passForDetail addObject:imagePathName];
	[passForDetail addObject:aboutText];
	[passForDetail addObject:titleText];
	[passForDetail addObject:detailText];
	detailViewController.dataReceived = passForDetail;
	[[self navigationController] pushViewController:detailViewController animated:YES];
	[imagePathName release];
	[aboutText release];
	[passForDetail release];
	[detailViewController release];
    
}


#pragma mark -
#pragma mark Memory management

/*- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}*/


- (void)dealloc {
	// [staffDetails release];
	NSLog(@"does this dealloc contact table view");
    [super dealloc];
	
}


@end

