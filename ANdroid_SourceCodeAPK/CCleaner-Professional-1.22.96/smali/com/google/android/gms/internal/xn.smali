.class public final Lcom/google/android/gms/internal/xn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xm;


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
.method public final a()Lcom/google/android/gms/internal/aeh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method