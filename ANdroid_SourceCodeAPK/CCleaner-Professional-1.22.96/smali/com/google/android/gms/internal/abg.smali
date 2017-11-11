.class public final Lcom/google/android/gms/internal/abg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/abg$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/abg$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/abg;->a:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/abf;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/abg$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/abg$1;-><init>(Lcom/google/android/gms/internal/abg;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/adi;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v0

    return-object v0
.end method
