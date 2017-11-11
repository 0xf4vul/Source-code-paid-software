.class public final Lcom/google/android/gms/internal/abk;
.super Lcom/google/android/gms/internal/abh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/abh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/abb;)V
    .locals 1

    .prologue
    .line 0
    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/abb;->e:Lcom/google/android/gms/internal/xh$c;

    .line 1000
    if-eqz v0, :cond_0

    .line 3000
    iget-object v0, p1, Lcom/google/android/gms/internal/abb;->e:Lcom/google/android/gms/internal/xh$c;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$c;->l_()V

    .line 0
    :cond_0
    return-void
.end method
