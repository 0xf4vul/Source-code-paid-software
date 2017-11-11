.class final Lcom/google/android/gms/internal/ve$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ve;->a(Lcom/google/android/gms/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/vc;

.field final synthetic b:Lcom/google/android/gms/internal/ve;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ve;Lcom/google/android/gms/internal/vc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ve$1;->b:Lcom/google/android/gms/internal/ve;

    iput-object p2, p0, Lcom/google/android/gms/internal/ve$1;->a:Lcom/google/android/gms/internal/vc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ve$1;->a:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->d()Lcom/google/android/gms/internal/aer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ve$1;->b:Lcom/google/android/gms/internal/ve;

    iget-object v1, v1, Lcom/google/android/gms/internal/ve;->b:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ve$1;->b:Lcom/google/android/gms/internal/ve;

    iget-object v1, v1, Lcom/google/android/gms/internal/ve;->b:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ve$1;->a:Lcom/google/android/gms/internal/vc;

    instance-of v0, v0, Lcom/google/android/gms/internal/uz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ve$1;->b:Lcom/google/android/gms/internal/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ve$1;->a:Lcom/google/android/gms/internal/vc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ve;->a(Lcom/google/android/gms/internal/ve;Lcom/google/android/gms/internal/vc;)V

    :cond_1
    return-void
.end method
