.class final Lcom/evernote/android/job/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/j$b;,
        Lcom/evernote/android/job/j$a;
    }
.end annotation


# static fields
.field private static final a:Ld/a/a/a/c;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/evernote/android/job/j$a;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/evernote/android/job/j$b;

.field private g:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "JobStorage"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/j;->a:Ld/a/a/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "evernote_jobs.db"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string/jumbo v0, "evernote_jobs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/j;->b:Landroid/content/SharedPreferences;

    .line 110
    new-instance v0, Lcom/evernote/android/job/j$a;

    invoke-direct {v0, p0}, Lcom/evernote/android/job/j$a;-><init>(Lcom/evernote/android/job/j;)V

    iput-object v0, p0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j$a;

    .line 112
    new-instance v0, Lcom/evernote/android/job/j$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/evernote/android/job/j$b;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/j$b;

    .line 114
    iget-object v0, p0, Lcom/evernote/android/job/j;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "FAILED_DELETE_IDS"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    .line 115
    iget-object v0, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    new-instance v0, Lcom/evernote/android/job/j$1;

    const-string/jumbo v1, "CleanupFinishedJobsThread"

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/j$1;-><init>(Lcom/evernote/android/job/j;Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v0}, Lcom/evernote/android/job/j$1;->start()V

    .line 118
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/evernote/android/job/j;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 487
    if-eqz p0, :cond_0

    .line 489
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 497
    if-eqz p0, :cond_0

    .line 499
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/evernote/android/job/i;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j$a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evernote/android/job/j$a;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 202
    const/4 v2, 0x0

    .line 204
    :try_start_1
    invoke-direct {p0}, Lcom/evernote/android/job/j;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 205
    const-string/jumbo v3, "jobs"

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    :try_start_2
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    :goto_0
    monitor-exit p0

    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    :try_start_3
    sget-object v3, Lcom/evernote/android/job/j;->a:Ld/a/a/a/c;

    const-string/jumbo v4, "could not delete %d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6336
    iget-object v3, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6337
    :try_start_4
    iget-object v0, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6338
    iget-object v0, p0, Lcom/evernote/android/job/j;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "FAILED_DELETE_IDS"

    iget-object v5, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6339
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    :try_start_5
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v0, v1

    .line 210
    goto :goto_0

    .line 6339
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 212
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 201
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/evernote/android/job/j;I)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/i;I)Z

    move-result v0

    return v0
.end method

.method private b(I)Lcom/evernote/android/job/i;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 254
    invoke-direct {p0, p1}, Lcom/evernote/android/job/j;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v8

    .line 280
    :goto_0
    return-object v0

    .line 261
    :cond_0
    :try_start_0
    const-string/jumbo v3, "_id=?"

    .line 266
    invoke-direct {p0}, Lcom/evernote/android/job/j;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 267
    :try_start_1
    const-string/jumbo v1, "jobs"

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 268
    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    invoke-static {v2}, Lcom/evernote/android/job/i;->a(Landroid/database/Cursor;)Lcom/evernote/android/job/i;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 276
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 277
    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    .line 269
    goto :goto_0

    .line 276
    :cond_1
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 277
    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    move-object v0, v8

    .line 280
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    .line 273
    :goto_2
    :try_start_3
    sget-object v3, Lcom/evernote/android/job/j;->a:Ld/a/a/a/c;

    const-string/jumbo v4, "could not load id %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 276
    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 277
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 276
    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_3
    invoke-static {v8}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 277
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 276
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 272
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_2
.end method

.method static synthetic b(Lcom/evernote/android/job/j;I)Lcom/evernote/android/job/i;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/evernote/android/job/j;->b(I)Lcom/evernote/android/job/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ld/a/a/a/c;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/evernote/android/job/j;->a:Ld/a/a/a/c;

    return-object v0
.end method

.method private c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/evernote/android/job/j;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/evernote/android/job/j;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 297
    :goto_0
    return-object v0

    .line 290
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/j$b;

    invoke-virtual {v0}, Lcom/evernote/android/job/j$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    sget-object v1, Lcom/evernote/android/job/j;->a:Ld/a/a/a/c;

    invoke-virtual {v1, v0}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 296
    new-instance v0, Lcom/evernote/android/job/k;

    invoke-direct {v0}, Lcom/evernote/android/job/k;-><init>()V

    const-string/jumbo v0, "evernote_jobs.db"

    invoke-static {v0}, Lcom/evernote/android/job/k;->a(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/j$b;

    invoke-virtual {v0}, Lcom/evernote/android/job/j$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/evernote/android/job/i;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j$a;

    .line 4134
    iget-object v1, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 4474
    iget v1, v1, Lcom/evernote/android/job/i$b;->a:I

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/evernote/android/job/j$a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method private c(I)Z
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evernote/android/job/j;->e:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 314
    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/evernote/android/job/j;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 319
    :try_start_1
    const-string/jumbo v1, "SELECT MAX(_id) FROM jobs"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 320
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 330
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 331
    invoke-static {v3}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 327
    :goto_0
    return v0

    .line 330
    :cond_0
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 331
    invoke-static {v3}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    move-object v3, v2

    .line 326
    :goto_1
    :try_start_2
    sget-object v4, Lcom/evernote/android/job/j;->a:Ld/a/a/a/c;

    invoke-virtual {v4, v1}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 331
    invoke-static {v3}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_2
    invoke-static {v2}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 331
    invoke-static {v3}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 330
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 325
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/evernote/android/job/j;->d()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/android/job/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 223
    if-gez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/evernote/android/job/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_0
    monitor-exit p0

    return v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized a(I)Lcom/evernote/android/job/i;
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/j$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/i;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 152
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    if-eqz p2, :cond_1

    move-object v0, v8

    :goto_0
    move-object v3, v0

    move-object v4, v8

    .line 168
    :goto_1
    invoke-direct {p0}, Lcom/evernote/android/job/j;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 169
    :try_start_2
    const-string/jumbo v1, "jobs"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 172
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j$a;

    invoke-virtual {v2}, Lcom/evernote/android/job/j$a;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 174
    :cond_0
    :goto_2
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 176
    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/evernote/android/job/j;->c(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 185
    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 186
    :goto_3
    :try_start_3
    sget-object v2, Lcom/evernote/android/job/j;->a:Ld/a/a/a/c;

    const-string/jumbo v3, "could not load all jobs"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 189
    :try_start_4
    invoke-static {v8}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 190
    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    :goto_4
    monitor-exit p0

    return-object v9

    .line 160
    :cond_1
    :try_start_5
    const-string/jumbo v0, "ifnull(isTransient, 0)<=0"

    goto :goto_0

    .line 163
    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo v0, ""

    .line 164
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tag=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    goto/16 :goto_1

    .line 185
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    .line 163
    :cond_3
    const-string/jumbo v0, "ifnull(isTransient, 0)<=0 AND "
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    .line 181
    :cond_4
    :try_start_6
    invoke-static {v8}, Lcom/evernote/android/job/i;->a(Landroid/database/Cursor;)Lcom/evernote/android/job/i;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 189
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    :try_start_7
    invoke-static {v8}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 190
    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 152
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_5
    :try_start_8
    invoke-static {v8}, Lcom/evernote/android/job/j;->a(Landroid/database/Cursor;)V

    .line 190
    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 189
    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method public final declared-synchronized a(Lcom/evernote/android/job/i;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 122
    monitor-enter p0

    .line 2427
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2428
    iget-object v2, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2597
    const-string/jumbo v3, "_id"

    iget v4, v2, Lcom/evernote/android/job/i$b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2598
    const-string/jumbo v3, "tag"

    iget-object v4, v2, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    const-string/jumbo v3, "startMs"

    iget-wide v4, v2, Lcom/evernote/android/job/i$b;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2601
    const-string/jumbo v3, "endMs"

    iget-wide v4, v2, Lcom/evernote/android/job/i$b;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2603
    const-string/jumbo v3, "backoffMs"

    iget-wide v4, v2, Lcom/evernote/android/job/i$b;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2604
    const-string/jumbo v3, "backoffPolicy"

    iget-object v4, v2, Lcom/evernote/android/job/i$b;->f:Lcom/evernote/android/job/i$a;

    invoke-virtual {v4}, Lcom/evernote/android/job/i$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    const-string/jumbo v3, "intervalMs"

    iget-wide v4, v2, Lcom/evernote/android/job/i$b;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2607
    const-string/jumbo v3, "flexMs"

    iget-wide v4, v2, Lcom/evernote/android/job/i$b;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2609
    const-string/jumbo v3, "requirementsEnforced"

    iget-boolean v4, v2, Lcom/evernote/android/job/i$b;->i:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2610
    const-string/jumbo v3, "requiresCharging"

    iget-boolean v4, v2, Lcom/evernote/android/job/i$b;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2611
    const-string/jumbo v3, "requiresDeviceIdle"

    iget-boolean v4, v2, Lcom/evernote/android/job/i$b;->k:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2612
    const-string/jumbo v3, "exact"

    iget-boolean v4, v2, Lcom/evernote/android/job/i$b;->l:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2613
    const-string/jumbo v3, "networkType"

    iget-object v4, v2, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    invoke-virtual {v4}, Lcom/evernote/android/job/i$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    iget-object v3, v2, Lcom/evernote/android/job/i$b;->n:Lcom/evernote/android/job/a/a/b;

    if-eqz v3, :cond_1

    .line 2616
    const-string/jumbo v3, "extras"

    iget-object v4, v2, Lcom/evernote/android/job/i$b;->n:Lcom/evernote/android/job/a/a/b;

    invoke-virtual {v4}, Lcom/evernote/android/job/a/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    :cond_0
    :goto_0
    const-string/jumbo v3, "persisted"

    iget-boolean v2, v2, Lcom/evernote/android/job/i$b;->p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2429
    const-string/jumbo v2, "numFailures"

    iget v3, p1, Lcom/evernote/android/job/i;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2430
    const-string/jumbo v2, "scheduledAt"

    iget-wide v4, p1, Lcom/evernote/android/job/i;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2431
    const-string/jumbo v2, "isTransient"

    iget-boolean v3, p1, Lcom/evernote/android/job/i;->i:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2432
    const-string/jumbo v2, "flexSupport"

    iget-boolean v3, p1, Lcom/evernote/android/job/i;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2433
    const-string/jumbo v2, "lastRun"

    iget-wide v4, p1, Lcom/evernote/android/job/i;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2239
    :try_start_1
    invoke-direct {p0}, Lcom/evernote/android/job/j;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2245
    const-string/jumbo v2, "jobs"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 2246
    new-instance v0, Landroid/database/SQLException;

    const-string/jumbo v2, "Couldn\'t insert job request into database"

    invoke-direct {v0, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2249
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2617
    :cond_1
    :try_start_3
    iget-object v3, v2, Lcom/evernote/android/job/i$b;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2618
    const-string/jumbo v3, "extras"

    iget-object v4, v2, Lcom/evernote/android/job/i$b;->o:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2249
    :cond_2
    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/evernote/android/job/j;->c(Lcom/evernote/android/job/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/evernote/android/job/i;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/j;->c(Lcom/evernote/android/job/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const/4 v1, 0x0

    .line 132
    :try_start_1
    invoke-direct {p0}, Lcom/evernote/android/job/j;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 133
    const-string/jumbo v0, "jobs"

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3134
    iget-object v5, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 3474
    iget v5, v5, Lcom/evernote/android/job/i$b;->a:I

    .line 133
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :try_start_2
    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    :try_start_3
    sget-object v2, Lcom/evernote/android/job/j;->a:Ld/a/a/a/c;

    const-string/jumbo v3, "could not update %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Ld/a/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    :try_start_4
    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v1}, Lcom/evernote/android/job/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final declared-synchronized b(Lcom/evernote/android/job/i;)V
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    .line 5134
    :try_start_0
    iget-object v0, p1, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget v0, v0, Lcom/evernote/android/job/i$b;->a:I

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/i;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
