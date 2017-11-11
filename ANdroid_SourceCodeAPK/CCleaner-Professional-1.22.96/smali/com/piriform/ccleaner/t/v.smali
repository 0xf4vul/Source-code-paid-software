.class public final Lcom/piriform/ccleaner/t/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/piriform/ccleaner/t/m;

.field final b:Lcom/piriform/ccleaner/t/h;

.field final c:Lcom/piriform/ccleaner/t/t;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/m;Lcom/piriform/ccleaner/t/t;Lcom/piriform/ccleaner/t/h;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/piriform/ccleaner/t/v;->a:Lcom/piriform/ccleaner/t/m;

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/t/v;->c:Lcom/piriform/ccleaner/t/t;

    .line 22
    iput-object p3, p0, Lcom/piriform/ccleaner/t/v;->b:Lcom/piriform/ccleaner/t/h;

    .line 23
    return-void
.end method

.method static a(Lcom/piriform/ccleaner/t/u;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/t/u;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 97
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    .line 98
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v2, v6

    .line 1132
    iget-object v1, p0, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 100
    long-to-float v6, v4

    invoke-static {v1, v6, v0}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 101
    sget-object v1, Lcom/piriform/ccleaner/t/x$b;->n:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v1

    long-to-float v6, v2

    invoke-static {v1, v6, v0}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 102
    sget-object v1, Lcom/piriform/ccleaner/t/x$b;->m:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v1

    sub-long v2, v4, v2

    long-to-float v2, v2

    invoke-static {v1, v2, v0}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 104
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/t/x;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .line 1150
    iget v0, p0, Lcom/piriform/ccleaner/t/x;->a:F

    .line 109
    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 110
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    iput p1, p0, Lcom/piriform/ccleaner/t/x;->a:F

    .line 113
    :cond_0
    return-void
.end method
