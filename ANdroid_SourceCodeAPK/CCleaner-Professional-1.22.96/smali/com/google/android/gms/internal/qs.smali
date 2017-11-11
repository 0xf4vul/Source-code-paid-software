.class public final Lcom/google/android/gms/internal/qs;
.super Lcom/google/android/gms/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/c",
        "<",
        "Lcom/google/android/gms/internal/qu;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/qs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/qs;->a:Lcom/google/android/gms/internal/qs;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.ads.adshield.AdShieldCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/qt;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/j;->b()Lcom/google/android/gms/common/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/j;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/qs;->a:Lcom/google/android/gms/internal/qs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/qs;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/qt;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/qr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/qr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/qt;
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/qs;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qu;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/qu;->b(Ljava/lang/String;Lcom/google/android/gms/a/a;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/qt$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/c$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/internal/qu$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qu;

    move-result-object v0

    .line 0
    return-object v0
.end method
