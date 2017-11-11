.class public final Lcom/google/android/exoplayer2/g/e/g;
.super Lcom/google/android/exoplayer2/g/c;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/exoplayer2/g/e/f;

.field private final d:Lcom/google/android/exoplayer2/j/k;

.field private final e:Lcom/google/android/exoplayer2/g/e/e$a;

.field private final f:Lcom/google/android/exoplayer2/g/e/a;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/g/e/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "WebvttDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g/c;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/g/e/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/g/e/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->c:Lcom/google/android/exoplayer2/g/e/f;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    .line 51
    new-instance v0, Lcom/google/android/exoplayer2/g/e/e$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/g/e/e$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->e:Lcom/google/android/exoplayer2/g/e/e$a;

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/g/e/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/g/e/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->f:Lcom/google/android/exoplayer2/g/e/a;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->g:Ljava/util/List;

    .line 54
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/j/k;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 98
    move v0, v1

    move v2, v3

    .line 100
    :goto_0
    if-ne v2, v3, :cond_3

    .line 1126
    iget v0, p0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 102
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->q()Ljava/lang/String;

    move-result-object v2

    .line 103
    if-nez v2, :cond_0

    move v2, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const-string/jumbo v4, "STYLE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const/4 v2, 0x2

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v4, "NOTE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const/4 v2, 0x1

    goto :goto_0

    .line 110
    :cond_2
    const/4 v2, 0x3

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 114
    return v2
.end method

.method private static b(Lcom/google/android/exoplayer2/j/k;)V
    .locals 1

    .prologue
    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    return-void
.end method


# virtual methods
.method protected final synthetic a([BI)Lcom/google/android/exoplayer2/g/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/g/g;
        }
    .end annotation

    .prologue
    .line 30
    .line 2058
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 2060
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->e:Lcom/google/android/exoplayer2/g/e/e$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g/e/e$a;->a()V

    .line 2061
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2064
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-static {v0}, Lcom/google/android/exoplayer2/g/e/h;->a(Lcom/google/android/exoplayer2/j/k;)V

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-static {v1}, Lcom/google/android/exoplayer2/g/e/g;->a(Lcom/google/android/exoplayer2/j/k;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 2070
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2071
    iget-object v1, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-static {v1}, Lcom/google/android/exoplayer2/g/e/g;->b(Lcom/google/android/exoplayer2/j/k;)V

    goto :goto_0

    .line 2072
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 2073
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2074
    new-instance v0, Lcom/google/android/exoplayer2/g/g;

    const-string/jumbo v1, "A style block was found after the first cue."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/g/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2076
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->q()Ljava/lang/String;

    .line 2077
    iget-object v1, p0, Lcom/google/android/exoplayer2/g/e/g;->f:Lcom/google/android/exoplayer2/g/e/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/g/e/a;->a(Lcom/google/android/exoplayer2/j/k;)Lcom/google/android/exoplayer2/g/e/d;

    move-result-object v1

    .line 2078
    if-eqz v1, :cond_1

    .line 2079
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/e/g;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2081
    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2082
    iget-object v1, p0, Lcom/google/android/exoplayer2/g/e/g;->c:Lcom/google/android/exoplayer2/g/e/f;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g/e/g;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g/e/g;->e:Lcom/google/android/exoplayer2/g/e/e$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g/e/g;->g:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/g/e/f;->a(Lcom/google/android/exoplayer2/j/k;Lcom/google/android/exoplayer2/g/e/e$a;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2083
    iget-object v1, p0, Lcom/google/android/exoplayer2/g/e/g;->e:Lcom/google/android/exoplayer2/g/e/e$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g/e/e$a;->b()Lcom/google/android/exoplayer2/g/e/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2084
    iget-object v1, p0, Lcom/google/android/exoplayer2/g/e/g;->e:Lcom/google/android/exoplayer2/g/e/e$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g/e/e$a;->a()V

    goto :goto_0

    .line 2088
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/g/e/i;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/g/e/i;-><init>(Ljava/util/List;)V

    .line 30
    return-object v1
.end method
