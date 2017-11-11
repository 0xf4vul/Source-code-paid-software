.class public final Lcom/google/android/gms/ads/internal/overlay/f$b;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/adm;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/adm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/adm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/f$b;->a:Lcom/google/android/gms/internal/adm;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/f$b;->a:Lcom/google/android/gms/internal/adm;

    .line 1000
    iput-object p3, v0, Lcom/google/android/gms/internal/adm;->d:Ljava/lang/String;

    .line 0
    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/f$b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/f$b;->a:Lcom/google/android/gms/internal/adm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adm;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
