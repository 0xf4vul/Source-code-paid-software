.class public final Lf/d/e/b/o;
.super Lf/d/e/b/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/e/b/s",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lf/d/e/b/s;-><init>(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 4

    .prologue
    .line 217
    .line 9069
    iget-wide v0, p0, Lf/d/e/b/p;->consumerIndex:J

    .line 10038
    iget-wide v2, p0, Lf/d/e/b/u;->producerIndex:J

    .line 217
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lf/d/e/b/o;->c:[Ljava/lang/Object;

    .line 127
    iget-wide v2, p0, Lf/d/e/b/o;->b:J

    .line 1038
    iget-wide v4, p0, Lf/d/e/b/u;->producerIndex:J

    .line 129
    invoke-virtual {p0, v4, v5}, Lf/d/e/b/o;->a(J)J

    move-result-wide v6

    .line 130
    invoke-static {v0, v6, v7}, Lf/d/e/b/o;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1069
    iget-wide v8, p0, Lf/d/e/b/p;->consumerIndex:J

    .line 131
    sub-long v8, v4, v8

    .line 133
    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-static {v0, v6, v7}, Lf/d/e/b/o;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 141
    :cond_2
    invoke-static {v0, v6, v7, p1}, Lf/d/e/b/o;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 144
    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lf/d/e/b/o;->d(J)V

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 177
    .line 4097
    iget-wide v2, p0, Lf/d/e/b/v;->f:J

    .line 5069
    :cond_0
    iget-wide v0, p0, Lf/d/e/b/p;->consumerIndex:J

    .line 181
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 6038
    iget-wide v4, p0, Lf/d/e/b/u;->producerIndex:J

    .line 183
    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 6101
    :cond_1
    iput-wide v4, p0, Lf/d/e/b/v;->f:J

    .line 189
    :cond_2
    invoke-virtual {p0, v0, v1}, Lf/d/e/b/o;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lf/d/e/b/o;->c(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    .line 1097
    iget-wide v2, p0, Lf/d/e/b/v;->f:J

    .line 2069
    :cond_0
    iget-wide v4, p0, Lf/d/e/b/p;->consumerIndex:J

    .line 154
    cmp-long v1, v4, v2

    if-ltz v1, :cond_2

    .line 3038
    iget-wide v6, p0, Lf/d/e/b/u;->producerIndex:J

    .line 156
    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 171
    :goto_0
    return-object v0

    .line 3101
    :cond_1
    iput-wide v6, p0, Lf/d/e/b/v;->f:J

    .line 162
    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {p0, v4, v5, v6, v7}, Lf/d/e/b/o;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0, v4, v5}, Lf/d/e/b/o;->a(J)J

    move-result-wide v2

    .line 166
    iget-object v4, p0, Lf/d/e/b/o;->c:[Ljava/lang/Object;

    .line 168
    invoke-static {v4, v2, v3}, Lf/d/e/b/o;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 170
    invoke-static {v4, v2, v3, v0}, Lf/d/e/b/o;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    .line 171
    goto :goto_0
.end method

.method public final size()I
    .locals 6

    .prologue
    .line 200
    .line 7069
    iget-wide v0, p0, Lf/d/e/b/p;->consumerIndex:J

    .line 8038
    :goto_0
    iget-wide v4, p0, Lf/d/e/b/u;->producerIndex:J

    .line 8069
    iget-wide v2, p0, Lf/d/e/b/p;->consumerIndex:J

    .line 205
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 206
    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v2

    .line 208
    goto :goto_0
.end method
