.class public final Lcom/piriform/ccleaner/settings/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/e$a;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "is_folder"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "file_types"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "options"

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/settings/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/b;->a:Landroid/content/ContentResolver;

    .line 35
    iput-object p2, p0, Lcom/piriform/ccleaner/settings/b;->b:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method

.method static a(Lcom/piriform/ccleaner/settings/c;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string/jumbo v1, "path"

    .line 1099
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "is_folder"

    invoke-virtual {p0}, Lcom/piriform/ccleaner/settings/c;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    const-string/jumbo v1, "file_types"

    .line 1115
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/c;->d:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lcom/piriform/ccleaner/settings/c;->e:Lcom/piriform/ccleaner/settings/c$a;

    .line 108
    if-nez v1, :cond_0

    .line 109
    const-string/jumbo v1, "options"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-string/jumbo v2, "options"

    invoke-virtual {v1}, Lcom/piriform/ccleaner/settings/c$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/settings/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 39
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/b;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/piriform/ccleaner/data/CCleanerContentProvider$b;->a:Landroid/net/Uri;

    sget-object v2, Lcom/piriform/ccleaner/settings/b;->c:[Ljava/lang/String;

    const-string/jumbo v5, "is_folder DESC,path,_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_3

    .line 47
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 49
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_0

    move v7, v10

    .line 51
    :goto_1
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 52
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    move-object v9, v3

    .line 56
    :goto_2
    invoke-static/range {v4 .. v9}, Lcom/piriform/ccleaner/settings/c;->a(JLjava/lang/String;ZLjava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)Lcom/piriform/ccleaner/settings/c;

    move-result-object v0

    .line 57
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v7, v11

    .line 50
    goto :goto_1

    .line 55
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/piriform/ccleaner/settings/c$a;->valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/settings/c$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_2

    .line 60
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_3
    return-object v12
.end method
