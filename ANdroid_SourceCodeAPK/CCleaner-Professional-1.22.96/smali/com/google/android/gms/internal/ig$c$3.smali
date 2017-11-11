.class final Lcom/google/android/gms/internal/ig$c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ig$c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ig$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ig$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ig$c$3;->a:Lcom/google/android/gms/internal/ig$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c$3;->a:Lcom/google/android/gms/internal/ig$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c$3;->a:Lcom/google/android/gms/internal/ig$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    const-string/jumbo v1, "closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1000
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ig$c$3;->a:Lcom/google/android/gms/internal/ig$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ig$c;->a:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->f(Lcom/google/android/gms/internal/ig;)V

    return-void
.end method
