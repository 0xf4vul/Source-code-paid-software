.class public final Lcom/google/android/gms/internal/hd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Lcom/google/firebase/crash/FirebaseCrash;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crash/FirebaseCrash;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/hd;->a:Lcom/google/firebase/crash/FirebaseCrash;

    iput-object p1, p0, Lcom/google/android/gms/internal/hd;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 0
    const-string/jumbo v0, "UncaughtException"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->a:Lcom/google/firebase/crash/FirebaseCrash;

    .line 2000
    iget-boolean v1, v0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    .line 1000
    if-nez v1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/gz;

    const-string/jumbo v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gz;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/gz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 0
    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "UncaughtException"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 3000
    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/google/firebase/crash/FirebaseCrash;->c:Lcom/google/android/gms/internal/hb;
    :try_end_2
    .catch Lcom/google/android/gms/internal/gz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1000
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_3
    iget-object v0, v0, Lcom/google/firebase/crash/FirebaseCrash;->d:Lcom/google/android/gms/internal/gy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4000
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "fatal"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5000
    iget-object v2, v0, Lcom/google/android/gms/internal/gy;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/gy;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    const-string/jumbo v2, "crash"

    const-string/jumbo v3, "_ae"

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1000
    :cond_3
    const-wide/16 v2, 0xc8

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    :try_start_5
    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/hb;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/hb;->b(Lcom/google/android/gms/a/a;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string/jumbo v2, "report remoting failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Lcom/google/android/gms/internal/gz; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 0
    :catch_2
    move-exception v0

    const-string/jumbo v1, "UncaughtException"

    const-string/jumbo v2, "Ouch!  My own exception handler threw an exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1000
    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1
.end method
