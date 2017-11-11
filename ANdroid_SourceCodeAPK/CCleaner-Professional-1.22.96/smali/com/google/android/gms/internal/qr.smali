.class public final Lcom/google/android/gms/internal/qr;
.super Lcom/google/android/gms/internal/qt$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ei;

.field private final b:Lcom/google/android/gms/internal/ej;

.field private final c:Lcom/google/android/gms/internal/cp;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qt$a;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qr;->d:Z

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ei;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qr;->a:Lcom/google/android/gms/internal/ei;

    new-instance v0, Lcom/google/android/gms/internal/ej;

    iget-object v1, p0, Lcom/google/android/gms/internal/qr;->a:Lcom/google/android/gms/internal/ei;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ej;-><init>(Lcom/google/android/gms/internal/cn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qr;->b:Lcom/google/android/gms/internal/ej;

    invoke-static {p2}, Lcom/google/android/gms/internal/cp;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qr;->c:Lcom/google/android/gms/internal/cp;

    return-void
.end method

.method private a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/a/a;Z)Lcom/google/android/gms/a/a;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qr;->b:Lcom/google/android/gms/internal/ej;

    .line 5000
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ej;->a(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Landroid/net/Uri;

    move-result-object v0

    .line 0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qr;->b:Lcom/google/android/gms/internal/ej;

    .line 6000
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ej;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ek; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/a;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/qr;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/a/a;Z)Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ms"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/qr;->a:Lcom/google/android/gms/internal/ei;

    .line 3000
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Lcom/google/android/gms/internal/co;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/a/a;[B)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/qr;->a:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ei;->a(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/qr;->c:Lcom/google/android/gms/internal/cp;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/qr;->d:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/qr;->c:Lcom/google/android/gms/internal/cp;

    invoke-virtual {v2, v0, p2}, Lcom/google/android/gms/internal/cp;->a(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/qr;->d:Z

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/qr;->b:Lcom/google/android/gms/internal/ej;

    .line 2000
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ej;->c:[Ljava/lang/String;

    .line 0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/qr;->b:Lcom/google/android/gms/internal/ej;

    .line 1000
    iput-object p1, v0, Lcom/google/android/gms/internal/ej;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/google/android/gms/internal/ej;->b:Ljava/lang/String;

    .line 0
    return-void
.end method

.method public final a(Lcom/google/android/gms/a/a;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/qr;->b:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/qr;->c:Lcom/google/android/gms/internal/cp;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/qr;->c:Lcom/google/android/gms/internal/cp;

    .line 4000
    iput-object v1, v2, Lcom/google/android/gms/internal/cp;->l:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/qr;->d:Z

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/a/a;Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/a;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/qr;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/a/a;Z)Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/a/a;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/qr;->b:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ej;->b(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/google/android/gms/a/a;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/qr;->a(Lcom/google/android/gms/a/a;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/a/a;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/android/gms/internal/qr;->b:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Landroid/view/MotionEvent;)V

    return-void
.end method
