.class final Lcom/google/android/gms/internal/zz$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/google/android/gms/internal/zz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zz;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zz$4;->b:Lcom/google/android/gms/internal/zz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zz$4;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zz$4;->b:Lcom/google/android/gms/internal/zz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zz$4;->a:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zz;->a(Lcom/google/android/gms/internal/zz;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method
