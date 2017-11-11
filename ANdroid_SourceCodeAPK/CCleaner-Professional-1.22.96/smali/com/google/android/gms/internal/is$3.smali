.class final Lcom/google/android/gms/internal/is$3;
.super Lcom/google/android/gms/internal/mo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/is;->a(Lcom/google/android/gms/internal/in;)Lcom/google/android/gms/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/is$3;->a:Lcom/google/android/gms/internal/lc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mo;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/is;->b:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/is$3;->a:Lcom/google/android/gms/internal/lc;

    invoke-static {p1}, Lcom/google/android/gms/internal/mo;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final b()Lcom/google/android/gms/internal/jg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/is;->c:Lcom/google/android/gms/internal/jg;

    return-object v0
.end method
