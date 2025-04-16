//
//  CollegueTableViewController.m
//  day2-lab3
//
//  Created by JETSMobileLabMini10 on 14/04/2025.
//

#import "CollegueTableViewController.h"
#import "Collegue.h"
#import "ViewController.h"

@interface CollegueTableViewController ()

@property NSMutableArray* males;
@property NSMutableArray* females;

@end

@implementation CollegueTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray* tempMale = @[
        [[Collegue alloc] initWithName:@"boody" andAge:22 andTitle:@"Android" andEmail:@"boody@gmail.com"],
        [[Collegue alloc] initWithName:@"Ahmed" andAge:44 andTitle:@"Teacher" andEmail:@"Ahmed@gmail.com"],
        [[Collegue alloc] initWithName:@"Hamdy" andAge:77 andTitle:@"NON" andEmail:@"Hamdddy@gmail.com"],
        
    ];
    
    NSArray* tempFemale = @[
        [[Collegue alloc] initWithName:@"Noha" andAge:22 andTitle:@"Android" andEmail:@"HOLKJL@gmail.com"],
        [[Collegue alloc] initWithName:@"Mona" andAge:12 andTitle:@"Student" andEmail: @"NON"],
        [[Collegue alloc] initWithName:@"Hamdy" andAge:77 andTitle:@"NON" andEmail:@"Hamdddy@gmail.com"],
        
    ];
    
    _males = [tempMale mutableCopy];
    _females = [tempFemale mutableCopy];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
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

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if(editingStyle == UITableViewCellEditingStyleDelete) {
        switch (indexPath.section) {
            case 0:
                [ _males removeObjectAtIndex:indexPath.row ];
                [ tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:YES ];
                break;
                
            default:
                [ _females removeObjectAtIndex:indexPath.row ];
                [ tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:YES ];
                break;
        }
    } else if(editingStyle == UITableViewCellEditingStyleInsert) {
        switch (indexPath.section) {
            case 0:
                [ _males addObject: [_males objectAtIndex:indexPath.row] ];
                [ tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:YES ];
                break;
                
            default:
                
                Collegue* female = [_females objectAtIndex: indexPath.row];
                
                [ _females addObject:female ];
                [ tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:YES ];
                break;
        }
    }
    
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Collegue* item = nil;
    switch (indexPath.section) {
        case 0:
            item = [_males objectAtIndex: indexPath.row];
            break;
            
        default:
            item = [_females objectAtIndex: indexPath.row];
            break;
    }
    
    NSLog(@"clicked on item: %@", item.name);
    ViewController* viewController = [ self.storyboard instantiateViewControllerWithIdentifier: @"details" ];
    
//    viewController.collegue = item;
    
    [self.navigationController pushViewController:viewController animated:YES];
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Collegue* item = nil;
    
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
