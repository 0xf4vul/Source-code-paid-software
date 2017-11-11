.class final Lcom/airbnb/lottie/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/ad;

.field final synthetic b:Lcom/airbnb/lottie/o;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/o;Lcom/airbnb/lottie/ad;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/airbnb/lottie/o$1;->b:Lcom/airbnb/lottie/o;

    iput-object p2, p0, Lcom/airbnb/lottie/o$1;->a:Lcom/airbnb/lottie/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/airbnb/lottie/o$1;->b:Lcom/airbnb/lottie/o;

    iget-object v0, p0, Lcom/airbnb/lottie/o$1;->a:Lcom/airbnb/lottie/ad;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1020
    :goto_0
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/o;->a(Z)V

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
