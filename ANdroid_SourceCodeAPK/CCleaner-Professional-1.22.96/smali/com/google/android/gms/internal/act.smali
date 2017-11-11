.class public final Lcom/google/android/gms/internal/act;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/acv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/aeh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aee;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {p1}, Lcom/google/android/gms/internal/aea;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/act$1;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/act$1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/aee;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/adi;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/aeh;

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/aeh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmk;",
            ")",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aef;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzmk;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
