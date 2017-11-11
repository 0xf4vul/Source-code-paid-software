.class final Lcom/airbnb/lottie/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/k",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/b;

.field private final b:Lcom/airbnb/lottie/b;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/b;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/airbnb/lottie/i;->a:Lcom/airbnb/lottie/b;

    .line 13
    iput-object p2, p0, Lcom/airbnb/lottie/i;->b:Lcom/airbnb/lottie/b;

    .line 14
    return-void
.end method


# virtual methods
.method public final synthetic b()Lcom/airbnb/lottie/n;
    .locals 3

    .prologue
    .line 5
    .line 1017
    new-instance v0, Lcom/airbnb/lottie/cc;

    iget-object v1, p0, Lcom/airbnb/lottie/i;->a:Lcom/airbnb/lottie/b;

    .line 1018
    invoke-virtual {v1}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/at;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/i;->b:Lcom/airbnb/lottie/b;

    invoke-virtual {v2}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/at;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/cc;-><init>(Lcom/airbnb/lottie/at;Lcom/airbnb/lottie/at;)V

    .line 5
    return-object v0
.end method
