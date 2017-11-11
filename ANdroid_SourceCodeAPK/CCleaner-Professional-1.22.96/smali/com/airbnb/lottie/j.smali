.class final Lcom/airbnb/lottie/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/j$a;
    }
.end annotation


# instance fields
.field final a:Lcom/airbnb/lottie/e;

.field final b:Lcom/airbnb/lottie/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/k",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/airbnb/lottie/g;

.field final d:Lcom/airbnb/lottie/b;

.field final e:Lcom/airbnb/lottie/d;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/k;Lcom/airbnb/lottie/g;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e;",
            "Lcom/airbnb/lottie/k",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/g;",
            "Lcom/airbnb/lottie/b;",
            "Lcom/airbnb/lottie/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/j;->a:Lcom/airbnb/lottie/e;

    .line 20
    iput-object p2, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/k;

    .line 21
    iput-object p3, p0, Lcom/airbnb/lottie/j;->c:Lcom/airbnb/lottie/g;

    .line 22
    iput-object p4, p0, Lcom/airbnb/lottie/j;->d:Lcom/airbnb/lottie/b;

    .line 23
    iput-object p5, p0, Lcom/airbnb/lottie/j;->e:Lcom/airbnb/lottie/d;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/k;Lcom/airbnb/lottie/g;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/d;B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/j;-><init>(Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/k;Lcom/airbnb/lottie/g;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/d;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/airbnb/lottie/cf;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/airbnb/lottie/cf;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/cf;-><init>(Lcom/airbnb/lottie/j;)V

    return-object v0
.end method
