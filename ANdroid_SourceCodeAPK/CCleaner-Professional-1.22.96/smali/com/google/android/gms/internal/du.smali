.class public final Lcom/google/android/gms/internal/du;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/du;->a:Landroid/content/Context;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/internal/dv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dv;-><init>(Lcom/google/android/gms/internal/dq;)V

    return-object v0
.end method

.method static b(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/internal/dx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dx;-><init>(Lcom/google/android/gms/internal/dq;)V

    return-object v0
.end method

.method static c(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/internal/eb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/eb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/eb;-><init>(Lcom/google/android/gms/internal/dq;)V

    return-object v0
.end method
