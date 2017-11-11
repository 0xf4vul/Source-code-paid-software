.class public final Lcom/google/android/gms/internal/xg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/aer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/ads/internal/e;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->f()Lcom/google/android/gms/internal/aet;

    new-instance v1, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzeg;-><init>()V

    move-object v0, p1

    move v3, v2

    move-object v4, p3

    move-object v5, p2

    move-object v7, v6

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/aet;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/aer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->a()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {}, Lcom/google/android/gms/internal/aea;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->destroy()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/ads/internal/overlay/r;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1, v5}, Lcom/google/android/gms/ads/internal/f;-><init>(Landroid/content/Context;B)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v6

    move-object v9, v6

    move-object v10, v6

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/ads/internal/overlay/r;ZLcom/google/android/gms/internal/wd;Lcom/google/android/gms/internal/wf;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/yx;Lcom/google/android/gms/internal/acn;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/xe$a;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/xg$6;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/xg$6;-><init>(Lcom/google/android/gms/internal/xe$a;)V

    .line 1000
    iput-object v1, v0, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    .line 0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/xg$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/xg$3;-><init>(Lcom/google/android/gms/internal/xg;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/xg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xg$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/xg$2;-><init>(Lcom/google/android/gms/internal/xg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/xg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xg$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/xg$1;-><init>(Lcom/google/android/gms/internal/xg;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/xg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/xj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/xk;-><init>(Lcom/google/android/gms/internal/xi;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xg$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/xg$5;-><init>(Lcom/google/android/gms/internal/xg;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/xg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/aes;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/aer;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xg$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/xg$4;-><init>(Lcom/google/android/gms/internal/xg;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/xg;->a(Ljava/lang/Runnable;)V

    return-void
.end method
