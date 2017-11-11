.class final Lcom/google/android/gms/internal/it$1;
.super Lcom/google/android/gms/internal/mo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/it;->a(Lcom/google/android/gms/internal/in;)Lcom/google/android/gms/internal/iz;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/it$1;->a:Lcom/google/android/gms/internal/lc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/it$1;->a:Lcom/google/android/gms/internal/lc;

    invoke-static {p1}, Lcom/google/android/gms/internal/mo;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
