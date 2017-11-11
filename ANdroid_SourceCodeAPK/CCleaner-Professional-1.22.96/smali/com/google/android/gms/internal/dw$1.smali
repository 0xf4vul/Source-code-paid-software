.class final Lcom/google/android/gms/internal/dw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dw;->a(Landroid/app/Activity;Lcom/google/android/gms/internal/dw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/dw$a;

.field final synthetic c:Lcom/google/android/gms/internal/dw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dw;Lcom/google/android/gms/internal/dw$a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/dw$1;->c:Lcom/google/android/gms/internal/dw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw$1;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/dw$1;->b:Lcom/google/android/gms/internal/dw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$1;->c:Lcom/google/android/gms/internal/dw;

    iget-object v0, v0, Lcom/google/android/gms/internal/dw;->a:Lcom/google/android/gms/internal/dw$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$1;->c:Lcom/google/android/gms/internal/dw;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw$1;->c:Lcom/google/android/gms/internal/dw;

    iget-object v1, v1, Lcom/google/android/gms/internal/dw;->a:Lcom/google/android/gms/internal/dw$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/internal/dw;Lcom/google/android/gms/internal/dw$a;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw$1;->c:Lcom/google/android/gms/internal/dw;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw$1;->b:Lcom/google/android/gms/internal/dw$a;

    iput-object v1, v0, Lcom/google/android/gms/internal/dw;->a:Lcom/google/android/gms/internal/dw$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$1;->c:Lcom/google/android/gms/internal/dw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->k()Lcom/google/android/gms/internal/dx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dw$1;->b:Lcom/google/android/gms/internal/dw$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/measurement/AppMeasurement$f;)V

    return-void
.end method
