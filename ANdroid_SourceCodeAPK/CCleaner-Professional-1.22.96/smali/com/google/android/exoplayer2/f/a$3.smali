.class final Lcom/google/android/exoplayer2/f/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/f/a$b;

.field final synthetic b:Lcom/google/android/exoplayer2/f/a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/f/a;Lcom/google/android/exoplayer2/f/a$b;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a$3;->b:Lcom/google/android/exoplayer2/f/a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/f/a$3;->a:Lcom/google/android/exoplayer2/f/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$3;->a:Lcom/google/android/exoplayer2/f/a$b;

    .line 1685
    iget-object v1, v0, Lcom/google/android/exoplayer2/f/a$b;->a:Lcom/google/android/exoplayer2/c/f;

    if-eqz v1, :cond_0

    .line 1687
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/f/a$b;->a:Lcom/google/android/exoplayer2/c/f;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$3;->b:Lcom/google/android/exoplayer2/f/a;

    .line 2049
    iget-object v0, v0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    .line 144
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 145
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$3;->b:Lcom/google/android/exoplayer2/f/a;

    .line 3049
    iget-object v0, v0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    .line 146
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d;->a()V

    .line 145
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method
