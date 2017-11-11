.class final Lcom/google/android/exoplayer2/f/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/f/a;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f;[Lcom/google/android/exoplayer2/c/f;ILandroid/os/Handler;Lcom/google/android/exoplayer2/f/b$a;Lcom/google/android/exoplayer2/f/d$a;Lcom/google/android/exoplayer2/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/f/a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/f/a;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a$1;->a:Lcom/google/android/exoplayer2/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v3, p0, Lcom/google/android/exoplayer2/f/a$1;->a:Lcom/google/android/exoplayer2/f/a;

    .line 1397
    iget-boolean v0, v3, Lcom/google/android/exoplayer2/f/a;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, v3, Lcom/google/android/exoplayer2/f/a;->k:Z

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    if-eqz v0, :cond_0

    iget-boolean v0, v3, Lcom/google/android/exoplayer2/f/a;->j:Z

    if-nez v0, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    iget-object v0, v3, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v2

    .line 1401
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1402
    iget-object v0, v3, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    .line 2211
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d$b;->c()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_0

    .line 1401
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1406
    :cond_2
    iget-object v0, v3, Lcom/google/android/exoplayer2/f/a;->d:Lcom/google/android/exoplayer2/j/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/d;->b()Z

    .line 1407
    new-array v5, v4, [Lcom/google/android/exoplayer2/f/h;

    .line 1408
    new-array v0, v4, [Z

    iput-object v0, v3, Lcom/google/android/exoplayer2/f/a;->o:[Z

    .line 1409
    iget-object v0, v3, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/m;->e_()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/google/android/exoplayer2/f/a;->n:J

    move v1, v2

    .line 1410
    :goto_2
    if-ge v1, v4, :cond_3

    .line 1411
    new-instance v6, Lcom/google/android/exoplayer2/f/h;

    new-array v7, v8, [Lcom/google/android/exoplayer2/Format;

    iget-object v0, v3, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    .line 3211
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d$b;->c()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 1411
    aput-object v0, v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/f/h;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v6, v5, v1

    .line 1410
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1413
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/f/i;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/f/i;-><init>([Lcom/google/android/exoplayer2/f/h;)V

    iput-object v0, v3, Lcom/google/android/exoplayer2/f/a;->m:Lcom/google/android/exoplayer2/f/i;

    .line 1414
    iput-boolean v8, v3, Lcom/google/android/exoplayer2/f/a;->k:Z

    .line 1415
    iget-object v0, v3, Lcom/google/android/exoplayer2/f/a;->a:Lcom/google/android/exoplayer2/f/d$a;

    new-instance v1, Lcom/google/android/exoplayer2/f/g;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/f/a;->n:J

    iget-object v2, v3, Lcom/google/android/exoplayer2/f/a;->i:Lcom/google/android/exoplayer2/c/m;

    .line 1416
    invoke-interface {v2}, Lcom/google/android/exoplayer2/c/m;->a()Z

    move-result v2

    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/f/g;-><init>(JZ)V

    .line 1415
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/f/d$a;->a(Lcom/google/android/exoplayer2/o;)V

    .line 1417
    iget-object v0, v3, Lcom/google/android/exoplayer2/f/a;->h:Lcom/google/android/exoplayer2/f/c$a;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/f/c$a;->a(Lcom/google/android/exoplayer2/f/c;)V

    goto :goto_0
.end method
