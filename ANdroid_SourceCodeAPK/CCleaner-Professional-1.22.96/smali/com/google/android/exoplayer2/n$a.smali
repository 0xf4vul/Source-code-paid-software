.class final Lcom/google/android/exoplayer2/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/a/c;
.implements Lcom/google/android/exoplayer2/e/c$a;
.implements Lcom/google/android/exoplayer2/g/k$a;
.implements Lcom/google/android/exoplayer2/h/h$a;
.implements Lcom/google/android/exoplayer2/k/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "Lcom/google/android/exoplayer2/a/c;",
        "Lcom/google/android/exoplayer2/e/c$a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/exoplayer2/e/a/e;",
        ">;>;",
        "Lcom/google/android/exoplayer2/g/k$a;",
        "Lcom/google/android/exoplayer2/h/h$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/android/exoplayer2/k/e;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/n;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/n;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/n;B)V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n$a;-><init>(Lcom/google/android/exoplayer2/n;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 23057
    iput p1, v0, Lcom/google/android/exoplayer2/n;->p:I

    .line 736
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 24057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/a/c;

    .line 736
    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 25057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/a/c;

    .line 737
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a/c;->a(I)V

    .line 739
    :cond_0
    return-void
.end method

.method public final a(IIIF)V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 7057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 694
    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 8057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 695
    invoke-interface {v0, p1, p2, p4}, Lcom/google/android/exoplayer2/n$b;->a(IIF)V

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 9057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 698
    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 10057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 699
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/k/e;->a(IIIF)V

    .line 702
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 11057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 706
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 12057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->h:Landroid/view/Surface;

    .line 706
    if-ne v0, p1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 13057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 707
    invoke-interface {v0}, Lcom/google/android/exoplayer2/n$b;->a()V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 14057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 709
    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 15057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 710
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/k/e;->a(Landroid/view/Surface;)V

    .line 712
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 4057
    iput-object p1, v0, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/Format;

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 5057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 679
    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 6057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 680
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/k/e;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 682
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/b/d;)V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 1057
    iput-object p1, v0, Lcom/google/android/exoplayer2/n;->n:Lcom/google/android/exoplayer2/b/d;

    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 2057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 662
    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 3057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 663
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/k/e;->a(Lcom/google/android/exoplayer2/b/d;)V

    .line 665
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/h/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/h/g",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 838
    move v0, v1

    .line 839
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 39057
    iget-object v2, v2, Lcom/google/android/exoplayer2/n;->b:[Lcom/google/android/exoplayer2/l;

    .line 839
    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 40057
    iget-object v2, v2, Lcom/google/android/exoplayer2/n;->b:[Lcom/google/android/exoplayer2/l;

    .line 840
    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/l;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 41056
    iget-object v2, p1, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    aget-object v2, v2, v0

    .line 840
    if-eqz v2, :cond_2

    .line 841
    const/4 v1, 0x1

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 41057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 845
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 42057
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n;->e:Z

    .line 845
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 846
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 43057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 846
    invoke-interface {v0}, Lcom/google/android/exoplayer2/n$b;->b()V

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 44057
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/n;->e:Z

    .line 849
    return-void

    .line 839
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 34057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->j:Lcom/google/android/exoplayer2/g/k$a;

    .line 780
    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 35057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->j:Lcom/google/android/exoplayer2/g/k$a;

    .line 781
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/g/k$a;->a(Ljava/util/List;)V

    .line 783
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 26057
    iput-object p1, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/Format;

    .line 753
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 27057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/a/c;

    .line 753
    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 28057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/a/c;

    .line 754
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a/c;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 756
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/b/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 716
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 16057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 716
    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 17057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/k/e;

    .line 717
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/k/e;->b(Lcom/google/android/exoplayer2/b/d;)V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 18057
    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/Format;

    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 19057
    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->n:Lcom/google/android/exoplayer2/b/d;

    .line 721
    return-void
.end method

.method public final c(Lcom/google/android/exoplayer2/b/d;)V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 20057
    iput-object p1, v0, Lcom/google/android/exoplayer2/n;->o:Lcom/google/android/exoplayer2/b/d;

    .line 728
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 21057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/a/c;

    .line 728
    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 22057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/a/c;

    .line 729
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a/c;->c(Lcom/google/android/exoplayer2/b/d;)V

    .line 731
    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/exoplayer2/b/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 768
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 29057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/a/c;

    .line 768
    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 30057
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/a/c;

    .line 769
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a/c;->d(Lcom/google/android/exoplayer2/b/d;)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 31057
    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/Format;

    .line 772
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 32057
    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->o:Lcom/google/android/exoplayer2/b/d;

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 33057
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/exoplayer2/n;->p:I

    .line 774
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/n;Landroid/view/Surface;)V

    .line 816
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 825
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 38057
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    .line 826
    return v2
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 804
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 36057
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    .line 799
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/n;

    .line 37057
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    .line 809
    return-void
.end method
