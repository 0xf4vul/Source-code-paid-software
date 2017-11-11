.class public Lcom/piriform/ccleaner/f/j$a;
.super Lcom/piriform/ccleaner/core/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/d",
        "<",
        "Lcom/piriform/ccleaner/f/j;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/piriform/ccleaner/core/d;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const-wide/16 v8, 0x0

    .line 181
    check-cast p1, Lcom/piriform/ccleaner/f/j;

    check-cast p2, Lcom/piriform/ccleaner/f/j;

    .line 1184
    invoke-static {p1, p2}, Lcom/piriform/ccleaner/f/j;->a(Lcom/piriform/ccleaner/f/j;Lcom/piriform/ccleaner/f/j;)I

    move-result v0

    .line 1185
    if-eqz v0, :cond_0

    .line 1193
    :goto_0
    return v0

    .line 1231
    :cond_0
    iget-wide v4, p1, Lcom/piriform/ccleaner/f/j;->c:J

    .line 2231
    iget-wide v6, p2, Lcom/piriform/ccleaner/f/j;->c:J

    .line 1189
    sub-long/2addr v4, v6

    .line 1190
    invoke-virtual {p0}, Lcom/piriform/ccleaner/f/j$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1191
    cmp-long v0, v4, v8

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 1193
    :cond_3
    cmp-long v0, v4, v8

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    cmp-long v0, v4, v8

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    .line 181
    goto :goto_0
.end method
