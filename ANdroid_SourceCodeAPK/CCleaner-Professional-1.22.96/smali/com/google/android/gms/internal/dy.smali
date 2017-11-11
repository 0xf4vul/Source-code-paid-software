.class public final Lcom/google/android/gms/internal/dy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dy$a;
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field public final b:Landroid/content/Context;

.field final c:Lcom/google/android/gms/internal/dy$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dy$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/dy$a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/dy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/dy;->c:Lcom/google/android/gms/internal/dy$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ee;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    return-object v0
.end method
