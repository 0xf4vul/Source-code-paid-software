.class final Lcom/google/android/gms/internal/adq$b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/adq$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aeh;

.field final synthetic b:Lcom/google/android/gms/internal/adq$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/adq$b;Lcom/google/android/gms/internal/aeh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/adq$b$3;->b:Lcom/google/android/gms/internal/adq$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/adq$b$3;->a:Lcom/google/android/gms/internal/aeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/adq$b$3;->b:Lcom/google/android/gms/internal/adq$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/adq$b;->b(Lcom/google/android/gms/internal/adq$b;)Lcom/google/android/gms/internal/aaw$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/adq$b$3;->a:Lcom/google/android/gms/internal/aeh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aeh;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aaw$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occured while dispatching http response in getter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v1

    const-string/jumbo v2, "HttpGetter.deliverResponse.1"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/acz;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
