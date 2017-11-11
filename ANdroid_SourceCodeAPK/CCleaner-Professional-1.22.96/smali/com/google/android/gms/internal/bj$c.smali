.class abstract Lcom/google/android/gms/internal/bj$c;
.super Lcom/google/android/gms/internal/bj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/bj$b",
        "<",
        "Lcom/google/android/gms/internal/bg$b;",
        ">;"
    }
.end annotation


# instance fields
.field protected i:Lcom/google/android/gms/internal/bq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bj$b;-><init>(Lcom/google/android/gms/common/api/c;)V

    new-instance v0, Lcom/google/android/gms/internal/bj$c$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bj$c$1;-><init>(Lcom/google/android/gms/internal/bj$c;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bj$c;->i:Lcom/google/android/gms/internal/bq;

    return-void
.end method
