.class final Lcom/google/android/gms/ads/internal/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/acw$a;

.field final synthetic b:Lcom/google/android/gms/internal/acn;

.field final synthetic c:Lcom/google/android/gms/internal/ul;

.field final synthetic d:Lcom/google/android/gms/ads/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/internal/acw$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->b:Lcom/google/android/gms/internal/acn;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/c$3;->c:Lcom/google/android/gms/internal/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->z:Lcom/google/android/gms/internal/up;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/internal/acw$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/um;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/internal/acw$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmn;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/um;-><init>(Lcom/google/android/gms/ads/internal/i;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iput v4, v0, Lcom/google/android/gms/ads/internal/w;->F:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/c;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->z:Lcom/google/android/gms/internal/up;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/up;->a(Lcom/google/android/gms/internal/uo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iput-boolean v4, v0, Lcom/google/android/gms/ads/internal/c;->d:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/internal/acw$a;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/internal/acw$a;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c$3;->b:Lcom/google/android/gms/internal/acn;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/acn;)Lcom/google/android/gms/internal/aer;

    move-result-object v4

    new-instance v1, Lcom/google/android/gms/ads/internal/c$3$1;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/c$3$1;-><init>(Lcom/google/android/gms/ads/internal/f;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/aer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/c$3$2;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/c$3$2;-><init>(Lcom/google/android/gms/ads/internal/f;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/aer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iput v5, v0, Lcom/google/android/gms/ads/internal/w;->F:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->d()Lcom/google/android/gms/internal/zr;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/internal/acw$a;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/internal/ej;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/c;->j:Lcom/google/android/gms/internal/ya;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/c$3;->c:Lcom/google/android/gms/internal/ul;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zr;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zr$a;Lcom/google/android/gms/internal/ul;)Lcom/google/android/gms/internal/adl;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/internal/adl;

    goto :goto_0
.end method
