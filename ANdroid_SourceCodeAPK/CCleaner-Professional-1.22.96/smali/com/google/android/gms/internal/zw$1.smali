.class final Lcom/google/android/gms/internal/zw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zw;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/acw;

.field final synthetic b:Lcom/google/android/gms/internal/zw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zw;Lcom/google/android/gms/internal/acw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zw$1;->b:Lcom/google/android/gms/internal/zw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zw$1;->a:Lcom/google/android/gms/internal/acw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zw$1;->b:Lcom/google/android/gms/internal/zw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zw;->a:Lcom/google/android/gms/internal/zr$a;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zw$1;->a:Lcom/google/android/gms/internal/acw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zr$a;->b(Lcom/google/android/gms/internal/acw;)V

    return-void
.end method
