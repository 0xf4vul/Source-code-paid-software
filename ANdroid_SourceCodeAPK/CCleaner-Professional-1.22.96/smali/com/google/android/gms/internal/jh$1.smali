.class final Lcom/google/android/gms/internal/jh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jh;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/jg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ThreadFactory;

.field final synthetic b:Lcom/google/android/gms/internal/jg;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/jg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jh$1;->a:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lcom/google/android/gms/internal/jh$1;->b:Lcom/google/android/gms/internal/jg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jh$1;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jh$1;->b:Lcom/google/android/gms/internal/jg;

    const-string/jumbo v2, "FirebaseDatabaseEventTarget"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/jg;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/jh$1;->b:Lcom/google/android/gms/internal/jg;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/jg;->a(Ljava/lang/Thread;)V

    return-object v0
.end method
