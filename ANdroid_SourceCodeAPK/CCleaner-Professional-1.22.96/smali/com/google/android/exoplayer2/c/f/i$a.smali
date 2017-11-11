.class final Lcom/google/android/exoplayer2/c/f/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/f/i$a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/c/o;

.field final b:Z

.field final c:Z

.field final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/j/i$b;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/j/i$a;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/google/android/exoplayer2/j/l;

.field g:[B

.field h:I

.field i:I

.field j:J

.field k:Z

.field l:J

.field m:Lcom/google/android/exoplayer2/c/f/i$a$a;

.field n:Lcom/google/android/exoplayer2/c/f/i$a$a;

.field o:Z

.field p:J

.field q:J

.field r:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c/o;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/i$a;->a:Lcom/google/android/exoplayer2/c/o;

    .line 244
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/c/f/i$a;->b:Z

    .line 245
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/c/f/i$a;->c:Z

    .line 246
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->d:Landroid/util/SparseArray;

    .line 247
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->e:Landroid/util/SparseArray;

    .line 248
    new-instance v0, Lcom/google/android/exoplayer2/c/f/i$a$a;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/c/f/i$a$a;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->m:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 249
    new-instance v0, Lcom/google/android/exoplayer2/c/f/i$a$a;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/c/f/i$a$a;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 250
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->g:[B

    .line 251
    new-instance v0, Lcom/google/android/exoplayer2/j/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/i$a;->g:[B

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/j/l;-><init>([BII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    .line 252
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/f/i$a;->a()V

    .line 253
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->k:Z

    .line 269
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->o:Z

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/i$a$a;->a()V

    .line 271
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/i$a;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/j/i$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 265
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/i$b;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/i$a;->d:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/j/i$b;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 261
    return-void
.end method
