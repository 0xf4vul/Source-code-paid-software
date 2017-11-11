.class public final Lcom/google/android/exoplayer2/c/f/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/f/p$b;,
        Lcom/google/android/exoplayer2/c/f/p$c;,
        Lcom/google/android/exoplayer2/c/f/p$a;,
        Lcom/google/android/exoplayer2/c/f/p$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c/i;

.field private static final b:J

.field private static final c:J

.field private static final d:J


# instance fields
.field private final e:Z

.field private final f:Lcom/google/android/exoplayer2/c/n;

.field private final g:Lcom/google/android/exoplayer2/j/k;

.field private final h:Lcom/google/android/exoplayer2/j/j;

.field private final i:Landroid/util/SparseIntArray;

.field private final j:Lcom/google/android/exoplayer2/c/f/g$b;

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/c/f/p$d;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/util/SparseBooleanArray;

.field private m:Lcom/google/android/exoplayer2/c/h;

.field private n:Z

.field private o:Lcom/google/android/exoplayer2/c/f/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/c/f/p$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/p$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/f/p;->a:Lcom/google/android/exoplayer2/c/i;

    .line 76
    const-string/jumbo v0, "AC-3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer2/c/f/p;->b:J

    .line 77
    const-string/jumbo v0, "EAC3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer2/c/f/p;->c:J

    .line 78
    const-string/jumbo v0, "HEVC"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer2/c/f/p;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/c/n;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/n;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/p;-><init>(Lcom/google/android/exoplayer2/c/n;)V

    .line 99
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/c/n;)V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/c/f/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/e;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/c/f/p;-><init>(Lcom/google/android/exoplayer2/c/n;Lcom/google/android/exoplayer2/c/f/g$b;)V

    .line 106
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/c/n;Lcom/google/android/exoplayer2/c/f/g$b;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/p;->f:Lcom/google/android/exoplayer2/c/n;

    .line 117
    invoke-static {p2}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/f/g$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->j:Lcom/google/android/exoplayer2/c/f/g$b;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/p;->e:Z

    .line 119
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0x3ac

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/j/j;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/j;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    .line 121
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->l:Landroid/util/SparseBooleanArray;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->k:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->i:Landroid/util/SparseIntArray;

    .line 124
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/f/p;->d()V

    .line 125
    return-void
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/google/android/exoplayer2/c/f/p;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/c/f/p;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->k:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/c/f/p;Lcom/google/android/exoplayer2/c/f/g;)Lcom/google/android/exoplayer2/c/f/g;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/p;->o:Lcom/google/android/exoplayer2/c/f/g;

    return-object p1
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/google/android/exoplayer2/c/f/p;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/c/f/p;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/p;->e:Z

    return v0
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/google/android/exoplayer2/c/f/p;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/f/g;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->o:Lcom/google/android/exoplayer2/c/f/g;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/f/g$b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->j:Lcom/google/android/exoplayer2/c/f/g$b;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->l:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->k:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/exoplayer2/c/f/p$a;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/c/f/p$a;-><init>(Lcom/google/android/exoplayer2/c/f/p;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->o:Lcom/google/android/exoplayer2/c/f/g;

    .line 259
    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/c/f/p;)Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->l:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/n;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->f:Lcom/google/android/exoplayer2/c/n;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/c/f/p;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/p;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/c/f/p;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/p;->n:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xbc

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 172
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    .line 1126
    iget v4, v4, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 172
    rsub-int v4, v4, 0x3ac

    if-ge v4, v7, :cond_1

    .line 173
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v4

    .line 174
    if-lez v4, :cond_0

    .line 175
    iget-object v5, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    .line 2126
    iget v5, v5, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 175
    invoke-static {v3, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 180
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v4

    if-ge v4, v7, :cond_4

    .line 181
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    .line 3109
    iget v4, v4, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 182
    rsub-int v5, v4, 0x3ac

    invoke-interface {p1, v3, v4, v5}, Lcom/google/android/exoplayer2/c/g;->a([BII)I

    move-result v5

    .line 183
    if-ne v5, v0, :cond_3

    move v2, v0

    .line 249
    :cond_2
    :goto_1
    return v2

    .line 186
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    add-int/2addr v4, v5

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    goto :goto_0

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    .line 4109
    iget v4, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    .line 4126
    iget v0, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 193
    :goto_2
    if-ge v0, v4, :cond_5

    aget-byte v5, v3, v0

    const/16 v6, 0x47

    if-eq v5, v6, :cond_5

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 196
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 198
    add-int/lit16 v5, v0, 0xbc

    .line 199
    if-gt v5, v4, :cond_2

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    const/4 v6, 0x3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/exoplayer2/j/k;->a(Lcom/google/android/exoplayer2/j/j;I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/j;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    goto :goto_1

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/j;->a()Z

    move-result v6

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v0

    .line 213
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 214
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/j;->a()Z

    move-result v7

    .line 215
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/j;->a()Z

    move-result v8

    .line 217
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->h:Lcom/google/android/exoplayer2/j/j;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v3

    .line 218
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/f/p;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v0, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 219
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/f/p;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    if-ne v9, v3, :cond_7

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    goto :goto_1

    .line 224
    :cond_7
    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0x10

    if-eq v3, v9, :cond_c

    move v3, v1

    .line 229
    :goto_3
    if-eqz v7, :cond_8

    .line 230
    iget-object v7, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v7

    .line 231
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 235
    :cond_8
    if-eqz v8, :cond_a

    .line 236
    iget-object v7, p0, Lcom/google/android/exoplayer2/c/f/p;->k:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/f/p$d;

    .line 237
    if-eqz v0, :cond_a

    .line 238
    if-eqz v3, :cond_9

    .line 239
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/p$d;->a()V

    .line 241
    :cond_9
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 242
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    iget-object v7, p0, Lcom/google/android/exoplayer2/c/f/p;->m:Lcom/google/android/exoplayer2/c/h;

    invoke-virtual {v0, v3, v6, v7}, Lcom/google/android/exoplayer2/c/f/p$d;->a(Lcom/google/android/exoplayer2/j/k;ZLcom/google/android/exoplayer2/c/h;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    .line 5126
    iget v0, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 243
    if-gt v0, v5, :cond_b

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 248
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 243
    goto :goto_4

    :cond_c
    move v3, v2

    goto :goto_3
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 4

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/p;->m:Lcom/google/android/exoplayer2/c/h;

    .line 150
    new-instance v0, Lcom/google/android/exoplayer2/c/m$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/c/m$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 151
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 132
    const/16 v1, 0x3ac

    invoke-interface {p1, v3, v0, v1}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    move v2, v0

    .line 133
    :goto_0
    const/16 v1, 0xbc

    if-ge v2, v1, :cond_0

    move v1, v0

    .line 135
    :goto_1
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 136
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 137
    const/4 v0, 0x1

    .line 144
    :cond_0
    return v0

    .line 139
    :cond_1
    mul-int/lit16 v4, v1, 0xbc

    add-int/2addr v4, v2

    aget-byte v4, v3, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_2

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public final b(J)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->f:Lcom/google/android/exoplayer2/c/n;

    .line 1058
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/n;->a:J

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->a()V

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/p;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 159
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/f/p;->d()V

    .line 160
    return-void
.end method
