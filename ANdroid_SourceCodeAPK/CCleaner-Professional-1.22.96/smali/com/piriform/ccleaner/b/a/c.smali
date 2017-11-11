.class Lcom/piriform/ccleaner/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:I

.field final c:I

.field final d:J

.field final e:J

.field final f:J

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/b/a;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "configVersion"

    const-string/jumbo v1, "avast.burger"

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/b/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/b/a/c;->a:J

    .line 35
    const-string/jumbo v0, "burgerEnvelopeCapacity"

    const-string/jumbo v1, "avast.burger"

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/b/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/piriform/ccleaner/b/a/c;->b:I

    .line 36
    const-string/jumbo v0, "burgerSendingInterval"

    const-string/jumbo v1, "avast.burger"

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/b/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/b/a/c;->d:J

    .line 37
    const-string/jumbo v0, "burgerQueueCapacity"

    const-string/jumbo v1, "avast.burger"

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/b/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/piriform/ccleaner/b/a/c;->c:I

    .line 38
    const-string/jumbo v0, "burgerHeartBeatInterval"

    const-string/jumbo v1, "avast.burger"

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/b/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/b/a/c;->e:J

    .line 39
    const-string/jumbo v0, "burgerFilteringRules"

    const-string/jumbo v1, "avast.burger"

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1048
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    .line 40
    const-string/jumbo v0, "openUIInterval"

    const-string/jumbo v1, "avast.burger"

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/b/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/b/a/c;->f:J

    .line 41
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    const-string/jumbo v1, ";"

    .line 1068
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1069
    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 1071
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1073
    if-eqz v3, :cond_2

    .line 1074
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1078
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 98
    goto :goto_0

    .line 101
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/b/a/c;

    .line 103
    iget-wide v2, p0, Lcom/piriform/ccleaner/b/a/c;->a:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/b/a/c;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_4
    iget v2, p0, Lcom/piriform/ccleaner/b/a/c;->b:I

    iget v3, p1, Lcom/piriform/ccleaner/b/a/c;->b:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_5
    iget v2, p0, Lcom/piriform/ccleaner/b/a/c;->c:I

    iget v3, p1, Lcom/piriform/ccleaner/b/a/c;->c:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_6
    iget-wide v2, p0, Lcom/piriform/ccleaner/b/a/c;->d:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/b/a/c;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_7
    iget-wide v2, p0, Lcom/piriform/ccleaner/b/a/c;->e:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/b/a/c;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_8
    iget-wide v2, p0, Lcom/piriform/ccleaner/b/a/c;->f:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/b/a/c;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    move v0, v1

    .line 119
    goto :goto_0

    .line 121
    :cond_9
    iget-object v2, p0, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    iget-object v1, p1, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 81
    iget-wide v0, p0, Lcom/piriform/ccleaner/b/a/c;->a:J

    iget-wide v2, p0, Lcom/piriform/ccleaner/b/a/c;->a:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/piriform/ccleaner/b/a/c;->b:I

    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/piriform/ccleaner/b/a/c;->c:I

    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/piriform/ccleaner/b/a/c;->d:J

    iget-wide v4, p0, Lcom/piriform/ccleaner/b/a/c;->d:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/piriform/ccleaner/b/a/c;->e:J

    iget-wide v4, p0, Lcom/piriform/ccleaner/b/a/c;->e:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/piriform/ccleaner/b/a/c;->f:J

    iget-wide v4, p0, Lcom/piriform/ccleaner/b/a/c;->f:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 88
    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
