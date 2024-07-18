#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DatabaseManager : NSObject

- (instancetype)initWithDatabasePath:(NSString *)path;
- (NSArray<NSDictionary *> *)selectWithQuery:(NSString *)query;

@end

@implementation DatabaseManager {
    sqlite3 *_database;
}

- (instancetype)initWithDatabasePath:(NSString *)path {
    self = [super init];
    if (self) {
        if (sqlite3_open([path UTF8String], &_database) != SQLITE_OK) {
            NSLog(@"Failed to open database");
            return nil;
        }
    }
    return self;
}

- (void)dealloc {
    sqlite3_close(_database);
}

- (NSArray<NSDictionary *> *)selectWithQuery:(NSString *)query {
    NSMutableArray<NSDictionary *> *output = [NSMutableArray array];
    sqlite3_stmt *statement;
    
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            NSMutableDictionary *row = [NSMutableDictionary dictionary];
            for (int i = 0; i < sqlite3_column_count(statement); i++) {
                NSString *columnName = [NSString stringWithUTF8String:sqlite3_column_name(statement, i)];
                NSString *value = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(statement, i)];
                row[columnName] = value;
            }
            [output addObject:row];
        }
    } else {
        NSLog(@"Failed to prepare statement");
    }
    
    sqlite3_finalize(statement);
    return output;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DatabaseManager *databaseManager = [[DatabaseManager alloc] initWithDatabasePath:@"/path/to/your/database.sqlite"];
        NSArray<NSDictionary *> *result = [databaseManager selectWithQuery:@"SELECT * FROM test_table"];
        for (NSDictionary *row in result) {
            NSLog(@"%@", row);
        }
    }
    return 0;
}
