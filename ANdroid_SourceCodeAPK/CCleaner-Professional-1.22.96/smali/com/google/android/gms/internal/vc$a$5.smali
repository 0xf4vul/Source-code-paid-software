.class final Lcom/google/android/gms/internal/vc$a$5;
.super Lcom/google/android/gms/internal/zx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vc$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/vc$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vc$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vc$a$5;->a:Lcom/google/android/gms/internal/vc$a;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zx$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/xi;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/vc$a$5;->a:Lcom/google/android/gms/internal/vc$a;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/vc$a;->a:Ljava/lang/ref/WeakReference;

    .line 0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "/loadHtml"

    iget-object v2, p0, Lcom/google/android/gms/internal/vc$a$5;->a:Lcom/google/android/gms/internal/vc$a;

    .line 3000
    new-instance v3, Lcom/google/android/gms/internal/vc$a$1;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/vc$a$1;-><init>(Lcom/google/android/gms/internal/vc$a;Lcom/google/android/gms/internal/xi;)V

    .line 0
    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v1, "/showOverlay"

    iget-object v2, p0, Lcom/google/android/gms/internal/vc$a$5;->a:Lcom/google/android/gms/internal/vc$a;

    .line 5000
    new-instance v3, Lcom/google/android/gms/internal/vc$a$2;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/vc$a$2;-><init>(Lcom/google/android/gms/internal/vc$a;Lcom/google/android/gms/internal/xi;)V

    .line 0
    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v1, "/hideOverlay"

    iget-object v2, p0, Lcom/google/android/gms/internal/vc$a$5;->a:Lcom/google/android/gms/internal/vc$a;

    .line 7000
    new-instance v3, Lcom/google/android/gms/internal/vc$a$3;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/vc$a$3;-><init>(Lcom/google/android/gms/internal/vc$a;Lcom/google/android/gms/internal/xi;)V

    .line 0
    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v0

    const-string/jumbo v1, "/sendMessageToSdk"

    iget-object v2, p0, Lcom/google/android/gms/internal/vc$a$5;->a:Lcom/google/android/gms/internal/vc$a;

    .line 9000
    new-instance v3, Lcom/google/android/gms/internal/vc$a$4;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/vc$a$4;-><init>(Lcom/google/android/gms/internal/vc$a;Lcom/google/android/gms/internal/xi;)V

    .line 0
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    goto :goto_0
.end method
