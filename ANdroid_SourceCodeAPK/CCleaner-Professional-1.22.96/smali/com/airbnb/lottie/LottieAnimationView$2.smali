.class final Lcom/airbnb/lottie/LottieAnimationView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/be;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->c:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->a:I

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/av;)V
    .locals 3

    .prologue
    .line 329
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->a:I

    sget v1, Lcom/airbnb/lottie/LottieAnimationView$a;->c:I

    if-ne v0, v1, :cond_1

    .line 330
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/av;)V

    .line 336
    return-void

    .line 331
    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->a:I

    sget v1, Lcom/airbnb/lottie/LottieAnimationView$a;->b:I

    if-ne v0, v1, :cond_0

    .line 332
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
