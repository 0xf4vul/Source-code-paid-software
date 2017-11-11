.class final Lcom/google/android/gms/internal/xh$d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xh$d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aek$c",
        "<",
        "Lcom/google/android/gms/internal/xe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xh$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$d$3;->a:Lcom/google/android/gms/internal/xh$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/xe;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    new-instance v0, Lcom/google/android/gms/internal/xh$d$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/xh$d$3$1;-><init>(Lcom/google/android/gms/internal/xh$d$3;Lcom/google/android/gms/internal/xe;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->a(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method
