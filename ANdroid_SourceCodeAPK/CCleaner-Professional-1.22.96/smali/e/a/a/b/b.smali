.class public abstract Le/a/a/b/b;
.super Landroid/content/ContentProvider;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field a:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Le/a/a/b/b;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Le/a/a/b/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/b/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Le/a/a/b/b;->c:Z

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a/a/b/b;->c:Z

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
.end method

.method protected abstract a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 194
    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 196
    :try_start_0
    iget-object v0, p0, Le/a/a/b/b;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 198
    new-array v5, v4, [Landroid/content/ContentProviderResult;

    move v1, v2

    .line 199
    :goto_0
    if-ge v1, v4, :cond_1

    .line 200
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 201
    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    const-wide/16 v6, 0xfa0

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 204
    :cond_0
    invoke-virtual {v0, p0, v5, v1}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0

    aput-object v0, v5, v1

    .line 199
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v0, p0, Le/a/a/b/b;->b:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 211
    invoke-direct {p0}, Le/a/a/b/b;->b()V

    return-object v5

    .line 209
    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/a/b/b;->b:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 211
    invoke-direct {p0}, Le/a/a/b/b;->b()V

    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    .prologue
    .line 118
    array-length v0, p2

    .line 119
    iget-object v1, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 122
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/a/a/b/b;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Le/a/a/b/b;->c:Z

    .line 126
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    invoke-direct {p0}, Le/a/a/b/b;->b()V

    .line 132
    return v0

    .line 128
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 166
    invoke-direct {p0}, Le/a/a/b/b;->a()Z

    move-result v0

    .line 167
    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 171
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Le/a/a/b/b;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 172
    if-lez v0, :cond_0

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Le/a/a/b/b;->c:Z

    .line 175
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    invoke-direct {p0}, Le/a/a/b/b;->b()V

    .line 187
    :cond_1
    :goto_0
    return v0

    .line 177
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 182
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Le/a/a/b/b;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 183
    if-lez v0, :cond_1

    .line 184
    iput-boolean v1, p0, Le/a/a/b/b;->c:Z

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Le/a/a/b/b;->a()Z

    move-result v0

    .line 93
    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 97
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/a/a/b/b;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    const/4 v2, 0x1

    iput-boolean v2, p0, Le/a/a/b/b;->c:Z

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 106
    invoke-direct {p0}, Le/a/a/b/b;->b()V

    .line 113
    :cond_1
    :goto_0
    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 108
    :cond_2
    invoke-virtual {p0, p1, p2}, Le/a/a/b/b;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    iput-boolean v1, p0, Le/a/a/b/b;->c:Z

    goto :goto_0
.end method

.method public onBegin()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Le/a/a/b/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/a/b/b;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-direct {p0}, Le/a/a/b/b;->a()Z

    move-result v0

    .line 139
    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Le/a/a/b/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 143
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/a/b/b;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 144
    if-lez v0, :cond_0

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Le/a/a/b/b;->c:Z

    .line 147
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    invoke-direct {p0}, Le/a/a/b/b;->b()V

    .line 160
    :cond_1
    :goto_0
    return v0

    .line 149
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 154
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/a/b/b;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 155
    if-lez v0, :cond_1

    .line 156
    iput-boolean v1, p0, Le/a/a/b/b;->c:Z

    goto :goto_0
.end method
