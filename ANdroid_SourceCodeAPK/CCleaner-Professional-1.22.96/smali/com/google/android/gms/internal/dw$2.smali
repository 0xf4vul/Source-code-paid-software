.class final Lcom/google/android/gms/internal/dw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dw$a;

.field final synthetic b:Lcom/google/android/gms/internal/dw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dw;Lcom/google/android/gms/internal/dw$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dw$2;->b:Lcom/google/android/gms/internal/dw;

    iput-object p2, p0, Lcom/google/android/gms/internal/dw$2;->a:Lcom/google/android/gms/internal/dw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$2;->b:Lcom/google/android/gms/internal/dw;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw$2;->a:Lcom/google/android/gms/internal/dw$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/internal/dw;Lcom/google/android/gms/internal/dw$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$2;->b:Lcom/google/android/gms/internal/dw;

    iput-object v2, v0, Lcom/google/android/gms/internal/dw;->a:Lcom/google/android/gms/internal/dw$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$2;->b:Lcom/google/android/gms/internal/dw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->k()Lcom/google/android/gms/internal/dx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/measurement/AppMeasurement$f;)V

    return-void
.end method
