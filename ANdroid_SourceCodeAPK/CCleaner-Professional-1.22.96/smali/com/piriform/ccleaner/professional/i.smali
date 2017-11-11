.class final Lcom/piriform/ccleaner/professional/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/piriform/ccleaner/professional/i;->a:I

    .line 11
    iput p2, p0, Lcom/piriform/ccleaner/professional/i;->b:I

    .line 12
    iput p3, p0, Lcom/piriform/ccleaner/professional/i;->c:I

    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 33
    goto :goto_0

    .line 36
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/professional/i;

    .line 38
    iget v2, p0, Lcom/piriform/ccleaner/professional/i;->a:I

    iget v3, p1, Lcom/piriform/ccleaner/professional/i;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 39
    goto :goto_0

    .line 41
    :cond_4
    iget v2, p0, Lcom/piriform/ccleaner/professional/i;->b:I

    iget v3, p1, Lcom/piriform/ccleaner/professional/i;->b:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 42
    goto :goto_0

    .line 44
    :cond_5
    iget v2, p0, Lcom/piriform/ccleaner/professional/i;->c:I

    iget v3, p1, Lcom/piriform/ccleaner/professional/i;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/piriform/ccleaner/professional/i;->a:I

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/piriform/ccleaner/professional/i;->b:I

    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/piriform/ccleaner/professional/i;->c:I

    add-int/2addr v0, v1

    .line 53
    return v0
.end method
