.class final Lcom/google/firebase/database/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ip;

.field final synthetic b:Lcom/google/firebase/database/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/k;Lcom/google/android/gms/internal/ip;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/k$3;->b:Lcom/google/firebase/database/k;

    iput-object p2, p0, Lcom/google/firebase/database/k$3;->a:Lcom/google/android/gms/internal/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/k$3;->b:Lcom/google/firebase/database/k;

    iget-object v1, v0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    iget-object v0, p0, Lcom/google/firebase/database/k$3;->a:Lcom/google/android/gms/internal/ip;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ip;->a()Lcom/google/android/gms/internal/kr;

    move-result-object v2

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 1000
    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/il;->a:Lcom/google/android/gms/internal/lf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/iw;->f:Lcom/google/android/gms/internal/je;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/ip;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    .line 0
    return-void

    .line 1000
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/ip;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
