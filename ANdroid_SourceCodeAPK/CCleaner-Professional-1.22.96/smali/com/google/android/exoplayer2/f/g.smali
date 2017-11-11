.class public final Lcom/google/android/exoplayer2/f/g;
.super Lcom/google/android/exoplayer2/o;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:Z

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/f/g;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JJZ)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;-><init>()V

    .line 63
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f/g;->b:J

    .line 64
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f/g;->c:J

    .line 65
    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/g;->d:J

    .line 66
    iput-wide v0, p0, Lcom/google/android/exoplayer2/f/g;->e:J

    .line 67
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/f/g;->f:Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f/g;->g:Z

    .line 69
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 7

    .prologue
    .line 44
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/f/g;-><init>(JJZ)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/android/exoplayer2/f/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;
    .locals 6

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(I)I

    .line 92
    if-eqz p3, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/f/g;->a:Ljava/lang/Object;

    .line 93
    :goto_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/f/g;->b:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/f/g;->d:J

    neg-long v4, v4

    .line 1314
    iput-object v0, p2, Lcom/google/android/exoplayer2/o$a;->a:Ljava/lang/Object;

    .line 1315
    iput-object v0, p2, Lcom/google/android/exoplayer2/o$a;->b:Ljava/lang/Object;

    .line 1316
    const/4 v0, 0x0

    iput v0, p2, Lcom/google/android/exoplayer2/o$a;->c:I

    .line 1317
    iput-wide v2, p2, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 1318
    iput-wide v4, p2, Lcom/google/android/exoplayer2/o$a;->e:J

    .line 93
    return-object p2

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;
    .locals 12

    .prologue
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    .line 78
    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(I)I

    .line 80
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f/g;->f:Z

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/f/g;->g:Z

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f/g;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/f/g;->c:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/f/g;->d:J

    .line 1219
    const/4 v8, 0x0

    iput-object v8, p2, Lcom/google/android/exoplayer2/o$b;->a:Ljava/lang/Object;

    .line 1220
    iput-wide v10, p2, Lcom/google/android/exoplayer2/o$b;->b:J

    .line 1221
    iput-wide v10, p2, Lcom/google/android/exoplayer2/o$b;->c:J

    .line 1222
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/o$b;->d:Z

    .line 1223
    iput-boolean v1, p2, Lcom/google/android/exoplayer2/o$b;->e:Z

    .line 1224
    iput-wide v2, p2, Lcom/google/android/exoplayer2/o$b;->h:J

    .line 1225
    iput-wide v4, p2, Lcom/google/android/exoplayer2/o$b;->i:J

    .line 1226
    iput v9, p2, Lcom/google/android/exoplayer2/o$b;->f:I

    .line 1227
    iput v9, p2, Lcom/google/android/exoplayer2/o$b;->g:I

    .line 1228
    iput-wide v6, p2, Lcom/google/android/exoplayer2/o$b;->j:J

    .line 80
    return-object p2
.end method
