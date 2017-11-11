.class final Lcom/google/android/gms/internal/zz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/internal/aee;

.field final synthetic c:Lcom/google/android/gms/internal/zz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zz;Lorg/json/JSONObject;Lcom/google/android/gms/internal/aee;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zz$1;->c:Lcom/google/android/gms/internal/zz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zz$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zz$1;->b:Lcom/google/android/gms/internal/aee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 0
    :try_start_0
    iget-object v8, p0, Lcom/google/android/gms/internal/zz$1;->c:Lcom/google/android/gms/internal/zz;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->f()Lcom/google/android/gms/internal/aet;

    iget-object v0, v8, Lcom/google/android/gms/internal/zz;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/zzeg;->a()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/google/android/gms/internal/zz;->b:Lcom/google/android/gms/internal/ej;

    iget-object v5, v8, Lcom/google/android/gms/internal/zz;->c:Lcom/google/android/gms/internal/acw$a;

    iget-object v5, v5, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzmk;->k:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, v8, Lcom/google/android/gms/internal/zz;->d:Lcom/google/android/gms/internal/ul;

    const/4 v7, 0x0

    iget-object v8, v8, Lcom/google/android/gms/internal/zz;->e:Lcom/google/android/gms/ads/internal/r;

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/r;->g()Lcom/google/android/gms/ads/internal/e;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/aet;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/aer;

    move-result-object v1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zz$1;->c:Lcom/google/android/gms/internal/zz;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zz;->e:Lcom/google/android/gms/ads/internal/r;

    .line 3000
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/internal/aer;

    .line 0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zz$1;->c:Lcom/google/android/gms/internal/zz;

    .line 5000
    iget-object v4, v3, Lcom/google/android/gms/internal/zz;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v4, :cond_0

    new-instance v4, Lcom/google/android/gms/internal/zz$3;

    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/internal/zz$3;-><init>(Lcom/google/android/gms/internal/zz;Ljava/lang/ref/WeakReference;)V

    iput-object v4, v3, Lcom/google/android/gms/internal/zz;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/zz;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/internal/zz$1;->c:Lcom/google/android/gms/internal/zz;

    .line 7000
    iget-object v5, v4, Lcom/google/android/gms/internal/zz;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/zz$4;

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/zz$4;-><init>(Lcom/google/android/gms/internal/zz;Ljava/lang/ref/WeakReference;)V

    iput-object v5, v4, Lcom/google/android/gms/internal/zz;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_1
    iget-object v0, v4, Lcom/google/android/gms/internal/zz;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 0
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/aes;->a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zz$1;->c:Lcom/google/android/gms/internal/zz;

    .line 9000
    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v2

    const-string/jumbo v3, "/video"

    sget-object v4, Lcom/google/android/gms/internal/wa;->n:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v3, "/videoMeta"

    sget-object v4, Lcom/google/android/gms/internal/wa;->o:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v3, "/precache"

    sget-object v4, Lcom/google/android/gms/internal/wa;->q:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v3, "/delayPageLoaded"

    sget-object v4, Lcom/google/android/gms/internal/wa;->t:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v3, "/instrument"

    sget-object v4, Lcom/google/android/gms/internal/wa;->r:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v3, "/log"

    sget-object v4, Lcom/google/android/gms/internal/wa;->i:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v3, "/videoClicked"

    sget-object v4, Lcom/google/android/gms/internal/wa;->j:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v3, "/trackActiveViewUnit"

    new-instance v4, Lcom/google/android/gms/internal/zz$2;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zz$2;-><init>(Lcom/google/android/gms/internal/zz;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zz$1$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zz$1$1;-><init>(Lcom/google/android/gms/internal/zz$1;Lcom/google/android/gms/internal/aer;)V

    .line 10000
    iput-object v2, v0, Lcom/google/android/gms/internal/aes;->d:Lcom/google/android/gms/internal/aes$b;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zz$1$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zz$1$2;-><init>(Lcom/google/android/gms/internal/zz$1;)V

    .line 11000
    iput-object v2, v0, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ud;->cf:Lcom/google/android/gms/internal/ty;

    .line 12000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/aer;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zz$1;->b:Lcom/google/android/gms/internal/aee;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/aee;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
