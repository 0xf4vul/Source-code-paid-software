.class final Lcom/google/android/gms/internal/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/t$1;->a:Lcom/google/android/gms/internal/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/t$1;->a:Lcom/google/android/gms/internal/t;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/t;->a:Lcom/google/android/gms/internal/ac;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/t;->a:Lcom/google/android/gms/internal/ac;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 0
    goto :goto_0
.end method
