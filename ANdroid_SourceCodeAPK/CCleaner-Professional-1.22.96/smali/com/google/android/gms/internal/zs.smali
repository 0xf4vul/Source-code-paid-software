.class public Lcom/google/android/gms/internal/zs;
.super Lcom/google/android/gms/internal/zp;

# interfaces
.implements Lcom/google/android/gms/internal/aes$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/zr$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/zr$a;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zs;->e:Lcom/google/android/gms/internal/zzmn;

    iget v0, v0, Lcom/google/android/gms/internal/zzmn;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zs;->c:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    .line 1000
    iput-object p0, v0, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zs;->d()V

    const-string/jumbo v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zs;->c:Lcom/google/android/gms/internal/aer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zs;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zs;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->c:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/aer;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected d()V
    .locals 0

    return-void
.end method
