.class final Lcom/google/android/gms/internal/ig$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ig$2;->a:Lcom/google/android/gms/internal/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$2;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->h(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/ig$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$2;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->h(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/ig$b;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ig$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$2;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->d(Lcom/google/android/gms/internal/ig;)V

    :cond_0
    return-void
.end method
