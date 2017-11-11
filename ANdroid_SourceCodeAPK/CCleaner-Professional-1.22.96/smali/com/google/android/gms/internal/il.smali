.class public final Lcom/google/android/gms/internal/il;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/lf;

.field public static final b:Lcom/google/android/gms/internal/lf;

.field public static final c:Lcom/google/android/gms/internal/lf;

.field public static final d:Lcom/google/android/gms/internal/lf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ".info"

    invoke-static {v0}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/il;->a:Lcom/google/android/gms/internal/lf;

    const-string/jumbo v0, "serverTimeOffset"

    invoke-static {v0}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/il;->b:Lcom/google/android/gms/internal/lf;

    const-string/jumbo v0, "authenticated"

    invoke-static {v0}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/il;->c:Lcom/google/android/gms/internal/lf;

    const-string/jumbo v0, "connected"

    invoke-static {v0}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/il;->d:Lcom/google/android/gms/internal/lf;

    return-void
.end method
