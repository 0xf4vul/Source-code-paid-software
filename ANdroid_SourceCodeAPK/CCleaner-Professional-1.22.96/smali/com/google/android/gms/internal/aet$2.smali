.class final Lcom/google/android/gms/internal/aet$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aet;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/aer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/aer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/zzeg;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/internal/ej;

.field final synthetic f:Lcom/google/android/gms/internal/zzqh;

.field final synthetic g:Lcom/google/android/gms/internal/ul;

.field final synthetic h:Lcom/google/android/gms/ads/internal/t;

.field final synthetic i:Lcom/google/android/gms/ads/internal/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aet$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aet$2;->b:Lcom/google/android/gms/internal/zzeg;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/aet$2;->c:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/aet$2;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/aet$2;->e:Lcom/google/android/gms/internal/ej;

    iput-object p6, p0, Lcom/google/android/gms/internal/aet$2;->f:Lcom/google/android/gms/internal/zzqh;

    iput-object p7, p0, Lcom/google/android/gms/internal/aet$2;->g:Lcom/google/android/gms/internal/ul;

    iput-object p8, p0, Lcom/google/android/gms/internal/aet$2;->h:Lcom/google/android/gms/ads/internal/t;

    iput-object p9, p0, Lcom/google/android/gms/internal/aet$2;->i:Lcom/google/android/gms/ads/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    new-instance v8, Lcom/google/android/gms/internal/aeu;

    iget-object v0, p0, Lcom/google/android/gms/internal/aet$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/aet$2;->b:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aet$2;->c:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/aet$2;->e:Lcom/google/android/gms/internal/ej;

    iget-object v4, p0, Lcom/google/android/gms/internal/aet$2;->f:Lcom/google/android/gms/internal/zzqh;

    iget-object v5, p0, Lcom/google/android/gms/internal/aet$2;->g:Lcom/google/android/gms/internal/ul;

    iget-object v6, p0, Lcom/google/android/gms/internal/aet$2;->h:Lcom/google/android/gms/ads/internal/t;

    iget-object v7, p0, Lcom/google/android/gms/internal/aet$2;->i:Lcom/google/android/gms/ads/internal/e;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/aew;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZLcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/aew;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/aeu;-><init>(Lcom/google/android/gms/internal/aer;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aet$2;->d:Z

    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/adk;->a(Lcom/google/android/gms/internal/aer;Z)Lcom/google/android/gms/internal/aes;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/aer;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/adk;->c(Lcom/google/android/gms/internal/aer;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/aer;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 0
    return-object v8
.end method
