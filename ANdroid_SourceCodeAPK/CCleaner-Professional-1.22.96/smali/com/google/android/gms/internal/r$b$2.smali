.class final Lcom/google/android/gms/internal/r$b$2;
.super Lcom/google/android/gms/internal/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/r$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/n$f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/common/internal/n$f;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/r$b$2;->a:Lcom/google/android/gms/common/internal/n$f;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/v$a;-><init>(Lcom/google/android/gms/internal/u;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/r$b$2;->a:Lcom/google/android/gms/common/internal/n$f;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/n$f;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method