.class public final Lcom/google/android/exoplayer2/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/b/d$b;,
        Lcom/google/android/exoplayer2/c/b/d$a;
    }
.end annotation


# static fields
.field private static final F:[B

.field private static final G:[B

.field private static final H:Ljava/util/UUID;

.field public static final a:Lcom/google/android/exoplayer2/c/i;


# instance fields
.field A:I

.field B:I

.field C:I

.field D:Z

.field E:Lcom/google/android/exoplayer2/c/h;

.field private final I:Lcom/google/android/exoplayer2/c/b/b;

.field private final J:Lcom/google/android/exoplayer2/j/k;

.field private final K:Lcom/google/android/exoplayer2/j/k;

.field private final L:Lcom/google/android/exoplayer2/j/k;

.field private final M:Lcom/google/android/exoplayer2/j/k;

.field private final N:Lcom/google/android/exoplayer2/j/k;

.field private final O:Lcom/google/android/exoplayer2/j/k;

.field private final P:Lcom/google/android/exoplayer2/j/k;

.field private Q:Ljava/nio/ByteBuffer;

.field private R:J

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:B

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:Z

.field final b:Lcom/google/android/exoplayer2/c/b/f;

.field final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/c/b/d$b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/exoplayer2/j/k;

.field final e:Lcom/google/android/exoplayer2/j/k;

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:Lcom/google/android/exoplayer2/c/b/d$b;

.field l:Z

.field m:I

.field n:J

.field o:Z

.field p:J

.field q:J

.field r:Lcom/google/android/exoplayer2/j/f;

.field s:Lcom/google/android/exoplayer2/j/f;

.field t:Z

.field u:I

.field v:J

.field w:J

.field x:I

.field y:I

.field z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/c/b/d$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/b/d$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/b/d;->a:Lcom/google/android/exoplayer2/c/i;

    .line 184
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/c/b/d;->F:[B

    .line 192
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/c/b/d;->G:[B

    .line 218
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x100000000001000L

    const-wide v4, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/c/b/d;->H:Ljava/util/UUID;

    return-void

    .line 184
    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 192
    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/google/android/exoplayer2/c/b/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/b/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/b/d;-><init>(Lcom/google/android/exoplayer2/c/b/b;)V

    .line 291
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/c/b/b;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x4

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d;->g:J

    .line 238
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/b/d;->h:J

    .line 239
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/b/d;->i:J

    .line 240
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/b/d;->j:J

    .line 254
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d;->p:J

    .line 255
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d;->R:J

    .line 256
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/b/d;->q:J

    .line 294
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/b/d;->I:Lcom/google/android/exoplayer2/c/b/b;

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->I:Lcom/google/android/exoplayer2/c/b/b;

    new-instance v1, Lcom/google/android/exoplayer2/c/b/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/c/b/d$a;-><init>(Lcom/google/android/exoplayer2/c/b/d;B)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c/b/b;->a(Lcom/google/android/exoplayer2/c/b/c;)V

    .line 296
    new-instance v0, Lcom/google/android/exoplayer2/c/b/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/b/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->b:Lcom/google/android/exoplayer2/c/b/f;

    .line 297
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->c:Landroid/util/SparseArray;

    .line 298
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    .line 299
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->L:Lcom/google/android/exoplayer2/j/k;

    .line 300
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->e:Lcom/google/android/exoplayer2/j/k;

    .line 301
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    sget-object v1, Lcom/google/android/exoplayer2/j/i;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->J:Lcom/google/android/exoplayer2/j/k;

    .line 302
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->K:Lcom/google/android/exoplayer2/j/k;

    .line 303
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->M:Lcom/google/android/exoplayer2/j/k;

    .line 304
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    .line 305
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->O:Lcom/google/android/exoplayer2/j/k;

    .line 306
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->P:Lcom/google/android/exoplayer2/j/k;

    .line 307
    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 348
    sparse-switch p0, :sswitch_data_0

    .line 416
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 369
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 403
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 411
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 414
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 348
    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1
        0x86 -> :sswitch_2
        0x88 -> :sswitch_1
        0x9b -> :sswitch_1
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xd7 -> :sswitch_1
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xfb -> :sswitch_1
        0x4254 -> :sswitch_1
        0x4255 -> :sswitch_3
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x47e1 -> :sswitch_1
        0x47e2 -> :sswitch_3
        0x47e7 -> :sswitch_0
        0x47e8 -> :sswitch_1
        0x4dbb -> :sswitch_0
        0x5031 -> :sswitch_1
        0x5032 -> :sswitch_1
        0x5034 -> :sswitch_0
        0x5035 -> :sswitch_0
        0x53ab -> :sswitch_3
        0x53ac -> :sswitch_1
        0x53b8 -> :sswitch_1
        0x54b0 -> :sswitch_1
        0x54b2 -> :sswitch_1
        0x54ba -> :sswitch_1
        0x55aa -> :sswitch_1
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x6240 -> :sswitch_0
        0x6264 -> :sswitch_1
        0x63a2 -> :sswitch_3
        0x6d80 -> :sswitch_0
        0x7670 -> :sswitch_0
        0x7672 -> :sswitch_3
        0x22b59c -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_1
        0x114d9b74 -> :sswitch_0
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/o;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->M:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    .line 1127
    if-lez v0, :cond_0

    .line 1128
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1129
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->M:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {p2, v1, v0}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 1133
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    .line 1134
    iget v1, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    .line 1135
    return v0

    .line 1131
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/c/g;IZ)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/exoplayer2/c/b/d;->H:Ljava/util/UUID;

    return-object v0
.end method

.method static a([II)[I
    .locals 1

    .prologue
    .line 1241
    if-nez p0, :cond_1

    .line 1242
    new-array p0, p1, [I

    .line 1247
    :cond_0
    :goto_0
    return-object p0

    .line 1243
    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 1247
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 892
    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    .line 893
    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    .line 894
    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->Z:I

    .line 895
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/b/d;->T:Z

    .line 896
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/b/d;->U:Z

    .line 897
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/b/d;->W:Z

    .line 898
    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->Y:I

    .line 899
    iput-byte v0, p0, Lcom/google/android/exoplayer2/c/b/d;->X:B

    .line 900
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/b/d;->V:Z

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->M:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->a()V

    .line 902
    return-void
.end method

.method static b(I)Z
    .locals 1

    .prologue
    .line 421
    const v0, 0x1549a966

    if-eq p0, v0, :cond_0

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_0

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_0

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 336
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/b/d;->ab:Z

    move v2, v0

    .line 338
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/c/b/d;->ab:Z

    if-nez v3, :cond_2

    .line 339
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/b/d;->I:Lcom/google/android/exoplayer2/c/b/b;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/c/b/b;->a(Lcom/google/android/exoplayer2/c/g;)Z

    move-result v3

    .line 340
    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    .line 2184
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/b/d;->o:Z

    if-eqz v2, :cond_0

    .line 2185
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d;->R:J

    .line 2186
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d;->p:J

    iput-wide v4, p2, Lcom/google/android/exoplayer2/c/l;->a:J

    .line 2187
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/b/d;->o:Z

    move v2, v0

    .line 340
    :goto_1
    if-eqz v2, :cond_4

    .line 344
    :goto_2
    return v0

    .line 2192
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/b/d;->l:Z

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d;->R:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 2193
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/b/d;->R:J

    iput-wide v4, p2, Lcom/google/android/exoplayer2/c/l;->a:J

    .line 2194
    iput-wide v6, p0, Lcom/google/android/exoplayer2/c/b/d;->R:J

    move v2, v0

    .line 2195
    goto :goto_1

    :cond_1
    move v2, v1

    .line 2197
    goto :goto_1

    .line 344
    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method final a(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 1201
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/b/d;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1204
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/b/d;->h:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/j/r;->a(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final a(Lcom/google/android/exoplayer2/c/b/d$b;J)V
    .locals 12

    .prologue
    const-wide v8, 0xd693a400L

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 883
    const-string/jumbo v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lcom/google/android/exoplayer2/c/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3079
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/b/d;->w:J

    .line 3088
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 3089
    sget-object v0, Lcom/google/android/exoplayer2/c/b/d;->G:[B

    .line 3101
    :goto_0
    const/16 v2, 0x13

    const/16 v3, 0xc

    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3082
    iget-object v0, p1, Lcom/google/android/exoplayer2/c/b/d$b;->y:Lcom/google/android/exoplayer2/c/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    .line 3109
    iget v2, v2, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 3082
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 3083
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    .line 4109
    iget v1, v1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 3083
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    .line 886
    :cond_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/c/b/d$b;->y:Lcom/google/android/exoplayer2/c/o;

    iget v4, p0, Lcom/google/android/exoplayer2/c/b/d;->C:I

    iget v5, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    iget-object v7, p1, Lcom/google/android/exoplayer2/c/b/d$b;->g:[B

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 887
    iput-boolean v10, p0, Lcom/google/android/exoplayer2/c/b/d;->ab:Z

    .line 888
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/b/d;->b()V

    .line 889
    return-void

    .line 3091
    :cond_1
    div-long v4, v2, v8

    long-to-int v0, v4

    .line 3092
    int-to-long v4, v0

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    .line 3093
    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v4, v4

    .line 3094
    const v5, 0x3938700

    mul-int/2addr v5, v4

    int-to-long v8, v5

    sub-long/2addr v2, v8

    .line 3095
    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    long-to-int v5, v8

    .line 3096
    const v7, 0xf4240

    mul-int/2addr v7, v5

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 3097
    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    long-to-int v2, v2

    .line 3098
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%02d:%02d:%02d,%03d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    .line 3099
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v10

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v0

    .line 3098
    invoke-static {v3, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method final a(Lcom/google/android/exoplayer2/c/g;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    .line 5109
    iget v0, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 910
    if-lt v0, p2, :cond_0

    .line 919
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->c()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    .line 6109
    iget v2, v2, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 914
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    .line 7109
    iget v1, v1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 917
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    .line 8109
    iget v2, v2, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 917
    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 918
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/b/d$b;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 923
    const-string/jumbo v0, "S_TEXT/UTF8"

    iget-object v3, p2, Lcom/google/android/exoplayer2/c/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    sget-object v0, Lcom/google/android/exoplayer2/c/b/d;->F:[B

    array-length v0, v0

    add-int/2addr v0, p3

    .line 925
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->c()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 928
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    sget-object v3, Lcom/google/android/exoplayer2/c/b/d;->F:[B

    add-int v4, v0, p3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 930
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    sget-object v3, Lcom/google/android/exoplayer2/c/b/d;->F:[B

    array-length v3, v3

    invoke-interface {p1, v1, v3, p3}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 931
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 932
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/b/d;->N:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 1076
    :cond_1
    :goto_0
    return-void

    .line 938
    :cond_2
    iget-object v5, p2, Lcom/google/android/exoplayer2/c/b/d$b;->y:Lcom/google/android/exoplayer2/c/o;

    .line 939
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/b/d;->T:Z

    if-nez v0, :cond_f

    .line 940
    iget-boolean v0, p2, Lcom/google/android/exoplayer2/c/b/d$b;->e:Z

    if-eqz v0, :cond_13

    .line 943
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->C:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->C:I

    .line 944
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/b/d;->U:Z

    if-nez v0, :cond_4

    .line 945
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 946
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_3

    .line 948
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Extension bit is set in signal byte"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    aget-byte v0, v0, v2

    iput-byte v0, p0, Lcom/google/android/exoplayer2/c/b/d;->X:B

    .line 951
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/b/d;->U:Z

    .line 953
    :cond_4
    iget-byte v0, p0, Lcom/google/android/exoplayer2/c/b/d;->X:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    .line 954
    :goto_1
    if-eqz v0, :cond_e

    .line 955
    iget-byte v0, p0, Lcom/google/android/exoplayer2/c/b/d;->X:B

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v8, :cond_a

    move v0, v1

    .line 956
    :goto_2
    iget v3, p0, Lcom/google/android/exoplayer2/c/b/d;->C:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/c/b/d;->C:I

    .line 957
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/c/b/d;->V:Z

    if-nez v3, :cond_5

    .line 958
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->O:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v3, v2, v6}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 959
    iget v3, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    .line 960
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/b/d;->V:Z

    .line 962
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v4, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    if-eqz v0, :cond_b

    const/16 v3, 0x80

    :goto_3
    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    .line 963
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 964
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {v5, v3, v1}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 965
    iget v3, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    .line 967
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->O:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 968
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->O:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {v5, v3, v6}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 969
    iget v3, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    .line 971
    :cond_5
    if-eqz v0, :cond_e

    .line 972
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/b/d;->W:Z

    if-nez v0, :cond_6

    .line 973
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 974
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 976
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->Y:I

    .line 977
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/b/d;->W:Z

    .line 979
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->Y:I

    mul-int/lit8 v0, v0, 0x4

    .line 980
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/j/k;->a(I)V

    .line 981
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v3, v2, v0}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 982
    iget v3, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    .line 983
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->Y:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 984
    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v6, v3, 0x2

    .line 985
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    .line 986
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v6, :cond_8

    .line 987
    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    .line 989
    :cond_8
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 990
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v0, v2

    move v3, v2

    .line 998
    :goto_4
    iget v4, p0, Lcom/google/android/exoplayer2/c/b/d;->Y:I

    if-ge v0, v4, :cond_d

    .line 1000
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v4

    .line 1001
    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_c

    .line 1002
    iget-object v7, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    int-to-short v3, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 998
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_4

    :cond_9
    move v0, v2

    .line 953
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 955
    goto/16 :goto_2

    :cond_b
    move v3, v2

    .line 962
    goto/16 :goto_3

    .line 1005
    :cond_c
    iget-object v7, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1008
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    sub-int v0, p3, v0

    sub-int/2addr v0, v3

    .line 1009
    iget v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Y:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_12

    .line 1010
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1015
    :goto_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->P:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->P:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {v5, v0, v6}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 1017
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    .line 1024
    :cond_e
    :goto_7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/b/d;->T:Z

    .line 1026
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->M:Lcom/google/android/exoplayer2/j/k;

    .line 9109
    iget v0, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 1026
    add-int/2addr v0, p3

    .line 1028
    const-string/jumbo v3, "V_MPEG4/ISO/AVC"

    iget-object v4, p2, Lcom/google/android/exoplayer2/c/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "V_MPEGH/ISO/HEVC"

    iget-object v4, p2, Lcom/google/android/exoplayer2/c/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1033
    :cond_10
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->K:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 1034
    aput-byte v2, v3, v2

    .line 1035
    aput-byte v2, v3, v1

    .line 1036
    aput-byte v2, v3, v8

    .line 1037
    iget v1, p2, Lcom/google/android/exoplayer2/c/b/d$b;->z:I

    .line 1038
    iget v4, p2, Lcom/google/android/exoplayer2/c/b/d$b;->z:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1042
    :goto_8
    iget v6, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    if-ge v6, v0, :cond_16

    .line 1043
    iget v6, p0, Lcom/google/android/exoplayer2/c/b/d;->Z:I

    if-nez v6, :cond_14

    .line 9111
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/b/d;->M:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 9112
    add-int v7, v4, v6

    sub-int v8, v1, v6

    invoke-interface {p1, v3, v7, v8}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 9113
    if-lez v6, :cond_11

    .line 9114
    iget-object v7, p0, Lcom/google/android/exoplayer2/c/b/d;->M:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v7, v3, v4, v6}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 9116
    :cond_11
    iget v6, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    .line 1047
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/b/d;->K:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1048
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/b/d;->K:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer2/c/b/d;->Z:I

    .line 1050
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/b/d;->J:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1051
    iget-object v6, p0, Lcom/google/android/exoplayer2/c/b/d;->J:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {v5, v6, v9}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 1052
    iget v6, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    goto :goto_8

    .line 1012
    :cond_12
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1013
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_6

    .line 1020
    :cond_13
    iget-object v0, p2, Lcom/google/android/exoplayer2/c/b/d$b;->f:[B

    if-eqz v0, :cond_e

    .line 1022
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->M:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, p2, Lcom/google/android/exoplayer2/c/b/d$b;->f:[B

    iget-object v4, p2, Lcom/google/android/exoplayer2/c/b/d$b;->f:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    goto/16 :goto_7

    .line 1055
    :cond_14
    iget v6, p0, Lcom/google/android/exoplayer2/c/b/d;->Z:I

    iget v7, p0, Lcom/google/android/exoplayer2/c/b/d;->Z:I

    .line 1056
    invoke-direct {p0, p1, v5, v7}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/o;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/exoplayer2/c/b/d;->Z:I

    goto :goto_8

    .line 1060
    :cond_15
    :goto_9
    iget v1, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    if-ge v1, v0, :cond_16

    .line 1061
    iget v1, p0, Lcom/google/android/exoplayer2/c/b/d;->S:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/o;I)I

    goto :goto_9

    .line 1065
    :cond_16
    const-string/jumbo v0, "A_VORBIS"

    iget-object v1, p2, Lcom/google/android/exoplayer2/c/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->L:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1073
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->L:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {v5, v0, v9}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 1074
    iget v0, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->aa:I

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/b/d;->E:Lcom/google/android/exoplayer2/c/h;

    .line 317
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/g;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 311
    new-instance v6, Lcom/google/android/exoplayer2/c/b/e;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/c/b/e;-><init>()V

    .line 2046
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->d()J

    move-result-wide v2

    .line 2047
    cmp-long v0, v2, v10

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x400

    :goto_0
    long-to-int v7, v0

    .line 2050
    iget-object v0, v6, Lcom/google/android/exoplayer2/c/b/e;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v0, v4, v8}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 2051
    iget-object v0, v6, Lcom/google/android/exoplayer2/c/b/e;->a:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v0

    .line 2052
    iput v8, v6, Lcom/google/android/exoplayer2/c/b/e;->b:I

    .line 2053
    :goto_1
    const-wide/32 v8, 0x1a45dfa3

    cmp-long v8, v0, v8

    if-eqz v8, :cond_2

    .line 2054
    iget v8, v6, Lcom/google/android/exoplayer2/c/b/e;->b:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/google/android/exoplayer2/c/b/e;->b:I

    if-eq v8, v7, :cond_8

    .line 2057
    iget-object v8, v6, Lcom/google/android/exoplayer2/c/b/e;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v8, v8, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v8, v4, v5}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 2058
    const/16 v8, 0x8

    shl-long/2addr v0, v8

    const-wide/16 v8, -0x100

    and-long/2addr v0, v8

    .line 2059
    iget-object v8, v6, Lcom/google/android/exoplayer2/c/b/e;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v8, v8, Lcom/google/android/exoplayer2/j/k;->a:[B

    aget-byte v8, v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v0, v8

    goto :goto_1

    :cond_1
    move-wide v0, v2

    .line 2047
    goto :goto_0

    .line 2063
    :cond_2
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/c/b/e;->a(Lcom/google/android/exoplayer2/c/g;)J

    move-result-wide v0

    .line 2064
    iget v7, v6, Lcom/google/android/exoplayer2/c/b/e;->b:I

    int-to-long v8, v7

    .line 2065
    cmp-long v7, v0, v12

    if-eqz v7, :cond_3

    cmp-long v7, v2, v10

    if-eqz v7, :cond_5

    add-long v10, v8, v0

    cmp-long v2, v10, v2

    if-ltz v2, :cond_5

    :cond_3
    move v0, v4

    .line 2085
    :goto_2
    return v0

    .line 2080
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-eqz v7, :cond_5

    .line 2081
    long-to-int v7, v2

    invoke-interface {p1, v7}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    .line 2082
    iget v7, v6, Lcom/google/android/exoplayer2/c/b/e;->b:I

    int-to-long v10, v7

    add-long/2addr v2, v10

    long-to-int v2, v2

    iput v2, v6, Lcom/google/android/exoplayer2/c/b/e;->b:I

    .line 2071
    :cond_5
    iget v2, v6, Lcom/google/android/exoplayer2/c/b/e;->b:I

    int-to-long v2, v2

    add-long v10, v8, v0

    cmp-long v2, v2, v10

    if-gez v2, :cond_7

    .line 2072
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/c/b/e;->a(Lcom/google/android/exoplayer2/c/g;)J

    move-result-wide v2

    .line 2073
    cmp-long v2, v2, v12

    if-eqz v2, :cond_8

    .line 2076
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/c/b/e;->a(Lcom/google/android/exoplayer2/c/g;)J

    move-result-wide v2

    .line 2077
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-ltz v7, :cond_6

    const-wide/32 v10, 0x7fffffff

    cmp-long v7, v2, v10

    if-lez v7, :cond_4

    :cond_6
    move v0, v4

    .line 2078
    goto :goto_2

    .line 2085
    :cond_7
    iget v2, v6, Lcom/google/android/exoplayer2/c/b/e;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v8

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    move v0, v5

    goto :goto_2

    :cond_8
    move v0, v4

    .line 311
    goto :goto_2
.end method

.method public final b(J)V
    .locals 2

    .prologue
    .line 321
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/b/d;->q:J

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/b/d;->u:I

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->I:Lcom/google/android/exoplayer2/c/b/b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/b/b;->a()V

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d;->b:Lcom/google/android/exoplayer2/c/b/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/b/f;->a()V

    .line 325
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/b/d;->b()V

    .line 326
    return-void
.end method
