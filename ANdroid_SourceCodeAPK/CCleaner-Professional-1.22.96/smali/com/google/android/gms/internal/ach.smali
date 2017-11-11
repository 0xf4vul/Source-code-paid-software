.class public final Lcom/google/android/gms/internal/ach;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/yb;

.field public final b:Lcom/google/android/gms/internal/ace;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/yb;Lcom/google/android/gms/internal/acd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ach;->a:Lcom/google/android/gms/internal/yb;

    new-instance v0, Lcom/google/android/gms/internal/ace;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ace;-><init>(Lcom/google/android/gms/internal/acd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ach;->b:Lcom/google/android/gms/internal/ace;

    return-void
.end method
