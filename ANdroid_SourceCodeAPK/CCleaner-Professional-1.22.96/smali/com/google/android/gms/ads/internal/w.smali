.class public final Lcom/google/android/gms/ads/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/w$a;
    }
.end annotation


# instance fields
.field A:Lcom/google/android/gms/internal/abt;

.field B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field C:Lcom/google/android/gms/ads/internal/purchase/k;

.field public D:Lcom/google/android/gms/internal/adc;

.field E:Landroid/view/View;

.field public F:I

.field G:Z

.field H:Z

.field I:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/acx;",
            ">;"
        }
    .end annotation
.end field

.field J:Z

.field K:Z

.field L:Z

.field private M:I

.field private N:I

.field private O:Lcom/google/android/gms/internal/adu;

.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/internal/ej;

.field public final e:Lcom/google/android/gms/internal/zzqh;

.field f:Lcom/google/android/gms/ads/internal/w$a;

.field public g:Lcom/google/android/gms/internal/ade;

.field public h:Lcom/google/android/gms/internal/adl;

.field public i:Lcom/google/android/gms/internal/zzeg;

.field public j:Lcom/google/android/gms/internal/acw;

.field public k:Lcom/google/android/gms/internal/acw$a;

.field public l:Lcom/google/android/gms/internal/acx;

.field m:Lcom/google/android/gms/internal/sr;

.field n:Lcom/google/android/gms/internal/ss;

.field o:Lcom/google/android/gms/internal/sy;

.field p:Lcom/google/android/gms/internal/ta;

.field q:Lcom/google/android/gms/internal/zf;

.field r:Lcom/google/android/gms/internal/zj;

.field s:Lcom/google/android/gms/internal/vo;

.field t:Lcom/google/android/gms/internal/vp;

.field u:Landroid/support/v4/h/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vq;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroid/support/v4/h/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vr;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/google/android/gms/internal/zzhc;

.field x:Lcom/google/android/gms/internal/zzft;

.field y:Lcom/google/android/gms/internal/zzfc;

.field z:Lcom/google/android/gms/internal/up;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/w;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;B)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/w;->D:Lcom/google/android/gms/internal/adc;

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/w;->E:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/w;->F:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->G:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->H:Z

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/w;->I:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/w;->M:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/w;->N:I

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/w;->J:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/w;->K:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->L:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ud;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acz;->e()Lcom/google/android/gms/internal/uf;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ud;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/internal/zzqh;->b:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/internal/zzqh;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/acz;->e()Lcom/google/android/gms/internal/uf;

    move-result-object v1

    .line 1000
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/uf;->c:Ljava/util/LinkedHashMap;

    const-string/jumbo v2, "e"

    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->a:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzeg;->h:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    new-instance v0, Lcom/google/android/gms/internal/ej;

    new-instance v1, Lcom/google/android/gms/ads/internal/j;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/j;-><init>(Lcom/google/android/gms/ads/internal/w;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ej;-><init>(Lcom/google/android/gms/internal/cn;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/internal/ej;

    new-instance v0, Lcom/google/android/gms/internal/adu;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/adu;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->O:Lcom/google/android/gms/internal/adu;

    new-instance v0, Landroid/support/v4/h/k;

    invoke-direct {v0}, Landroid/support/v4/h/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/h/k;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/w$a;

    iget-object v3, p4, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/w$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget v1, p2, Lcom/google/android/gms/internal/zzeg;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget v1, p2, Lcom/google/android/gms/internal/zzeg;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->O:Lcom/google/android/gms/internal/adu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adu;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aes;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/w$a;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    aget v4, v2, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/aea;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    aget v2, v2, v0

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/aea;->b(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/w;->M:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/w;->N:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/w;->M:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/w;->N:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v2, v2, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/w;->M:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/w;->N:I

    if-nez p1, :cond_6

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/aes;->a(IIZ)V

    .line 2000
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/ads/internal/w$a;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-eq v0, v4, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/w;->J:Z

    :cond_5
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/w;->K:Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 0
    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->destroy()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/w;->F:I

    if-nez v0, :cond_0

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->stopLoading()V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->g:Lcom/google/android/gms/internal/ade;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->g:Lcom/google/android/gms/internal/ade;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->b()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/internal/adl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/internal/adl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/adl;->b()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yb;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/w;->F:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/w;->F:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/w;->b(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/w;->b(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->L:Z

    return-void
.end method
