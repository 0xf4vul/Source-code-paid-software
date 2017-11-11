.class public final Lcom/google/android/gms/internal/kp;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/internal/ir;

.field final b:Lcom/google/android/gms/internal/lc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/in;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/in;->h()Lcom/google/android/gms/internal/ir;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/kp;->a:Lcom/google/android/gms/internal/ir;

    const-string/jumbo v0, "EventRaiser"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/kp;->b:Lcom/google/android/gms/internal/lc;

    return-void
.end method
