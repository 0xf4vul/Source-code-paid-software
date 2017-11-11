.class final Lcom/google/android/gms/internal/iw$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ij$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$4;->a:Lcom/google/android/gms/internal/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$4;->a:Lcom/google/android/gms/internal/iw;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    const-string/jumbo v1, "Auth token changed, triggering auth token refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1000
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$4;->a:Lcom/google/android/gms/internal/iw;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw;->c(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/ic;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ic;->c(Ljava/lang/String;)V

    return-void
.end method
