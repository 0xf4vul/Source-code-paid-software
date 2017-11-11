.class final Lcom/google/android/gms/internal/vc$a$3;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/vc$a$3;->b:Lcom/google/android/gms/internal/vc$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/vc$a$3;->a:Lcom/google/android/gms/internal/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 2
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
    iget-object v0, p0, Lcom/google/android/gms/internal/vc$a$3;->b:Lcom/google/android/gms/internal/vc$a;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/vc$a;->a:Ljava/lang/ref/WeakReference;

    .line 0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vc$a$3;->a:Lcom/google/android/gms/internal/xi;

    const-string/jumbo v1, "/hideOverlay"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
