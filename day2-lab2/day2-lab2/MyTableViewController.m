//
//  MyTableViewController.m
//  day2-lab2
//
//  Created by JETSMobileLabMini10 on 14/04/2025.
//

#import "MyTableViewController.h"
#import "Collegue.h"

@interface MyTableViewController ()

@property NSArray* males;
@property NSArray* females;

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _males = @[@"Boody", @"ahmed", @"hamdy"];
    _males = @[
        [[Collegue alloc] initWithName: @"Boody"],
        [[Collegue alloc] initWithName: @"Ahmed"],
        [[Collegue alloc] initWithName: @"hamdy"],
        [[Collegue alloc] initWithName: @"Hassan"],
        
    ];
    _females = @[
        [[Collegue alloc] initWithName: @"Mona"],
        [[Collegue alloc] initWithName: @"Noha"],
        [[Collegue alloc] initWithName: @"Samar"],
        [[Collegue alloc] initWithName: @"Soha"],
        
    ];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return @"Males";
            break;
            
        default:
            return @"Females";
            break;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    switch (section) {
        case 0:
            return _males.count;
            break;
            
        case 1:
            return _females.count;
            break;
            
        default:
            return 1;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mycell" forIndexPath:indexPath];
    
    Collegue* item = nil;
    
    // Configure the cell...
    switch (indexPath.section) {
        case 0:
            item = [_males objectAtIndex: indexPath.row];
            break;
            
        default:
            item = [_females objectAtIndex: indexPath.row];
            break;
    }
    cell.textLabel.text = item.name;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
