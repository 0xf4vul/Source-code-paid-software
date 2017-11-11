.class public final Lcom/piriform/ccleaner/core/data/i$b;
.super Lcom/piriform/ccleaner/core/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/data/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/d",
        "<",
        "Lcom/piriform/ccleaner/core/data/i;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/piriform/ccleaner/core/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const-wide/16 v8, 0x0

    .line 33
    check-cast p1, Lcom/piriform/ccleaner/core/data/i;

    check-cast p2, Lcom/piriform/ccleaner/core/data/i;

    .line 1069
    iget-wide v4, p1, Lcom/piriform/ccleaner/core/data/i;->d:J

    .line 2069
    iget-wide v6, p2, Lcom/piriform/ccleaner/core/data/i;->d:J

    .line 1036
    sub-long/2addr v4, v6

    .line 1037
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/data/i$b;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1038
    cmp-long v3, v4, v8

    if-gez v3, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return v0

    .line 1038
    :cond_1
    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 1040
    :cond_3
    cmp-long v3, v4, v8

    if-gtz v3, :cond_0

    cmp-long v0, v4, v8

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 33
    goto :goto_0
.end method
