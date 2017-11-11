.class final Lcom/google/android/gms/ads/internal/u$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/u;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/u$a;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/u;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/u$a;-><init>(Lcom/google/android/gms/ads/internal/u;)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/u$a;->a:Lcom/google/android/gms/ads/internal/u;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/u$a;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/u;->e(Lcom/google/android/gms/ads/internal/u;)Ljava/util/concurrent/Future;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/ud;->cN:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qp;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/u;->a(Lcom/google/android/gms/ads/internal/u;Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/qp;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/u$a;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/u;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v1, "Failed to load ad data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Timed out waiting for ad data"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/u$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Ljava/lang/String;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/u$a;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/u;->f(Lcom/google/android/gms/ads/internal/u;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/u$a;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/u;->f(Lcom/google/android/gms/ads/internal/u;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 0
    :cond_0
    return-void
.end method
