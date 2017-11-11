.class public final Lcom/google/android/gms/internal/adq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/adq$c;,
        Lcom/google/android/gms/internal/adq$b;,
        Lcom/google/android/gms/internal/adq$a;
    }
.end annotation


# static fields
.field static a:Lcom/google/android/gms/internal/aab;

.field public static final b:Lcom/google/android/gms/internal/adq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/adq$a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/adq;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/adq$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/adq$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/adq;->b:Lcom/google/android/gms/internal/adq$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/adq;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/aab;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/internal/aab;
    .locals 2

    .prologue
    .line 0
    sget-object v1, Lcom/google/android/gms/internal/adq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/adq;->a:Lcom/google/android/gms/internal/aab;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2000
    invoke-static {v0}, Lcom/google/android/gms/internal/ay;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/aab;

    move-result-object v0

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/adq;->a:Lcom/google/android/gms/internal/aab;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/adq;->a:Lcom/google/android/gms/internal/aab;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/aeh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/aeh",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/adq$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/adq$c;-><init>(B)V

    new-instance v1, Lcom/google/android/gms/internal/adq$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/adq$2;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/adq$c;)V

    new-instance v2, Lcom/google/android/gms/internal/adq$3;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/adq$3;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/aaw$b;Lcom/google/android/gms/internal/aaw$a;Ljava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/internal/adq;->a:Lcom/google/android/gms/internal/aab;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/aab;->a(Lcom/google/android/gms/internal/za;)Lcom/google/android/gms/internal/za;

    .line 0
    return-object v0
.end method
