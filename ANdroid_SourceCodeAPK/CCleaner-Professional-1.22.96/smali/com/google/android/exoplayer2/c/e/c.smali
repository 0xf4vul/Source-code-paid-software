.class public Lcom/google/android/exoplayer2/c/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c/i;


# instance fields
.field private b:Lcom/google/android/exoplayer2/c/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/c/e/c$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/e/c$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/e/c;->a:Lcom/google/android/exoplayer2/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/c;->b:Lcom/google/android/exoplayer2/c/e/h;

    .line 4103
    iget v1, v0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    packed-switch v1, :pswitch_data_0

    .line 4117
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 4105
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c/e/h;->a(Lcom/google/android/exoplayer2/c/g;)I

    move-result v0

    .line 4113
    :goto_0
    return v0

    .line 4108
    :pswitch_1
    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/e/h;->b:J

    long-to-int v1, v2

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 4109
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    .line 4110
    const/4 v0, 0x0

    goto :goto_0

    .line 4113
    :pswitch_2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c/e/h;->a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I

    move-result v0

    goto :goto_0

    .line 4103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v0

    .line 79
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/c;->b:Lcom/google/android/exoplayer2/c/e/h;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/c/e/h;->a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/o;)V

    .line 82
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/g;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    :try_start_0
    new-instance v2, Lcom/google/android/exoplayer2/c/e/e;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/c/e/e;-><init>()V

    .line 53
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/google/android/exoplayer2/c/e/e;->a(Lcom/google/android/exoplayer2/c/g;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/google/android/exoplayer2/c/e/e;->b:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    iget v2, v2, Lcom/google/android/exoplayer2/c/e/e;->i:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58
    new-instance v3, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    .line 59
    iget-object v4, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v2}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 1106
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 2044
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    const/16 v4, 0x7f

    if-ne v2, v4, :cond_2

    .line 2045
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    move v2, v1

    .line 61
    :goto_1
    if-eqz v2, :cond_3

    .line 62
    new-instance v2, Lcom/google/android/exoplayer2/c/e/b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/c/e/b;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/c/e/c;->b:Lcom/google/android/exoplayer2/c/e/h;

    :goto_2
    move v0, v1

    .line 70
    goto :goto_0

    :cond_2
    move v2, v0

    .line 2045
    goto :goto_1

    .line 2106
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 63
    invoke-static {v3}, Lcom/google/android/exoplayer2/c/e/j;->b(Lcom/google/android/exoplayer2/j/k;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    new-instance v2, Lcom/google/android/exoplayer2/c/e/j;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/c/e/j;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/c/e/c;->b:Lcom/google/android/exoplayer2/c/e/h;

    goto :goto_2

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3106
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 65
    invoke-static {v3}, Lcom/google/android/exoplayer2/c/e/g;->b(Lcom/google/android/exoplayer2/j/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Lcom/google/android/exoplayer2/c/e/g;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/c/e/g;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/c/e/c;->b:Lcom/google/android/exoplayer2/c/e/h;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/j; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/c;->b:Lcom/google/android/exoplayer2/c/e/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c/e/h;->a(J)V

    .line 87
    return-void
.end method
