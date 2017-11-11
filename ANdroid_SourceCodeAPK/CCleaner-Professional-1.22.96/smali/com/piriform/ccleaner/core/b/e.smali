.class public final Lcom/piriform/ccleaner/core/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/b/j;


# static fields
.field private static final a:Lcom/piriform/ccleaner/core/b/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/b/a/a",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/piriform/ccleaner/core/b/m;


# instance fields
.field private final c:Landroid/content/ContentResolver;

.field private final d:Lcom/piriform/ccleaner/core/b/k;

.field private final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/piriform/ccleaner/core/b/e$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/b/e$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/core/b/e;->a:Lcom/piriform/ccleaner/core/b/a/a;

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/core/b/m;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/b/m;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/core/b/e;->b:Lcom/piriform/ccleaner/core/b/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/piriform/ccleaner/core/b/k;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/core/b/k;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/core/b/e;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/piriform/ccleaner/core/b/k;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/piriform/ccleaner/core/b/k;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/piriform/ccleaner/core/b/e;->c:Landroid/content/ContentResolver;

    .line 42
    iput-object p2, p0, Lcom/piriform/ccleaner/core/b/e;->e:Landroid/net/Uri;

    .line 43
    iput-object p3, p0, Lcom/piriform/ccleaner/core/b/e;->d:Lcom/piriform/ccleaner/core/b/k;

    .line 44
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/core/b/m;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/e;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/piriform/ccleaner/core/b/e;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 14020
    iget-object v3, p1, Lcom/piriform/ccleaner/core/b/m;->a:Ljava/lang/String;

    .line 14024
    iget-object v4, p1, Lcom/piriform/ccleaner/core/b/m;->b:[Ljava/lang/String;

    iget-object v5, p1, Lcom/piriform/ccleaner/core/b/m;->b:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, p2

    .line 190
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "Ignoring SQLiteException while querying SMS content provider"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    move-object v0, v6

    .line 198
    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "No permission to access SMS messages"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Landroid/database/Cursor;Lcom/piriform/ccleaner/core/b/a/a;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/piriform/ccleaner/core/b/a/a",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2144
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 2137
    if-eqz v0, :cond_1

    .line 2138
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2139
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 3131
    :cond_1
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3132
    invoke-static {v0}, Lcom/piriform/ccleaner/core/data/h;->a(I)Lcom/piriform/ccleaner/core/data/h;

    move-result-object v3

    sget-object v4, Lcom/piriform/ccleaner/core/data/h;->c:Lcom/piriform/ccleaner/core/data/h;

    if-eq v3, v4, :cond_2

    .line 3133
    invoke-static {v0}, Lcom/piriform/ccleaner/core/data/h;->a(I)Lcom/piriform/ccleaner/core/data/h;

    move-result-object v0

    sget-object v3, Lcom/piriform/ccleaner/core/data/h;->b:Lcom/piriform/ccleaner/core/data/h;

    if-ne v0, v3, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 117
    :goto_0
    if-eqz v0, :cond_4

    .line 118
    iget-object v3, p0, Lcom/piriform/ccleaner/core/b/e;->d:Lcom/piriform/ccleaner/core/b/k;

    .line 4029
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4030
    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4031
    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4032
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4033
    const-string/jumbo v0, "locked"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    .line 4035
    :goto_1
    new-instance v8, Lcom/piriform/ccleaner/core/data/g;

    invoke-direct {v8}, Lcom/piriform/ccleaner/core/data/g;-><init>()V

    .line 4036
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/piriform/ccleaner/core/data/g;->a(Ljava/lang/String;)V

    .line 4038
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5052
    iput-object v4, v8, Lcom/piriform/ccleaner/core/data/f;->f:Ljava/lang/String;

    .line 4041
    iget-object v3, v3, Lcom/piriform/ccleaner/core/b/k;->a:Landroid/content/ContentResolver;

    invoke-static {v3, v4}, Lcom/piriform/ccleaner/core/b/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/piriform/ccleaner/core/data/c;

    move-result-object v3

    .line 6021
    iget-object v4, v3, Lcom/piriform/ccleaner/core/data/c;->b:Ljava/util/Set;

    .line 4043
    invoke-virtual {v8, v4}, Lcom/piriform/ccleaner/core/data/g;->a(Ljava/util/Set;)V

    .line 4045
    new-instance v4, Ljava/util/Date;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 4046
    invoke-virtual {v8, v4}, Lcom/piriform/ccleaner/core/data/g;->a(Ljava/util/Date;)V

    .line 4048
    invoke-static {v7}, Lcom/piriform/ccleaner/core/data/h;->a(I)Lcom/piriform/ccleaner/core/data/h;

    move-result-object v4

    .line 7014
    iput-object v4, v8, Lcom/piriform/ccleaner/core/data/g;->a:Lcom/piriform/ccleaner/core/data/h;

    .line 7025
    iget-object v3, v3, Lcom/piriform/ccleaner/core/data/c;->a:Ljava/lang/String;

    .line 4050
    invoke-virtual {v8, v3}, Lcom/piriform/ccleaner/core/data/g;->b(Ljava/lang/String;)V

    .line 8022
    iput-boolean v0, v8, Lcom/piriform/ccleaner/core/data/g;->g:Z

    .line 9018
    iget-boolean v0, v8, Lcom/piriform/ccleaner/core/data/g;->g:Z

    .line 119
    if-eqz v0, :cond_3

    if-eqz p3, :cond_4

    .line 120
    :cond_3
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v0, v1}, Lcom/piriform/ccleaner/core/b/a/a;->d(II)V

    .line 124
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 127
    return-object v2

    .line 3133
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 4033
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 92
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .line 97
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/h;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 149
    sget-object v1, Lcom/piriform/ccleaner/core/a;->e:Lcom/piriform/ccleaner/core/a;

    if-ne p1, v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    new-instance v1, Lcom/piriform/ccleaner/core/b/h;

    invoke-direct {v1, p1, p2}, Lcom/piriform/ccleaner/core/b/h;-><init>(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/h;)V

    .line 10022
    iget-object v2, v1, Lcom/piriform/ccleaner/core/b/h;->b:Lcom/piriform/ccleaner/core/data/h;

    .line 9168
    sget-object v3, Lcom/piriform/ccleaner/core/data/h;->a:Lcom/piriform/ccleaner/core/data/h;

    if-ne v2, v3, :cond_2

    .line 10183
    new-instance v2, Lcom/piriform/ccleaner/core/b/n;

    invoke-direct {v2}, Lcom/piriform/ccleaner/core/b/n;-><init>()V

    .line 10184
    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/core/b/n;->a(Lcom/piriform/ccleaner/core/b/h;)V

    .line 10185
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/b/n;->a()Lcom/piriform/ccleaner/core/b/m;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/piriform/ccleaner/core/b/e;->a(Lcom/piriform/ccleaner/core/b/m;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 156
    :goto_1
    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 11176
    :cond_2
    new-instance v2, Lcom/piriform/ccleaner/core/b/n;

    invoke-direct {v2}, Lcom/piriform/ccleaner/core/b/n;-><init>()V

    .line 11177
    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/core/b/n;->a(Lcom/piriform/ccleaner/core/b/h;)V

    .line 11178
    sget-object v1, Lcom/piriform/ccleaner/core/b/n$a;->a:Lcom/piriform/ccleaner/core/b/n$a;

    const-string/jumbo v3, "locked = ?"

    const-string/jumbo v4, "0"

    .line 12091
    iget-object v5, v2, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 12092
    iget-object v5, v2, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    .line 13029
    iget-object v1, v1, Lcom/piriform/ccleaner/core/b/n$a;->c:Ljava/lang/String;

    .line 12092
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12094
    :cond_3
    iget-object v1, v2, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12095
    iget-object v1, v2, Lcom/piriform/ccleaner/core/b/n;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11179
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/b/n;->a()Lcom/piriform/ccleaner/core/b/m;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/piriform/ccleaner/core/b/e;->a(Lcom/piriform/ccleaner/core/b/m;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Lcom/piriform/ccleaner/core/b/a/a;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/b/a/a",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/piriform/ccleaner/core/b/e;->b:Lcom/piriform/ccleaner/core/b/m;

    const-string/jumbo v1, "date DESC "

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/core/b/e;->a(Lcom/piriform/ccleaner/core/b/m;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/piriform/ccleaner/core/b/e;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {v1}, Lcom/piriform/ccleaner/core/b/e;->b(Landroid/database/Cursor;)V

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 1103
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/piriform/ccleaner/core/b/e;->a(Landroid/database/Cursor;Lcom/piriform/ccleaner/core/b/a/a;Z)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/b/h;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const-string/jumbo v1, "date DESC "

    .line 2084
    new-instance v2, Lcom/piriform/ccleaner/core/b/n;

    invoke-direct {v2}, Lcom/piriform/ccleaner/core/b/n;-><init>()V

    .line 2085
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/b/h;

    .line 2086
    invoke-virtual {v2, v0}, Lcom/piriform/ccleaner/core/b/n;->a(Lcom/piriform/ccleaner/core/b/h;)V

    goto :goto_1

    .line 2088
    :cond_1
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/b/n;->a()Lcom/piriform/ccleaner/core/b/m;

    move-result-object v0

    .line 2080
    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/core/b/e;->a(Lcom/piriform/ccleaner/core/b/m;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/piriform/ccleaner/core/b/e;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-static {v1}, Lcom/piriform/ccleaner/core/b/e;->b(Landroid/database/Cursor;)V

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Lcom/piriform/ccleaner/core/b/e;->a:Lcom/piriform/ccleaner/core/b/a/a;

    .line 2108
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/piriform/ccleaner/core/b/e;->a(Landroid/database/Cursor;Lcom/piriform/ccleaner/core/b/a/a;Z)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
