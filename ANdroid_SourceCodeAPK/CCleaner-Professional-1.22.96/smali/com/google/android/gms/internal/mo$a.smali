.class final Lcom/google/android/gms/internal/mo$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/mo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mo$a;->a:Lcom/google/android/gms/internal/mo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mo;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mo$a;-><init>(Lcom/google/android/gms/internal/mo;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mo$a;->a:Lcom/google/android/gms/internal/mo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mo;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mo$a;->a:Lcom/google/android/gms/internal/mo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mo;->b()Lcom/google/android/gms/internal/jg;

    move-result-object v1

    const-string/jumbo v2, "FirebaseDatabaseWorker"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/jg;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/jg;->a(Ljava/lang/Thread;)V

    new-instance v2, Lcom/google/android/gms/internal/mo$a$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/mo$a$1;-><init>(Lcom/google/android/gms/internal/mo$a;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/jg;->a(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method
