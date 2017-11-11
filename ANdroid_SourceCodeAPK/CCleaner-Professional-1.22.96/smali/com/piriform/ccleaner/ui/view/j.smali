.class public final Lcom/piriform/ccleaner/ui/view/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field public b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/piriform/ccleaner/ui/view/j;->a:I

    .line 9
    iput-wide p2, p0, Lcom/piriform/ccleaner/ui/view/j;->b:J

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 30
    goto :goto_0

    .line 33
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/ui/view/j;

    .line 35
    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/view/j;->b:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/ui/view/j;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 36
    goto :goto_0

    .line 38
    :cond_4
    iget v2, p0, Lcom/piriform/ccleaner/ui/view/j;->a:I

    iget v3, p1, Lcom/piriform/ccleaner/ui/view/j;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 39
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 47
    iget v0, p0, Lcom/piriform/ccleaner/ui/view/j;->a:I

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/view/j;->b:J

    iget-wide v4, p0, Lcom/piriform/ccleaner/ui/view/j;->b:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 49
    return v0
.end method
