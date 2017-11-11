.class public abstract Lcom/google/firebase/auth/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)Lcom/google/firebase/auth/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/k;",
            ">;)",
            "Lcom/google/firebase/auth/i;"
        }
    .end annotation
.end method

.method public abstract a(Z)Lcom/google/firebase/auth/i;
.end method

.method public abstract a(Lcom/google/android/gms/internal/zzbmn;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/k;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Lcom/google/android/gms/internal/zzbmn;
.end method

.method public abstract f()Ljava/lang/String;
.end method
