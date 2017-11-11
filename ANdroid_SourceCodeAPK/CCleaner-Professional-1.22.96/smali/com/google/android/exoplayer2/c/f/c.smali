.class public final Lcom/google/android/exoplayer2/c/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c/i;

.field private static final b:I


# instance fields
.field private final c:J

.field private final d:Lcom/google/android/exoplayer2/j/k;

.field private e:Lcom/google/android/exoplayer2/c/f/d;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/c/f/c$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/c$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/f/c;->a:Lcom/google/android/exoplayer2/c/i;

    .line 50
    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/f/c;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/c;-><init>(B)V

    .line 66
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/c;->c:J

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/c;->d:Lcom/google/android/exoplayer2/j/k;

    .line 71
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
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/c;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/16 v3, 0xc8

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/c/g;->a([BII)I

    move-result v2

    .line 151
    if-ne v2, v0, :cond_0

    .line 167
    :goto_0
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/c;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/c;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 159
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/c;->f:Z

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/c;->e:Lcom/google/android/exoplayer2/c/f/d;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/c;->c:J

    .line 1122
    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/f/d;->a:J

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/c;->f:Z

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/c;->e:Lcom/google/android/exoplayer2/c/f/d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/c;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/c/f/d;->a(Lcom/google/android/exoplayer2/j/k;)V

    move v0, v1

    .line 167
    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/c/f/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/c;->e:Lcom/google/android/exoplayer2/c/f/d;

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/c;->e:Lcom/google/android/exoplayer2/c/f/d;

    new-instance v1, Lcom/google/android/exoplayer2/c/f/g$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/c/f/g$c;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/c/f/d;->a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V

    .line 132
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/c/m$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/c/m$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 134
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/g;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 76
    new-instance v5, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    .line 77
    new-instance v6, Lcom/google/android/exoplayer2/j/j;

    iget-object v0, v5, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-direct {v6, v0}, Lcom/google/android/exoplayer2/j/j;-><init>([B)V

    move v0, v1

    .line 80
    :goto_0
    iget-object v2, v5, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 81
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 82
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/c/f/c;->b:I

    if-ne v2, v3, :cond_0

    .line 85
    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 86
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->m()I

    move-result v2

    .line 87
    add-int/lit8 v3, v2, 0xa

    add-int/2addr v0, v3

    .line 88
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 91
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    move v2, v1

    move v3, v1

    move v4, v0

    .line 98
    :goto_1
    iget-object v7, v5, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v8, 0x2

    invoke-interface {p1, v7, v1, v8}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 99
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 100
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v7

    .line 101
    const v8, 0xfff6

    and-int/2addr v7, v8

    const v8, 0xfff0

    if-eq v7, v8, :cond_3

    .line 104
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 105
    add-int/lit8 v2, v4, 0x1

    sub-int v3, v2, v0

    const/16 v4, 0x2000

    if-lt v3, v4, :cond_2

    .line 120
    :cond_1
    :goto_2
    return v1

    .line 108
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    move v3, v1

    move v4, v2

    move v2, v1

    goto :goto_1

    .line 110
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v9, :cond_4

    const/16 v7, 0xbc

    if-le v3, v7, :cond_4

    .line 111
    const/4 v1, 0x1

    goto :goto_2

    .line 115
    :cond_4
    iget-object v7, v5, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v7, v1, v9}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 116
    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/j/j;->a(I)V

    .line 117
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v7

    .line 119
    const/4 v8, 0x6

    if-le v7, v8, :cond_1

    .line 122
    add-int/lit8 v8, v7, -0x6

    invoke-interface {p1, v8}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    .line 123
    add-int/2addr v3, v7

    .line 125
    goto :goto_1
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/c;->f:Z

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/c;->e:Lcom/google/android/exoplayer2/c/f/d;

    .line 1105
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/d;->c()V

    .line 140
    return-void
.end method
