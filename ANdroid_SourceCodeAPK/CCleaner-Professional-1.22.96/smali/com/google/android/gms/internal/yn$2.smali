.class final Lcom/google/android/gms/internal/yn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/yn;->a(Lcom/google/ads/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/a$a;

.field final synthetic b:Lcom/google/android/gms/internal/yn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yn;Lcom/google/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yn$2;->b:Lcom/google/android/gms/internal/yn;

    iput-object p2, p0, Lcom/google/android/gms/internal/yn$2;->a:Lcom/google/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/yn$2;->b:Lcom/google/android/gms/internal/yn;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/yn;->a:Lcom/google/android/gms/internal/yc;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/yn$2;->a:Lcom/google/ads/a$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/yo;->a(Lcom/google/ads/a$a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/yc;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
