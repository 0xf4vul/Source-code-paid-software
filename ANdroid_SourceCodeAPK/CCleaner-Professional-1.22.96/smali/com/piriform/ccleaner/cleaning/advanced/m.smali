.class final Lcom/piriform/ccleaner/cleaning/advanced/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

.field private final id:Ljava/lang/String;

.field private final isFinal:Z

.field private final nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

.field private used:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/piriform/ccleaner/cleaning/advanced/ac;Lcom/piriform/ccleaner/cleaning/advanced/r;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->isFinal:Z

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->id:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    .line 15
    iput-object p4, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    .line 16
    return-void
.end method


# virtual methods
.method final accessibilityAction()Lcom/piriform/ccleaner/cleaning/advanced/r;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0

    .line 52
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/cleaning/advanced/m;

    .line 54
    iget-boolean v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->isFinal:Z

    iget-boolean v3, p1, Lcom/piriform/ccleaner/cleaning/advanced/m;->isFinal:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-boolean v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->used:Z

    iget-boolean v3, p1, Lcom/piriform/ccleaner/cleaning/advanced/m;->used:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_5
    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->id:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/piriform/ccleaner/cleaning/advanced/m;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    .line 61
    goto :goto_0

    .line 60
    :cond_7
    iget-object v2, p1, Lcom/piriform/ccleaner/cleaning/advanced/m;->id:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 63
    :cond_8
    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    iget-object v3, p1, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    .line 64
    goto :goto_0

    .line 63
    :cond_a
    iget-object v2, p1, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    if-nez v2, :cond_9

    .line 66
    :cond_b
    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    if-eqz v2, :cond_c

    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    iget-object v1, p1, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->isFinal:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 74
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->used:Z

    if-eqz v3, :cond_2

    :goto_1
    add-int/2addr v0, v1

    .line 75
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    .line 76
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v1

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->accessibilityAction:Lcom/piriform/ccleaner/cleaning/advanced/r;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 78
    return v0

    :cond_1
    move v0, v2

    .line 73
    goto :goto_0

    :cond_2
    move v1, v2

    .line 74
    goto :goto_1

    :cond_3
    move v0, v2

    .line 75
    goto :goto_2

    :cond_4
    move v0, v2

    .line 76
    goto :goto_3
.end method

.method final id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->id:Ljava/lang/String;

    return-object v0
.end method

.method final isFinal()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->isFinal:Z

    return v0
.end method

.method final isUsed()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->used:Z

    return v0
.end method

.method final markAsUsed()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->used:Z

    .line 20
    return-void
.end method

.method final nodesFinder()Lcom/piriform/ccleaner/cleaning/advanced/ac;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/m;->nodesFinder:Lcom/piriform/ccleaner/cleaning/advanced/ac;

    return-object v0
.end method
