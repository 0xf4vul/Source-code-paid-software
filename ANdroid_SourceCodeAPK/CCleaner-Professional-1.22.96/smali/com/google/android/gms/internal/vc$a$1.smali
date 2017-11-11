.class final Lcom/google/android/gms/internal/vc$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vc$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xi;

.field final synthetic b:Lcom/google/android/gms/internal/vc$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vc$a;Lcom/google/android/gms/internal/xi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vc$a$1;->b:Lcom/google/android/gms/internal/vc$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/vc$a$1;->a:Lcom/google/android/gms/internal/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/vc$a$1;->b:Lcom/google/android/gms/internal/vc$a;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/vc$a;->a:Ljava/lang/ref/WeakReference;

    .line 0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vc$a$1;->a:Lcom/google/android/gms/internal/xi;

    const-string/jumbo v1, "/loadHtml"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/vc$a$1$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/vc$a$1$1;-><init>(Lcom/google/android/gms/internal/vc$a$1;Ljava/util/Map;)V

    .line 2000
    iput-object v2, v1, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    .line 0
    const-string/jumbo v1, "overlayHtml"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v1, "baseUrl"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "text/html"

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/aer;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/aer;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
