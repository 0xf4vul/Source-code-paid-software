.class public Le/a/a/b/c;
.super Le/a/a/b/b;
.source "SourceFile"


# instance fields
.field private b:Le/a/a/b/a/a;

.field private final c:Le/a/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Le/a/a/b/b;-><init>()V

    .line 37
    new-instance v0, Le/a/a/b/a;

    invoke-direct {v0}, Le/a/a/b/a;-><init>()V

    iput-object v0, p0, Le/a/a/b/c;->c:Le/a/a/b/a;

    .line 38
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Le/a/a/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 124
    return-void
.end method

.method private b(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    .line 91
    iget-object v1, p0, Le/a/a/b/c;->b:Le/a/a/b/a/a;

    .line 4032
    if-eqz p2, :cond_2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4033
    :goto_0
    invoke-static {p1}, Le/a/a/d/e;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 4034
    iget-object v2, v1, Le/a/a/b/a/a;->a:Le/a/a/c/a;

    invoke-virtual {v2, v6, v0}, Le/a/a/c/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)Le/a/a/d/a;

    move-result-object v2

    .line 4137
    invoke-static {p1}, Le/a/a/d/e;->c(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Le/a/a/d/e;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "_id"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Le/a/a/d/e;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "_id"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Le/a/a/d/e;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4037
    :cond_0
    if-eqz v2, :cond_3

    .line 5077
    invoke-static {v2}, Le/a/a/b/a/a;->a(Le/a/a/d/a;)Ljava/lang/String;

    move-result-object v3

    .line 5078
    invoke-static {v2, v0}, Le/a/a/b/a/a;->a(Le/a/a/d/a;Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v7

    .line 5079
    iget-object v8, v1, Le/a/a/b/a/a;->a:Le/a/a/c/a;

    invoke-virtual {v8}, Le/a/a/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8, v6, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 6023
    const-string/jumbo v7, "SQLiteProvider"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    .line 5081
    if-eqz v7, :cond_1

    .line 5082
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Constrain "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " yield "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6043
    const-string/jumbo v8, "SQLiteProvider"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5084
    :cond_1
    if-lez v3, :cond_4

    .line 5085
    invoke-virtual {v1, v6, v2, v0}, Le/a/a/b/a/a;->a(Ljava/lang/String;Le/a/a/d/a;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 4044
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_6

    .line 4045
    iget-object v1, v1, Le/a/a/b/a/a;->a:Le/a/a/c/a;

    invoke-virtual {v1}, Le/a/a/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 4049
    :goto_2
    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 92
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4032
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    goto/16 :goto_0

    .line 7027
    :cond_3
    const-string/jumbo v2, "SQLiteProvider"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 4040
    if-eqz v2, :cond_4

    .line 4041
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No constrain against URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7063
    const-string/jumbo v3, "SQLiteProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-wide v2, v4

    goto :goto_1

    .line 4052
    :cond_5
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to insert row into "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-wide v0, v2

    goto :goto_2
.end method


# virtual methods
.method protected final a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 97
    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 8082
    :goto_0
    iget-object v1, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 8048
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 99
    invoke-static {p1}, Le/a/a/d/e;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 101
    if-lez v0, :cond_1

    .line 102
    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 103
    invoke-direct {p0, v1}, Le/a/a/b/c;->a(Landroid/net/Uri;)V

    .line 104
    return v0

    .line 97
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to update row into "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because it does not exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 111
    .line 9082
    iget-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 9048
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 112
    invoke-static {p1}, Le/a/a/d/e;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 113
    invoke-direct {p0, p1}, Le/a/a/b/c;->a(Landroid/net/Uri;)V

    .line 114
    return v0
.end method

.method protected final a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 74
    const-string/jumbo v0, "allowYield"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    array-length v3, p2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, p2, v2

    .line 78
    invoke-direct {p0, p1, v4}, Le/a/a/b/c;->b(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 82
    :cond_1
    if-eqz v0, :cond_2

    .line 3082
    iget-object v4, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 3048
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 77
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 75
    goto :goto_0

    .line 86
    :cond_4
    invoke-direct {p0, p1}, Le/a/a/b/c;->a(Landroid/net/Uri;)V

    .line 87
    return v1
.end method

.method protected final a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 3

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Le/a/a/c/a;

    invoke-direct {v0, p1}, Le/a/a/c/a;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 2055
    const-string/jumbo v1, "SQLiteProvider"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Le/a/a/b/c;->b(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    invoke-direct {p0, p1}, Le/a/a/b/c;->a(Landroid/net/Uri;)V

    .line 69
    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Le/a/a/b/b;->onCreate()Z

    .line 43
    new-instance v1, Le/a/a/b/a/a;

    .line 1082
    iget-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 43
    check-cast v0, Le/a/a/c/a;

    invoke-direct {v1, v0}, Le/a/a/b/a/a;-><init>(Le/a/a/c/a;)V

    iput-object v1, p0, Le/a/a/b/c;->b:Le/a/a/b/a/a;

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 137
    .line 10023
    const-string/jumbo v0, "SQLiteProvider"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 10014
    if-eqz v0, :cond_0

    .line 10015
    const-string/jumbo v0, "==================== start of query ======================="

    .line 10043
    const-string/jumbo v1, "SQLiteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10016
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11043
    const-string/jumbo v1, "SQLiteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11179
    :cond_0
    new-instance v2, Le/a/a/c/b;

    invoke-direct {v2}, Le/a/a/c/b;-><init>()V

    .line 141
    const-string/jumbo v0, "expand"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 142
    const-string/jumbo v0, "groupBy"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    const-string/jumbo v0, "having"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    const-string/jumbo v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "distinct"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 12090
    iget-object v3, v2, Le/a/a/c/b;->a:Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/a/a/d/e;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12094
    iget-object v4, v2, Le/a/a/c/b;->a:Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 153
    new-array v0, v7, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Le/a/a/c/b;->a([Ljava/lang/String;)V

    .line 13082
    iget-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 154
    check-cast v0, Le/a/a/c/a;

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 13089
    invoke-virtual {v0}, Le/a/a/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v3, v1}, Le/a/a/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 13098
    iget-object v1, v2, Le/a/a/c/b;->a:Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 159
    :cond_1
    invoke-static {p1}, Le/a/a/d/e;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v1}, Le/a/a/b/a;->a(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2, v1}, Le/a/a/c/b;->a(Ljava/lang/CharSequence;)V

    .line 15023
    :cond_2
    :goto_0
    const-string/jumbo v1, "SQLiteProvider"

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 14029
    if-eqz v1, :cond_6

    .line 14030
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "table: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15045
    iget-object v3, v2, Le/a/a/c/b;->a:Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v3

    .line 14030
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16043
    const-string/jumbo v3, "SQLiteProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14032
    if-eqz p2, :cond_3

    .line 14033
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "projection:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17043
    const-string/jumbo v3, "SQLiteProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14035
    :cond_3
    if-eqz p3, :cond_4

    .line 14036
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "selection: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " with arguments "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18043
    const-string/jumbo v3, "SQLiteProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14038
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "extra args: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ,having: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ,sort order: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ,limit: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19043
    const-string/jumbo v3, "SQLiteProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14040
    if-eqz v0, :cond_5

    .line 14041
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "projectionAutomated: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20043
    const-string/jumbo v1, "SQLiteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14043
    :cond_5
    const-string/jumbo v0, "==================== end of query ======================="

    .line 21043
    const-string/jumbo v1, "SQLiteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21082
    :cond_6
    iget-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 21052
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 22064
    iget-object v0, v2, Le/a/a/c/b;->a:Landroid/database/sqlite/SQLiteQueryBuilder;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Le/a/a/b/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 175
    return-object v0

    .line 163
    :cond_7
    invoke-static {p1}, Le/a/a/d/e;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-static {p1}, Le/a/a/d/e;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Le/a/a/d/e;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Le/a/a/b/a;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2, v1}, Le/a/a/c/b;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
