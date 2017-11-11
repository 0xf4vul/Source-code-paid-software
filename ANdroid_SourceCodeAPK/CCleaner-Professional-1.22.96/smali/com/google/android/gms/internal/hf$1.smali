.class final Lcom/google/android/gms/internal/hf$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hf;->a(ZLcom/google/android/gms/internal/ij$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ij$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ij$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hf$1;->a:Lcom/google/android/gms/internal/ij$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 0
    .line 1000
    instance-of v0, p1, Lcom/google/firebase/a;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/nb;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/hf$1;->a:Lcom/google/android/gms/internal/ij$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ij$a;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/hf$1;->a:Lcom/google/android/gms/internal/ij$a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ij$a;->b(Ljava/lang/String;)V

    goto :goto_1
.end method
