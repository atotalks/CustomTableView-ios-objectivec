//
//  ViewController.m
//  CustomTableView-ios-objectivec
//
//  Created by JuneK on 07/09/2019.
//  Copyright © 2019 JuneK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain) NSMutableArray *mainArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
       self->_mainArr = [[NSMutableArray alloc] initWithObjects:@"1",@"2", nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self->_mainArr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 75;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier =@"CustomCell";
    
    CustomTableViewCell *itCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    itCell.label.text = [self->_mainArr objectAtIndex:[indexPath row]];
    
    return itCell;
}





@end
