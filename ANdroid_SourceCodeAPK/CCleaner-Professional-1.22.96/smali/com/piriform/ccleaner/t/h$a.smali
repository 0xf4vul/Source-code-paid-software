.class final Lcom/piriform/ccleaner/t/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/piriform/ccleaner/t/h$a;->a:J

    .line 45
    iput-wide p3, p0, Lcom/piriform/ccleaner/t/h$a;->b:J

    .line 46
    iput-wide p5, p0, Lcom/piriform/ccleaner/t/h$a;->c:J

    .line 47
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 67
    goto :goto_0

    .line 70
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/t/h$a;

    .line 72
    iget-wide v2, p0, Lcom/piriform/ccleaner/t/h$a;->a:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/t/h$a;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/piriform/ccleaner/t/h$a;->b:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/t/h$a;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/piriform/ccleaner/t/h$a;->c:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/t/h$a;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 79
    iget-wide v0, p0, Lcom/piriform/ccleaner/t/h$a;->a:J

    iget-wide v2, p0, Lcom/piriform/ccleaner/t/h$a;->a:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/piriform/ccleaner/t/h$a;->b:J

    iget-wide v4, p0, Lcom/piriform/ccleaner/t/h$a;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/piriform/ccleaner/t/h$a;->c:J

    iget-wide v4, p0, Lcom/piriform/ccleaner/t/h$a;->c:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 82
    return v0
.end method
