.class final Lcom/piriform/ccleaner/core/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    .line 22
    iput-object p2, p0, Lcom/piriform/ccleaner/core/b/b;->b:Landroid/content/ContentResolver;

    .line 23
    return-void
.end method


# virtual methods
.method final a()Lcom/piriform/ccleaner/core/data/d;
    .locals 8

    .prologue
    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    const-string/jumbo v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 28
    iget-object v2, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    const-string/jumbo v3, "number"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 29
    iget-object v3, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    const-string/jumbo v4, "type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 30
    iget-object v4, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    const-string/jumbo v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 32
    new-instance v5, Lcom/piriform/ccleaner/core/data/d;

    invoke-direct {v5}, Lcom/piriform/ccleaner/core/data/d;-><init>()V

    .line 33
    iget-object v6, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/piriform/ccleaner/core/data/d;->a(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    iput-object v0, v5, Lcom/piriform/ccleaner/core/data/f;->f:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lcom/piriform/ccleaner/core/b/b;->b:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Lcom/piriform/ccleaner/core/b/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/piriform/ccleaner/core/data/c;

    move-result-object v0

    .line 2021
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/c;->b:Ljava/util/Set;

    .line 39
    invoke-virtual {v5, v0}, Lcom/piriform/ccleaner/core/data/d;->a(Ljava/util/Set;)V

    .line 41
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 42
    invoke-virtual {v5, v0}, Lcom/piriform/ccleaner/core/data/d;->a(Ljava/util/Date;)V

    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/piriform/ccleaner/core/data/d;->b(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 46
    invoke-static {v0}, Lcom/piriform/ccleaner/core/data/e;->a(I)Lcom/piriform/ccleaner/core/data/e;

    move-result-object v0

    .line 3012
    iput-object v0, v5, Lcom/piriform/ccleaner/core/data/d;->a:Lcom/piriform/ccleaner/core/data/e;

    .line 47
    return-object v5
.end method
