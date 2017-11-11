.class public final Lcom/google/android/exoplayer2/i/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/i/p$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/exoplayer2/i/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/i/n;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i/r;B)V

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i/r;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/f;",
            ">;B)V"
        }
    .end annotation

    .prologue
    const/16 v0, 0x1f40

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/i/n;->a:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/google/android/exoplayer2/i/n;->b:Lcom/google/android/exoplayer2/i/r;

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/i/n;->c:I

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/i/n;->d:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i/n;->e:Z

    .line 75
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/exoplayer2/i/f;
    .locals 6

    .prologue
    .line 21
    .line 1079
    new-instance v0, Lcom/google/android/exoplayer2/i/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i/n;->b:Lcom/google/android/exoplayer2/i/r;

    iget v3, p0, Lcom/google/android/exoplayer2/i/n;->c:I

    iget v4, p0, Lcom/google/android/exoplayer2/i/n;->d:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/i/n;->e:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/i/m;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i/r;IIZ)V

    .line 21
    return-object v0
.end method
