.class public final Lcom/google/android/exoplayer2/c/f/a;
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

.field private e:Lcom/google/android/exoplayer2/c/f/b;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/c/f/a$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/a$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/f/a;->a:Lcom/google/android/exoplayer2/c/i;

    .line 57
    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/f/a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/a;-><init>(B)V

    .line 67
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/a;->c:J

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/a;->d:Lcom/google/android/exoplayer2/j/k;

    .line 72
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

    .line 141
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/a;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/16 v3, 0xae2

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/c/g;->a([BII)I

    move-result v2

    .line 142
    if-ne v2, v0, :cond_0

    .line 158
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/a;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/a;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 150
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/a;->f:Z

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/a;->e:Lcom/google/android/exoplayer2/c/f/b;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/a;->c:J

    .line 1091
    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/f/b;->a:J

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/a;->f:Z

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/a;->e:Lcom/google/android/exoplayer2/c/f/b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/a;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/c/f/b;->a(Lcom/google/android/exoplayer2/j/k;)V

    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/exoplayer2/c/f/b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/a;->e:Lcom/google/android/exoplayer2/c/f/b;

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/a;->e:Lcom/google/android/exoplayer2/c/f/b;

    new-instance v1, Lcom/google/android/exoplayer2/c/f/g$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/c/f/g$c;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/c/f/b;->a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V

    .line 123
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/c/m$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/c/m$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 125
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/g;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x0

    .line 77
    new-instance v4, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    move v0, v1

    .line 80
    :goto_0
    iget-object v2, v4, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v2, v1, v5}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 81
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 82
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/c/f/a;->b:I

    if-ne v2, v3, :cond_0

    .line 85
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 86
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->m()I

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

    move v3, v0

    .line 96
    :goto_1
    iget-object v5, v4, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v6, 0x5

    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 97
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 98
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v5

    .line 99
    const/16 v6, 0xb77

    if-eq v5, v6, :cond_3

    .line 101
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 102
    add-int/lit8 v2, v3, 0x1

    sub-int v3, v2, v0

    const/16 v5, 0x2000

    if-lt v3, v5, :cond_2

    .line 112
    :cond_1
    :goto_2
    return v1

    .line 105
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 107
    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x4

    if-lt v2, v5, :cond_4

    .line 108
    const/4 v1, 0x1

    goto :goto_2

    .line 110
    :cond_4
    iget-object v5, v4, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-static {v5}, Lcom/google/android/exoplayer2/a/a;->a([B)I

    move-result v5

    .line 111
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 114
    add-int/lit8 v5, v5, -0x5

    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    goto :goto_1
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/a;->f:Z

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/a;->e:Lcom/google/android/exoplayer2/c/f/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/b;->a()V

    .line 131
    return-void
.end method
