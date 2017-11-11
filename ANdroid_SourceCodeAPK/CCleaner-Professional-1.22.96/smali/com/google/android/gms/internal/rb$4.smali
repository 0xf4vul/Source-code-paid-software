.class final Lcom/google/android/gms/internal/rb$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aek$c",
        "<",
        "Lcom/google/android/gms/internal/xi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/rb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$4;->a:Lcom/google/android/gms/internal/rb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/xi;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/rb$4;->a:Lcom/google/android/gms/internal/rb;

    .line 2000
    const-string/jumbo v1, "/visibilityChanged"

    iget-object v2, v0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v1, "/untrackActiveViewUnit"

    iget-object v2, v0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v1, "/updateActiveView"

    iget-object v2, v0, Lcom/google/android/gms/internal/rb;->c:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/acq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/logScionEvent"

    iget-object v0, v0, Lcom/google/android/gms/internal/rb;->f:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    .line 0
    :cond_0
    return-void
.end method
